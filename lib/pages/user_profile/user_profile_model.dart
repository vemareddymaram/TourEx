import '/flutter_flow/flutter_flow_util.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for uName widget.
  FocusNode? uNameFocusNode;
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

  // State field(s) for userId widget.
  FocusNode? userIdFocusNode;
  TextEditingController? userIdController;
  String? Function(BuildContext, String?)? userIdControllerValidator;
  String? _userIdControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for emailAdd widget.
  FocusNode? emailAddFocusNode;
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
  FocusNode? phNumFocusNode1;
  TextEditingController? phNumController1;
  String? Function(BuildContext, String?)? phNumController1Validator;
  String? _phNumController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for phNum widget.
  FocusNode? phNumFocusNode2;
  TextEditingController? phNumController2;
  String? Function(BuildContext, String?)? phNumController2Validator;
  String? _phNumController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    uNameControllerValidator = _uNameControllerValidator;
    userIdControllerValidator = _userIdControllerValidator;
    emailAddControllerValidator = _emailAddControllerValidator;
    phNumController1Validator = _phNumController1Validator;
    phNumController2Validator = _phNumController2Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    uNameFocusNode?.dispose();
    uNameController?.dispose();

    userIdFocusNode?.dispose();
    userIdController?.dispose();

    emailAddFocusNode?.dispose();
    emailAddController?.dispose();

    phNumFocusNode1?.dispose();
    phNumController1?.dispose();

    phNumFocusNode2?.dispose();
    phNumController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
