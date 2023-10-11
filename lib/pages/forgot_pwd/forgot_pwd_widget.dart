import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'forgot_pwd_model.dart';
export 'forgot_pwd_model.dart';

class ForgotPwdWidget extends StatefulWidget {
  const ForgotPwdWidget({Key? key}) : super(key: key);

  @override
  _ForgotPwdWidgetState createState() => _ForgotPwdWidgetState();
}

class _ForgotPwdWidgetState extends State<ForgotPwdWidget> {
  late ForgotPwdModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPwdModel());

    _model.pwdController ??= TextEditingController();
    _model.rePwdController ??= TextEditingController();
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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
              context.goNamed('LoginPage');
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.always,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 400.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/forgotpwd.png',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 8.0),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            8.0, 60.0, 8.0, 10.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 69.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: GradientText(
                              'Reset your password',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 30.0,
                                  ),
                              colors: [
                                FlutterFlowTheme.of(context).primary,
                                FlutterFlowTheme.of(context).black600
                              ],
                              gradientDirection: GradientDirection.ltr,
                              gradientType: GradientType.linear,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 454.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 15.0, 8.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              child: TextFormField(
                                controller: _model.pwdController,
                                obscureText: !_model.pwdVisibility,
                                decoration: InputDecoration(
                                  labelText: 'New password',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14.0,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  hintText: 'Enter your password',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
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
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          24.0, 24.0, 20.0, 24.0),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => _model.pwdVisibility =
                                          !_model.pwdVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.pwdVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF757575),
                                      size: 25.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF1D2429),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                textAlign: TextAlign.start,
                                validator: _model.pwdControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 45.0, 8.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              child: TextFormField(
                                controller: _model.rePwdController,
                                obscureText: !_model.rePwdVisibility,
                                decoration: InputDecoration(
                                  labelText: 'New password',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14.0,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  hintText: 'Reenter your password',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14.0,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFDBE2E7),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          24.0, 24.0, 20.0, 24.0),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => _model.rePwdVisibility =
                                          !_model.rePwdVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.rePwdVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF757575),
                                      size: 25.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF1D2429),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                validator: _model.rePwdControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 50.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (_model.pwdController.text.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Email required!',
                                        ),
                                      ),
                                    );
                                    return;
                                  }
                                  await authManager.resetPassword(
                                    email: _model.pwdController.text,
                                    context: context,
                                  );
                                  if (_model.rePwdController.text.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Email required!',
                                        ),
                                      ),
                                    );
                                    return;
                                  }
                                  await authManager.resetPassword(
                                    email: _model.rePwdController.text,
                                    context: context,
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Your password has been updated successfully! ',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .white,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .maximumBlueGreen,
                                    ),
                                  );
                                },
                                text: 'Update',
                                options: FFButtonOptions(
                                  width: 242.0,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF408177),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                  hoverColor: Color(0xFF408165),
                                  hoverBorderSide: BorderSide(
                                    color: Color(0xFF408163),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ].addToEnd(SizedBox(height: 30.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
