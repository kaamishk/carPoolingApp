import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_place_picker.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/place.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetStartLocationWidget extends StatefulWidget {
  const SetStartLocationWidget({
    Key? key,
    this.locationTitle,
  }) : super(key: key);

  final String? locationTitle;

  @override
  _SetStartLocationWidgetState createState() => _SetStartLocationWidgetState();
}

class _SetStartLocationWidgetState extends State<SetStartLocationWidget> {
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  var placePickerValue = FFPlace();
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
                      final _googleMapMarker = placePickerValue.latLng;
                      return FlutterFlowGoogleMap(
                        controller: googleMapsController,
                        onCameraIdle: (latLng) => googleMapsCenter = latLng,
                        initialLocation: googleMapsCenter ??=
                            placePickerValue.latLng,
                        markers: [
                          if (_googleMapMarker != null)
                            FlutterFlowMarker(
                              _googleMapMarker.serialize(),
                              _googleMapMarker,
                            ),
                        ],
                        markerColor: GoogleMarkerColor.violet,
                        mapType: MapType.normal,
                        style: GoogleMapStyle.standard,
                        initialZoom: 14,
                        allowInteraction: true,
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
                alignment: AlignmentDirectional(1, 1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: FlutterFlowPlacePicker(
                    iOSGoogleMapsApiKey:
                        'AIzaSyDs-1kogt_FBZH9TLfG0kIEHKAIMLIBbVk',
                    androidGoogleMapsApiKey:
                        'AIzaSyAzwhjdwzNbAvzYF2ZwcNuuAn_FVsFHsuw',
                    webGoogleMapsApiKey:
                        'AIzaSyAtfnzeG9eSSnajRyeElXcfX-gLEwWRpaM',
                    onSelect: (place) async {
                      setState(() => placePickerValue = place);
                      (await googleMapsController.future).animateCamera(
                          CameraUpdate.newLatLng(place.latLng.toGoogleMaps()));
                    },
                    defaultText: '',
                    icon: Icon(
                      Icons.edit_location_sharp,
                      color: Colors.white,
                      size: 35,
                    ),
                    buttonOptions: FFButtonOptions(
                      width: 60,
                      height: 60,
                      color: Color(0xFF9086EB),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      elevation: 4,
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(360),
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
