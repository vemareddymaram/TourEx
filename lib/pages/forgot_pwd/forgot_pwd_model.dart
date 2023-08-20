import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ForgotPwdModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Pwd widget.
  TextEditingController? pwdController;
  late bool pwdVisibility;
  String? Function(BuildContext, String?)? pwdControllerValidator;
  String? _pwdControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Minimum 8 characters';
    }

    return null;
  }

  // State field(s) for rePwd widget.
  TextEditingController? rePwdController;
  late bool rePwdVisibility;
  String? Function(BuildContext, String?)? rePwdControllerValidator;
  String? _rePwdControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Minimum 8 characters';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pwdVisibility = false;
    pwdControllerValidator = _pwdControllerValidator;
    rePwdVisibility = false;
    rePwdControllerValidator = _rePwdControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    pwdController?.dispose();
    rePwdController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
