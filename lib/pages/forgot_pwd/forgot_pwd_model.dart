import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_pwd_widget.dart' show ForgotPwdWidget;
import 'package:flutter/material.dart';

class ForgotPwdModel extends FlutterFlowModel<ForgotPwdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Pwd widget.
  FocusNode? pwdFocusNode;
  TextEditingController? pwdController;
  late bool pwdVisibility;
  String? Function(BuildContext, String?)? pwdControllerValidator;
  String? _pwdControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Minimum 8 characters are required!';
    }

    if (!RegExp('^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#\$%^&+=!]).{8,}\$')
        .hasMatch(val)) {
      return 'Must contain one uppercase, lowercase, digit & special character.';
    }
    return null;
  }

  // State field(s) for rePwd widget.
  FocusNode? rePwdFocusNode;
  TextEditingController? rePwdController;
  late bool rePwdVisibility;
  String? Function(BuildContext, String?)? rePwdControllerValidator;
  String? _rePwdControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Minimum 8 characters are required!';
    }

    if (!RegExp('^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#\$%^&+=!]).{8,}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pwdVisibility = false;
    pwdControllerValidator = _pwdControllerValidator;
    rePwdVisibility = false;
    rePwdControllerValidator = _rePwdControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pwdFocusNode?.dispose();
    pwdController?.dispose();

    rePwdFocusNode?.dispose();
    rePwdController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
