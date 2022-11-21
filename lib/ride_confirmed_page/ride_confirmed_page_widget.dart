import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class RideConfirmedPageWidget extends StatefulWidget {
  const RideConfirmedPageWidget({Key? key}) : super(key: key);

  @override
  _RideConfirmedPageWidgetState createState() =>
      _RideConfirmedPageWidgetState();
}

class _RideConfirmedPageWidgetState extends State<RideConfirmedPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (currentUserDocument!.leaveTime! > getCurrentTimestamp) {
        final usersUpdateData = createUsersRecordData(
          booked: false,
        );
        await currentUserReference!.update(usersUpdateData);

        context.pushNamed('selectPage');
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
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
            ),
            child: AuthUserStreamWidget(
              child: StreamBuilder<UsersRecord>(
                stream: UsersRecord.getDocument(currentUserDocument!.driverID!),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
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
                  final columnUsersRecord = snapshot.data!;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'Your Booking Is All Set!',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'Details',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SelectionArea(
                                        child: Text(
                                      'Driver:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    )),
                                    SelectionArea(
                                        child: Text(
                                      'Roll Number:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    )),
                                    SelectionArea(
                                        child: Text(
                                      'Car Model:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    )),
                                    SelectionArea(
                                        child: Text(
                                      'Registration Number:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    )),
                                    SelectionArea(
                                        child: Text(
                                      'Departure Time:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    )),
                                    SelectionArea(
                                        child: Text(
                                      'Cost:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    )),
                                    SelectionArea(
                                        child: Text(
                                      'Address:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    )),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    columnUsersRecord.displayName!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                  )),
                                  SelectionArea(
                                      child: Text(
                                    columnUsersRecord.rollNumber!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                  )),
                                  SelectionArea(
                                      child: Text(
                                    columnUsersRecord.vehicleName!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                  )),
                                  SelectionArea(
                                      child: Text(
                                    columnUsersRecord.vehicleRegNumber!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                  )),
                                  SelectionArea(
                                      child: Text(
                                    dateTimeFormat('d/M h:mm a',
                                        columnUsersRecord.leaveTime!),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                  )),
                                  SelectionArea(
                                      child: Text(
                                    functions
                                        .div(
                                            columnUsersRecord.price!,
                                            columnUsersRecord.riders!
                                                .toList()
                                                .length
                                                .toDouble())
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                  )),
                                  InkWell(
                                    onTap: () async {
                                      context.pushNamed(
                                        'generalMapView',
                                        queryParams: {
                                          'location': serializeParam(
                                            columnUsersRecord
                                                .destinationAddress.location,
                                            ParamType.LatLng,
                                          ),
                                          'address': serializeParam(
                                            columnUsersRecord.destinationAddress
                                                .nameOfLocation,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Text(
                                      columnUsersRecord
                                          .destinationAddress.nameOfLocation!,
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'chatPage',
                              queryParams: {
                                'chatUser': serializeParam(
                                  columnUsersRecord,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'chatUser': columnUsersRecord,
                              },
                            );
                          },
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
                                  'Chat with Driver',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
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
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
