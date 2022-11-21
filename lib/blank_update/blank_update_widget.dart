import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class BlankUpdateWidget extends StatefulWidget {
  const BlankUpdateWidget({Key? key}) : super(key: key);

  @override
  _BlankUpdateWidgetState createState() => _BlankUpdateWidgetState();
}

class _BlankUpdateWidgetState extends State<BlankUpdateWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      final usersUpdateData = {
        'riders': FieldValue.arrayUnion([currentUserReference]),
      };
      await currentUserDocument!.driverID!.update(usersUpdateData);

      context.pushNamed('rideConfirmedPage');
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
            child: Align(
              alignment: AlignmentDirectional(-0.05, 0),
              child: Text(
                'Confirming Ride...',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 25,
                    ),
              ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
            ),
          ),
        ),
      ),
    );
  }
}
