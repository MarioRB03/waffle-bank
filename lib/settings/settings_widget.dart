import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/register/register_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_model.dart';
export 'settings_model.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF15161E),
            size: 30.0,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 32.0, 0.0, 8.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'wjkfisaf' /* Settings */,
              ),
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Urbanist',
                    color: Color(0xFF15161E),
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'g1xuduc2' /* Getting Started */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF15161E),
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Color(0xFF606A85),
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'd5o8ldij' /* About Us */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF15161E),
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Color(0xFF606A85),
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            '7pr9wcht' /* Help */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF15161E),
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Color(0xFF606A85),
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            '50fg31yq' /* Privacy Policy */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF15161E),
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Color(0xFF606A85),
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'bs6auxrb' /* Terms & Conditions */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF15161E),
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Color(0xFF606A85),
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 8.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'fible96o' /* Follow us on */,
              ),
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color(0xFF606A85),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowIconButton(
                  borderColor: Color(0xFFE5E7EB),
                  borderRadius: 12.0,
                  borderWidth: 1.0,
                  buttonSize: 48.0,
                  fillColor: Colors.white,
                  icon: FaIcon(
                    FontAwesomeIcons.youtube,
                    color: Color(0xFF606A85),
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Color(0xFFE5E7EB),
                  borderRadius: 12.0,
                  borderWidth: 1.0,
                  buttonSize: 48.0,
                  fillColor: Colors.white,
                  icon: FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Color(0xFF606A85),
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Color(0xFFE5E7EB),
                  borderRadius: 12.0,
                  borderWidth: 1.0,
                  buttonSize: 48.0,
                  fillColor: Colors.white,
                  icon: FaIcon(
                    FontAwesomeIcons.facebookF,
                    color: Color(0xFF606A85),
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Color(0xFFE5E7EB),
                  borderRadius: 12.0,
                  borderWidth: 1.0,
                  buttonSize: 48.0,
                  fillColor: Colors.white,
                  icon: FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    color: Color(0xFF606A85),
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
          ),
          Spacer(),
          Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '3lnk5ri8' /* Version */,
                ),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Color(0xFF15161E),
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '47ppkz0n' /* v0.0.1 */,
                ),
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Color(0xFF606A85),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await authManager.signOut();
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 300),
                      reverseDuration: Duration(milliseconds: 300),
                      child: RegisterWidget(),
                    ),
                    (r) => false,
                  );
                },
                text: FFLocalizations.of(context).getText(
                  '3hwea10s' /* Log Out */,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF101213),
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Color(0xFF101213),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
        ].addToEnd(SizedBox(height: 64.0)),
      ),
    );
  }
}
