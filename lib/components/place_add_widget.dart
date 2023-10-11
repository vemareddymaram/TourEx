import '/components/calendar_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'place_add_model.dart';
export 'place_add_model.dart';

class PlaceAddWidget extends StatefulWidget {
  const PlaceAddWidget({Key? key}) : super(key: key);

  @override
  _PlaceAddWidgetState createState() => _PlaceAddWidgetState();
}

class _PlaceAddWidgetState extends State<PlaceAddWidget> {
  late PlaceAddModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaceAddModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          color: Color(0xFF353D44),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          border: Border.all(
            color: Color(0xFF323B43),
            width: 0.1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF353D44),
                  ),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF323B43),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: Color(0xFF323B43),
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        FFAppState().startDate,
                                        '01/01/2000',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFFDBE2E7),
                                            fontSize: 18.0,
                                            letterSpacing: 1.0,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    ' - ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFFDBE2E7),
                                          fontSize: 20.0,
                                          letterSpacing: 1.0,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      FFAppState().endDate,
                                      '01/01/2000',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFFDBE2E7),
                                          fontSize: 18.0,
                                          letterSpacing: 1.0,
                                        ),
                                  ),
                                  Flexible(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(1.00, 0.00),
                                      child: Container(
                                        width: 50.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF323B43),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(20.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(20.0),
                                          ),
                                        ),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 20.0,
                                          buttonSize: 40.0,
                                          fillColor: Color(0xFF323B43),
                                          icon: Icon(
                                            Icons.calendar_month,
                                            color: Color(0xFFDBE2E7),
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: CalendarWidget(),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF323B43),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: Color(0xFF323B43),
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF323B43),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.people_outlined,
                                      color: Color(0xFFDBE2E7),
                                      size: 30.0,
                                    ),
                                  ),
                                  Text(
                                    'Guests',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFFDBE2E7),
                                          fontSize: 18.0,
                                          letterSpacing: 2.0,
                                        ),
                                  ),
                                  Flexible(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(1.00, 0.00),
                                      child: Container(
                                        width: 150.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF323B43),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(20.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(20.0),
                                          ),
                                        ),
                                        child: Container(
                                          width: 160.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF323B43),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: FlutterFlowCountController(
                                            decrementIconBuilder: (enabled) =>
                                                FaIcon(
                                              FontAwesomeIcons.minus,
                                              color: enabled
                                                  ? Color(0xFFDBE2E7)
                                                  : Color(0xFFDBE2E7),
                                              size: 20.0,
                                            ),
                                            incrementIconBuilder: (enabled) =>
                                                FaIcon(
                                              FontAwesomeIcons.plus,
                                              color: enabled
                                                  ? Color(0xFFDBE2E7)
                                                  : Color(0xFFDBE2E7),
                                              size: 20.0,
                                            ),
                                            countBuilder: (count) => Text(
                                              count.toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFFDBE2E7),
                                                      ),
                                            ),
                                            count: _model
                                                .countControllerValue1 ??= 0,
                                            updateCount: (count) => setState(
                                                () => _model
                                                        .countControllerValue1 =
                                                    count),
                                            stepSize: 1,
                                            minimum: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF323B43),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: Color(0xFF323B43),
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF323B43),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.people_outlined,
                                      color: Color(0xFFDBE2E7),
                                      size: 30.0,
                                    ),
                                  ),
                                  Text(
                                    'Guests',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFFDBE2E7),
                                          fontSize: 18.0,
                                          letterSpacing: 2.0,
                                        ),
                                  ),
                                  Flexible(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(1.00, 0.00),
                                      child: Container(
                                        width: 150.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF323B43),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(20.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(20.0),
                                          ),
                                        ),
                                        child: Container(
                                          width: 160.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF323B43),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: FlutterFlowCountController(
                                            decrementIconBuilder: (enabled) =>
                                                FaIcon(
                                              FontAwesomeIcons.minus,
                                              color: enabled
                                                  ? Color(0xFFDBE2E7)
                                                  : Color(0xFFDBE2E7),
                                              size: 20.0,
                                            ),
                                            incrementIconBuilder: (enabled) =>
                                                FaIcon(
                                              FontAwesomeIcons.plus,
                                              color: enabled
                                                  ? Color(0xFFDBE2E7)
                                                  : Color(0xFFDBE2E7),
                                              size: 20.0,
                                            ),
                                            countBuilder: (count) => Text(
                                              count.toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFFDBE2E7),
                                                      ),
                                            ),
                                            count: _model
                                                .countControllerValue2 ??= 0,
                                            updateCount: (count) => setState(
                                                () => _model
                                                        .countControllerValue2 =
                                                    count),
                                            stepSize: 1,
                                            minimum: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
            Container(
              width: MediaQuery.sizeOf(context).width * 10.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0xFF353D44),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(-1.00, 1.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            25.0, 0.0, 0.0, 20.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Container(
                            width: 180.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF323B43),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Add To Tour',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFFDBE2E7),
                                      fontSize: 20.0,
                                      letterSpacing: 2.0,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(1.00, 1.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 25.0, 20.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Container(
                            width: 180.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF323B43),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Proceed',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFFDBE2E7),
                                      fontSize: 20.0,
                                      letterSpacing: 2.0,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
