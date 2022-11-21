import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetCarDetailsWidget extends StatefulWidget {
  const SetCarDetailsWidget({Key? key}) : super(key: key);

  @override
  _SetCarDetailsWidgetState createState() => _SetCarDetailsWidgetState();
}

class _SetCarDetailsWidgetState extends State<SetCarDetailsWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  TextEditingController? textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Container(
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
                        'Find your passengers!',
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
                        'Enter details to continue',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                      child: TextFormField(
                        controller: textController1,
                        onChanged: (_) => EasyDebounce.debounce(
                          'textController1',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Enter Your Vehicle Type ',
                          hintText: 'Enter Your Vehicle Type ',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          suffixIcon: textController1!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    textController1?.clear();
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                )
                              : null,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: TextFormField(
                        controller: textController2,
                        onChanged: (_) => EasyDebounce.debounce(
                          'textController2',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Enter Your Vehicle Model and Name',
                          hintText: 'Enter Your Vehicle Model and Name',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          suffixIcon: textController2!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    textController2?.clear();
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                )
                              : null,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: TextFormField(
                        controller: textController3,
                        onChanged: (_) => EasyDebounce.debounce(
                          'textController3',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Enter Your Vehicle Reg Number',
                          hintText: 'Enter Your Vehicle Reg Number',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          suffixIcon: textController3!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    textController3?.clear();
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                )
                              : null,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: TextFormField(
                        controller: textController4,
                        onChanged: (_) => EasyDebounce.debounce(
                          'textController4',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Enter Number of Seats Available',
                          hintText: 'Enter Number of Seats Available',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(36),
                          ),
                          suffixIcon: textController4!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    textController4?.clear();
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                )
                              : null,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            StreamBuilder<UsersRecord>(
                              stream: UsersRecord.getDocument(
                                  currentUserReference!),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                final listViewUsersRecord = snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final carPics = listViewUsersRecord
                                        .vehiclePics!
                                        .toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: carPics.length,
                                      itemBuilder: (context, carPicsIndex) {
                                        final carPicsItem =
                                            carPics[carPicsIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 5, 5, 5),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.network(
                                              carPicsItem,
                                              width: 300,
                                              height: 100,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    imageQuality: 100,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    setState(() => isMediaUploading = true);
                                    var downloadUrls = <String>[];
                                    try {
                                      showUploadMessage(
                                        context,
                                        'Uploading file...',
                                        showLoading: true,
                                      );
                                      downloadUrls = (await Future.wait(
                                        selectedMedia.map(
                                          (m) async => await uploadData(
                                              m.storagePath, m.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                      isMediaUploading = false;
                                    }
                                    if (downloadUrls.length ==
                                        selectedMedia.length) {
                                      setState(() =>
                                          uploadedFileUrl = downloadUrls.first);
                                      showUploadMessage(context, 'Success!');
                                    } else {
                                      setState(() {});
                                      showUploadMessage(
                                          context, 'Failed to upload media');
                                      return;
                                    }
                                  }

                                  final usersUpdateData = {
                                    'vehiclePics': FieldValue.arrayUnion(
                                        [uploadedFileUrl]),
                                  };
                                  await currentUserReference!
                                      .update(usersUpdateData);
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 4,
                                  shape: const CircleBorder(),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          FlutterFlowTheme.of(context)
                                              .secondaryColor
                                        ],
                                        stops: [0, 1],
                                        begin: AlignmentDirectional(0, -1),
                                        end: AlignmentDirectional(0, 1),
                                      ),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          final usersUpdateData = createUsersRecordData(
                            vehicleName: textController2!.text,
                            vehicleRegNumber: textController3!.text,
                            seats: int.parse(textController4!.text),
                          );
                          await currentUserReference!.update(usersUpdateData);

                          context.pushNamed('setDriverFields');
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
                                'Confirm',
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
