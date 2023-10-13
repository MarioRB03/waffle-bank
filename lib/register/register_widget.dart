import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sign_in/sign_in_widget.dart';
import '/sign_up/sign_up_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'register_model.dart';
export 'register_model.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget>
    with TickerProviderStateMixin {
  late RegisterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 300.ms,
          duration: 900.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 300.ms,
          duration: 900.ms,
          begin: Offset(71.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 300.ms,
          duration: 900.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 300.ms,
          duration: 900.ms,
          begin: Offset(71.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 550.ms),
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 550.ms,
          duration: 900.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 550.ms,
          duration: 900.ms,
          begin: Offset(-79.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 650.ms),
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 650.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 650.ms,
          duration: 600.ms,
          begin: Offset(-74.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterModel());
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional(0.0, 0.0),
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  PageView(
                    controller: _model.pageViewController ??=
                        PageController(initialPage: 0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          children: [
                            Image.asset(
                              'assets/images/image_001.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/WhatsApp_Image_2023-10-12_at_22.23.46_waifu2x_art_scan_noise3_scale-transformed.png',
                                          width: 400.0,
                                          height: 300.0,
                                          fit: BoxFit.cover,
                                          alignment: Alignment(0.00, 0.00),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'imageOnPageLoadAnimation']!),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '4v2n96oi' /* Open your account in 
less tha... */
                                          ,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Urbanist',
                                              fontSize: 32.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation']!),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40.0, 0.0, 40.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                      reverseDuration: Duration(
                                                          milliseconds: 300),
                                                      child: SignUpWidget(),
                                                    ),
                                                  );
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'om7ok2oh' /* Sign up with e-mail */,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 130.0,
                                                  height: 60.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFF101213),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color: Colors.white,
                                                        fontSize: 19.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                  elevation: 2.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'buttonOnPageLoadAnimation']!),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5r72qvgw' /* Already have account? */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .fade,
                                                        duration: Duration(
                                                            milliseconds: 300),
                                                        reverseDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    300),
                                                        child: SignInWidget(),
                                                      ),
                                                    );
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rnwbgczf' /* Log in */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ).animateOnPageLoad(animationsMap[
                                              'rowOnPageLoadAnimation']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 1.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                      child: smooth_page_indicator.SmoothPageIndicator(
                        controller: _model.pageViewController ??=
                            PageController(initialPage: 0),
                        count: 1,
                        axisDirection: Axis.horizontal,
                        onDotClicked: (i) async {
                          await _model.pageViewController!.animateToPage(
                            i,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                        effect: smooth_page_indicator.ExpandingDotsEffect(
                          expansionFactor: 4.0,
                          spacing: 8.0,
                          radius: 16.0,
                          dotWidth: 8.0,
                          dotHeight: 8.0,
                          dotColor: Color(0xFF9E9E9E),
                          activeDotColor: FlutterFlowTheme.of(context).primary,
                          paintStyle: PaintingStyle.fill,
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
    );
  }
}
