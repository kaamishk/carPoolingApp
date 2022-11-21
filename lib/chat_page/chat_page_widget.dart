import '../backend/backend.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPageWidget extends StatefulWidget {
  const ChatPageWidget({
    Key? key,
    this.chatUser,
    this.chatRef,
  }) : super(key: key);

  final UsersRecord? chatUser;
  final DocumentReference? chatRef;

  @override
  _ChatPageWidgetState createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget> {
  FFChatInfo? _chatInfo;
  bool isGroupChat() {
    if (widget.chatUser == null) {
      return true;
    }
    if (widget.chatRef == null) {
      return false;
    }
    return _chatInfo?.isGroupChat ?? false;
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    FFChatManager.instance
        .getChatInfo(
      otherUserRecord: widget.chatUser,
      chatReference: widget.chatRef,
    )
        .listen((info) {
      if (mounted) {
        setState(() => _chatInfo = info);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            StreamBuilder<FFChatInfo>(
              stream: FFChatManager.instance.getChatInfo(
                otherUserRecord: widget.chatUser,
                chatReference: widget.chatRef,
              ),
              builder: (context, snapshot) => snapshot.hasData
                  ? FFChatPage(
                      chatInfo: snapshot.data!,
                      allowImages: true,
                      backgroundColor: Colors.white,
                      timeDisplaySetting: TimeDisplaySetting.visibleOnTap,
                      currentUserBoxDecoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      otherUsersBoxDecoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      currentUserTextStyle: GoogleFonts.getFont(
                        'DM Sans',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontStyle: FontStyle.normal,
                      ),
                      otherUsersTextStyle: GoogleFonts.getFont(
                        'DM Sans',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      inputHintTextStyle: GoogleFonts.getFont(
                        'DM Sans',
                        color: Color(0xFF95A1AC),
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                      inputTextStyle: GoogleFonts.getFont(
                        'DM Sans',
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                      emptyChatWidget: Image.asset(
                        'assets/images/messagesEmpty@2x.png',
                        width: MediaQuery.of(context).size.width * 0.76,
                        fit: BoxFit.contain,
                      ),
                    )
                  : Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ),
                    ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.95, -0.95),
              child: InkWell(
                onTap: () async {
                  context.pop();
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
