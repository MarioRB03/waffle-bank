import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/notices/notices_widget.dart';
import 'dart:async';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for Password2 widget.
  TextEditingController? password2Controller;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2ControllerValidator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    password2Visibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    nameController?.dispose();
    emailController?.dispose();
    passwordController?.dispose();
    password2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
