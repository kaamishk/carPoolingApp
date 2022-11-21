import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/lat_lng.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneralMapViewWidget extends StatefulWidget {
  const GeneralMapViewWidget({
    Key? key,
    this.location,
    this.address,
  }) : super(key: key);

  final LatLng? location;
  final String? address;

  @override
  _GeneralMapViewWidgetState createState() => _GeneralMapViewWidgetState();
}

class _GeneralMapViewWidgetState extends State<GeneralMapViewWidget> {
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
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
                    child: Builder(builder: (context) {
                      final _googleMapMarker = widget.location;
                      return FlutterFlowGoogleMap(
                        controller: googleMapsController,
                        onCameraIdle: (latLng) => googleMapsCenter = latLng,
                        initialLocation: googleMapsCenter ??= widget.location!,
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
                    }),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(-1, 1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 20),
                  child: InkWell(
                    onTap: () async {
                      context.pop();
                    },
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
              ),
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: SelectionArea(
                      child: Text(
                    valueOrDefault<String>(
                      widget.address,
                      ':)',
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF746AD3),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
