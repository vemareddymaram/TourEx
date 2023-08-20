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
import 'user_profile_model.dart';
export 'user_profile_model.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({Key? key}) : super(key: key);

  @override
  _UserProfileWidgetState createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  late UserProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserProfileModel());

    _model.uNameController ??= TextEditingController();
    _model.emailAddController ??= TextEditingController();
    _model.phNumController ??= TextEditingController();
    _model.genderController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('profilePage');
            },
          ),
          title: Text(
            'User Profile',
            style: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Outfit',
                  letterSpacing: 2.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: 430.0,
            height: 800.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                    child: Container(
                      width: 430.0,
                      height: 185.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 110.0,
                                height: 110.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 5.0),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      allowPhoto: true,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      setState(
                                          () => _model.isDataUploading = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      try {
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();
                                      } finally {
                                        _model.isDataUploading = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                          selectedMedia.length) {
                                        setState(() {
                                          _model.uploadedLocalFile =
                                              selectedUploadedFiles.first;
                                        });
                                      } else {
                                        setState(() {});
                                        return;
                                      }
                                    }
                                  },
                                  child: Container(
                                    width: 120.0,
                                    height: 120.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/logo-TEX-removebg-preview.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  'User Name',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 2.0,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                'Example@gmail.com',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 2.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.uNameController,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.uNameController',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'User name',
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 14.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDBE2E7),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 20.0, 24.0),
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF1D2429),
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                      maxLines: null,
                      validator:
                          _model.uNameControllerValidator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.emailAddController,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.emailAddController',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Email address....',
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 14.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintText: 'example@gmail.com',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 14.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDBE2E7),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 20.0, 24.0),
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF1D2429),
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                      maxLines: null,
                      keyboardType: TextInputType.emailAddress,
                      validator: _model.emailAddControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.phNumController,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.phNumController',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Phone number',
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 14.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 14.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDBE2E7),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 20.0, 24.0),
                        prefixIcon: Icon(
                          Icons.phone,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF1D2429),
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                      maxLines: null,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      validator:
                          _model.phNumControllerValidator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.genderController,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.genderController',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Gender',
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 14.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF57636C),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDBE2E7),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 20.0, 24.0),
                        prefixIcon: Icon(
                          Icons.man,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF1D2429),
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                      maxLines: null,
                      validator:
                          _model.genderControllerValidator.asValidator(context),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Save Changes',
                        options: FFButtonOptions(
                          width: 215.0,
                          height: 42.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF8A4A52),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    letterSpacing: 2.0,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Color(0xFF8A4A48),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                          hoverColor: Color(0xFF8A4A38),
                          hoverBorderSide: BorderSide(
                            color: Color(0xFF8A4A40),
                            width: 1.0,
                          ),
                          hoverTextColor: Colors.white,
                        ),
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
