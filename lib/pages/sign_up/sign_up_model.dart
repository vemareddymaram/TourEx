import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for userName widget.
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  String? _userNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for phoneNo widget.
  TextEditingController? phoneNoController;
  String? Function(BuildContext, String?)? phoneNoControllerValidator;
  String? _phoneNoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  String? _passwordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Minimum 8 characters';
    }

    return null;
  }

  // State field(s) for pwdCheck widget.
  TextEditingController? pwdCheckController;
  late bool pwdCheckVisibility;
  String? Function(BuildContext, String?)? pwdCheckControllerValidator;
  String? _pwdCheckControllerValidator(BuildContext context, String? val) {
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
    userNameControllerValidator = _userNameControllerValidator;
    phoneNoControllerValidator = _phoneNoControllerValidator;
    emailAddressControllerValidator = _emailAddressControllerValidator;
    passwordVisibility = false;
    passwordControllerValidator = _passwordControllerValidator;
    pwdCheckVisibility = false;
    pwdCheckControllerValidator = _pwdCheckControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    userNameController?.dispose();
    phoneNoController?.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
    pwdCheckController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
