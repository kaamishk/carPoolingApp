import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MapPathCopyWidget extends StatefulWidget {
  const MapPathCopyWidget({
    Key? key,
    this.booking,
  }) : super(key: key);

  final BookingsAllRecord? booking;

  @override
  _MapPathCopyWidgetState createState() => _MapPathCopyWidgetState();
}

class _MapPathCopyWidgetState extends State<MapPathCopyWidget> {
  LatLng? currentUserLocationValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState() {
    super.initState();
    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Center(
        child: SizedBox(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(
            color: FlutterFlowTheme.of(context).primaryColor,
          ),
        ),
      );
    }
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: StreamBuilder<UsersRecord>(
                      stream: UsersRecord.getDocument(widget.booking!.driver!),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        final googleMapUsersRecord = snapshot.data!;
                        return Builder(builder: (context) {
                          final _googleMapMarker =
                              googleMapUsersRecord.destination;
                          return FlutterFlowGoogleMap(
                            controller: googleMapsController,
                            onCameraIdle: (latLng) => googleMapsCenter = latLng,
                            initialLocation: googleMapsCenter ??=
                                currentUserLocationValue!,
                            markers: [
                              if (_googleMapMarker != null)
                                FlutterFlowMarker(
                                  _googleMapMarker.serialize(),
                                  _googleMapMarker,
                                ),
                            ],
                            markerColor: GoogleMarkerColor.blue,
                            mapType: MapType.normal,
                            style: GoogleMapStyle.standard,
                            initialZoom: 14,
                            allowInteraction: false,
                            allowZoom: true,
                            showZoomControls: true,
                            showLocation: true,
                            showCompass: false,
                            showMapToolbar: false,
                            showTraffic: false,
                            centerMapOnMarkerTap: true,
                          );
                        });
                      },
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: SelectionArea(
                      child: Text(
                    'Set your Starting Location',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF55B9ED),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  )),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).primaryColor,
                            FlutterFlowTheme.of(context).secondaryColor
                          ],
                          stops: [0, 1],
                          begin: AlignmentDirectional(0, -1),
                          end: AlignmentDirectional(0, 1),
                        ),
                        borderRadius: BorderRadius.circular(360),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: SelectionArea(
                            child: Text(
                          'Confirm',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1, 1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 20),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF9086EB),
                        borderRadius: BorderRadius.circular(360),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
