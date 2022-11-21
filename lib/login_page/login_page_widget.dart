import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  TextEditingController? emailTextController;
  TextEditingController? passwordTextController;

  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    emailTextController?.dispose();
    passwordTextController?.dispose();
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
                    'Find your Carpool Partner!',
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
                    'Login',
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
                    controller: emailTextController,
                    onChanged: (_) => EasyDebounce.debounce(
                      'emailTextController',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Enter Your Email Here',
                      hintText: 'Enter Your Email Here',
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
                      suffixIcon: emailTextController!.text.isNotEmpty
                          ? InkWell(
                              onTap: () async {
                                emailTextController?.clear();
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
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: TextFormField(
                    controller: passwordTextController,
                    autofocus: true,
                    obscureText: !passwordVisibility,
                    decoration: InputDecoration(
                      labelText: 'Enter Your Password Here',
                      hintText: 'Enter Your Password Here',
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
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility = !passwordVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SelectionArea(
                          child: Text(
                        'Forgot your password? ',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                      )),
                      InkWell(
                        onTap: () async {
                          if (emailTextController!.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Email required!',
                                ),
                              ),
                            );
                            return;
                          }
                          await resetPassword(
                            email: emailTextController!.text,
                            context: context,
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Reset Password Email Sent',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                ),
                              ),
                              duration: Duration(milliseconds: 3000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                            ),
                          );
                        },
                        child: Text(
                          'Click here',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      GoRouter.of(context).prepareAuthEvent();

                      final user = await signInWithEmail(
                        context,
                        emailTextController!.text,
                        passwordTextController!.text,
                      );
                      if (user == null) {
                        return;
                      }

                      if (valueOrDefault<bool>(
                          currentUserDocument?.booked, false)) {
                        if (valueOrDefault<bool>(
                            currentUserDocument?.driver, false)) {
                          context.pushNamedAuth('passengersList', mounted);
                        } else {
                          context.pushNamedAuth('rideConfirmedPage', mounted);
                        }
                      } else {
                        context.pushNamedAuth('selectPage', mounted);
                      }
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
                            'Login',
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectionArea(
                          child: Text(
                        'Don\'t have an account? ',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                      )),
                      InkWell(
                        onTap: () async {
                          context.pushNamed('register');
                        },
                        child: Text(
                          'Sign Up!',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
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
      ),
    );
  }
}
