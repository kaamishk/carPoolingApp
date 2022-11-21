import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectDriverScreenWidget extends StatefulWidget {
  const SelectDriverScreenWidget({Key? key}) : super(key: key);

  @override
  _SelectDriverScreenWidgetState createState() =>
      _SelectDriverScreenWidgetState();
}

class _SelectDriverScreenWidgetState extends State<SelectDriverScreenWidget> {
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: SelectionArea(
                      child: Text(
                    'Find Your Driver!',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
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
                    'Click Your Pick!',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                  )),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
                  child: StreamBuilder<List<UsersRecord>>(
                    stream: queryUsersRecord(
                      queryBuilder: (usersRecord) =>
                          usersRecord.where('driver', isEqualTo: true),
                    ),
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
                      List<UsersRecord> listViewUsersRecordList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewUsersRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewUsersRecord =
                              listViewUsersRecordList[listViewIndex];
                          return InkWell(
                            onTap: () async {
                              final usersUpdateData = createUsersRecordData(
                                driverID: listViewUsersRecord.reference,
                                booked: true,
                              );
                              await currentUserReference!
                                  .update(usersUpdateData);

                              final bookingsAllCreateData = {
                                ...createBookingsAllRecordData(
                                  dateTime: getCurrentTimestamp,
                                  totalPrice: listViewUsersRecord.price,
                                  driver: listViewUsersRecord.reference,
                                ),
                                'riders': [currentUserReference],
                                'addresses': [
                                  getAddressFirestoreData(
                                    updateAddressStruct(
                                      currentUserDocument!.destinationAddress,
                                      clearUnsetFields: false,
                                    ),
                                    true,
                                  )
                                ],
                              };
                              await BookingsAllRecord.collection
                                  .doc()
                                  .set(bookingsAllCreateData);

                              context.pushNamed('rideConfirmedPage');
                            },
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0x54F5F5F5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (listViewUsersRecord.seats !=
                                      listViewUsersRecord.riders!
                                          .toList()
                                          .length)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 10, 0, 10),
                                          child: Container(
                                            width: 60,
                                            height: 60,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              listViewUsersRecord.photoUrl!,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SelectionArea(
                                                        child: Text(
                                                      listViewUsersRecord
                                                          .displayName!,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.white,
                                                          ),
                                                    )),
                                                    SelectionArea(
                                                        child: Text(
                                                      listViewUsersRecord
                                                          .rollNumber!,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.white,
                                                          ),
                                                    )),
                                                  ],
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    SelectionArea(
                                                        child: Text(
                                                      'Seats: ${listViewUsersRecord.seats?.toString()}',
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.white,
                                                          ),
                                                    )),
                                                    SelectionArea(
                                                        child: Text(
                                                      'Rs. ${listViewUsersRecord.price?.toString()}',
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.white,
                                                          ),
                                                    )),
                                                  ],
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    context.pushNamed(
                                                      'generalMapView',
                                                      queryParams: {
                                                        'location':
                                                            serializeParam(
                                                          listViewUsersRecord
                                                              .destinationAddress
                                                              .location,
                                                          ParamType.LatLng,
                                                        ),
                                                        'address':
                                                            serializeParam(
                                                          listViewUsersRecord
                                                              .destinationAddress
                                                              .nameOfLocation,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.location_pin,
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: SelectionArea(
                                        child: Text(
                                      'Departure Time: ${dateTimeFormat('d/M H:mm', listViewUsersRecord.leaveTime)}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
