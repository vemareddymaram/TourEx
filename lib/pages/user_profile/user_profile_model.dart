import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for uName widget.
  TextEditingController? uNameController;
  String? Function(BuildContext, String?)? uNameControllerValidator;
  String? _uNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for emailAdd widget.
  TextEditingController? emailAddController;
  String? Function(BuildContext, String?)? emailAddControllerValidator;
  String? _emailAddControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for phNum widget.
  TextEditingController? phNumController;
  String? Function(BuildContext, String?)? phNumControllerValidator;
  String? _phNumControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Gender widget.
  TextEditingController? genderController;
  String? Function(BuildContext, String?)? genderControllerValidator;
  String? _genderControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    uNameControllerValidator = _uNameControllerValidator;
    emailAddControllerValidator = _emailAddControllerValidator;
    phNumControllerValidator = _phNumControllerValidator;
    genderControllerValidator = _genderControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    uNameController?.dispose();
    emailAddController?.dispose();
    phNumController?.dispose();
    genderController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
