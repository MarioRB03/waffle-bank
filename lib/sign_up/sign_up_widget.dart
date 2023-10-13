import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/notices/notices_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_up_model.dart';
export 'sign_up_model.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  late SignUpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpModel());

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        setState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.nameController ??= TextEditingController();
    _model.emailController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
    _model.password2Controller ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF101213),
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
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxWidth: 670.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 32.0, 0.0, 8.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'nfb7a90n' /* Create account */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: 'Urbanist',
                                      color: Color(0xFF101213),
                                      fontSize: 48.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 12.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'w4xm4jon' /* Let's get started by filling o... */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF57636C),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 0.0),
                              child: TextFormField(
                                controller: _model.nameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    '4jpfo16j' /* Name */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF57636C),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE0E3E7),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF4B39EF),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF5963),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF5963),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 16.0, 8.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF101213),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      lineHeight: 3.0,
                                    ),
                                validator: _model.nameControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 0.0),
                              child: TextFormField(
                                controller: _model.emailController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'oohlw5uc' /* Email Address */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF57636C),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE0E3E7),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF4B39EF),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF5963),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF5963),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 16.0, 8.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF101213),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      lineHeight: 3.0,
                                    ),
                                validator: _model.emailControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 0.0),
                              child: TextFormField(
                                controller: _model.passwordController,
                                textCapitalization: TextCapitalization.none,
                                obscureText: !_model.passwordVisibility,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    '1av3kmsj' /* Password */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF57636C),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE0E3E7),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF4B39EF),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF5963),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF5963),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 16.0, 8.0),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => _model.passwordVisibility =
                                          !_model.passwordVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF101213),
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF101213),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      lineHeight: 3.0,
                                    ),
                                validator: _model.passwordControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 0.0),
                              child: TextFormField(
                                controller: _model.password2Controller,
                                textCapitalization: TextCapitalization.none,
                                obscureText: !_model.password2Visibility,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'hxsogaic' /* Confirm Password */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF57636C),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE0E3E7),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF4B39EF),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF5963),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF5963),
                                      width: 2.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 16.0, 8.0),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => _model.password2Visibility =
                                          !_model.password2Visibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.password2Visibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF101213),
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF101213),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      lineHeight: 3.0,
                                    ),
                                validator: _model.password2ControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Theme(
                              data: ThemeData(
                                unselectedWidgetColor: Color(0xFF57636C),
                              ),
                              child: CheckboxListTile(
                                value: _model.checkboxListTileValue ??= true,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.checkboxListTileValue = newValue!);
                                },
                                title: Text(
                                  FFLocalizations.of(context).getText(
                                    'qq9dhf7m' /* I would like to receive inspri... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF57636C),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                tileColor: Colors.white,
                                activeColor: Color(0xFF101213),
                                checkColor: Colors.white,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (!(isWeb
                      ? MediaQuery.viewInsetsOf(context).bottom > 0
                      : _isKeyboardVisible))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 24.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.passwordController.text !=
                              _model.password2Controller.text) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Passwords don\'t match!',
                                ),
                              ),
                            );
                            return;
                          }

                          final user = await authManager.createAccountWithEmail(
                            context,
                            _model.emailController.text,
                            _model.passwordController.text,
                          );
                          if (user == null) {
                            return;
                          }

                          Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: NoticesWidget(),
                            ),
                            (r) => false,
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'deopt17x' /* Create Account */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF101213),
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 4.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                          hoverColor: Color(0xFF101213),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
