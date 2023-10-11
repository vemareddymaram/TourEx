import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for userId widget.
  TextEditingController? userIdController;
  String? Function(BuildContext, String?)? userIdControllerValidator;
  String? _userIdControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Minimum 6 characters required!';
    }

    return null;
  }

  // State field(s) for userName widget.
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  String? _userNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for gender widget.
  TextEditingController? genderController;
  String? Function(BuildContext, String?)? genderControllerValidator;
  String? _genderControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
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

    if (!RegExp('^\\+?[0-9\\s-]{6,}\$').hasMatch(val)) {
      return 'please include country code (ex: +91)';
    }
    return null;
  }

  // State field(s) for emailAddress-create widget.
  TextEditingController? emailAddressCreateController;
  String? Function(BuildContext, String?)?
      emailAddressCreateControllerValidator;
  String? _emailAddressCreateControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'minimum 5 characters required!';
    }

    if (!RegExp('^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for password-create widget.
  TextEditingController? passwordCreateController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)? passwordCreateControllerValidator;
  String? _passwordCreateControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Minimum 8 characters required!';
    }

    if (!RegExp('^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#\$%^&+=!]).{8,}\$')
        .hasMatch(val)) {
      return 'Must have one uppercase, lowercase, digit & special character.';
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
      return 'Minimum 8 characters required!';
    }

    if (!RegExp('^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#\$%^&+=!]).{8,}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    userIdControllerValidator = _userIdControllerValidator;
    userNameControllerValidator = _userNameControllerValidator;
    genderControllerValidator = _genderControllerValidator;
    phoneNoControllerValidator = _phoneNoControllerValidator;
    emailAddressCreateControllerValidator =
        _emailAddressCreateControllerValidator;
    passwordCreateVisibility = false;
    passwordCreateControllerValidator = _passwordCreateControllerValidator;
    pwdCheckVisibility = false;
    pwdCheckControllerValidator = _pwdCheckControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    userIdController?.dispose();
    userNameController?.dispose();
    genderController?.dispose();
    phoneNoController?.dispose();
    emailAddressCreateController?.dispose();
    passwordCreateController?.dispose();
    pwdCheckController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
