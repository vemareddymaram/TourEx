import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'place_cart_page_model.dart';
export 'place_cart_page_model.dart';

class PlaceCartPageWidget extends StatefulWidget {
  const PlaceCartPageWidget({Key? key}) : super(key: key);

  @override
  _PlaceCartPageWidgetState createState() => _PlaceCartPageWidgetState();
}

class _PlaceCartPageWidgetState extends State<PlaceCartPageWidget> {
  late PlaceCartPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaceCartPageModel());
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
            borderRadius: 30.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 380.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 5.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 300.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 300.0,
                              child: PageView(
                                controller: _model.pageViewController ??=
                                    PageController(initialPage: 0),
                                onPageChanged: (_) => setState(() {}),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  FutureBuilder<ApiCallResponse>(
                                    future: TouristAttractionAPIGroup
                                        .getLanguagesAPICall
                                        .call(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitChasingDots(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      final imageGetLanguagesAPIResponse =
                                          snapshot.data!;
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://th.bing.com/th?id=OIP.TXlEs3JCXlV4WxCwadThrwHaE7&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=2&pid=3.1&rm=2',
                                          width: 300.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Image.asset(
                                            'assets/images/error_image.jpg',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://th.bing.com/th/id/OIP.BW-rAD4F6z2I7rmZ0aaecwHaEK?w=285&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              Image.asset(
                                        'assets/images/error_image.jpg',
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://images-production.gardenvisit.com/uploads/images/114813/taj_mahal_tomb_garden_original.jpg',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(1.00, 0.00),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.8,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 40.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                child: Icon(
                                                  Icons.location_on_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 35.0,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.00, -1.00),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.65,
                                                      height: 25.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        2.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              '',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        1.0,
                                                                  ),
                                                              minFontSize: 14.0,
                                                            )),
                                                          ),
                                                          Text(
                                                            '-',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      1.0,
                                                                ),
                                                          ),
                                                          Text(
                                                            '',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      1.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.00, -1.00),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.65,
                                                      height: 25.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        2.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              '',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        1.0,
                                                                  ),
                                                              minFontSize: 14.0,
                                                            )),
                                                          ),
                                                          Text(
                                                            ',',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      1.0,
                                                                ),
                                                          ),
                                                          Text(
                                                            '',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      1.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 3.0,
                                            shape: const CircleBorder(),
                                            child: Container(
                                              width: 50.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                shape: BoxShape.circle,
                                              ),
                                              child: ToggleIcon(
                                                onPressed: () async {
                                                  setState(() => FFAppState()
                                                          .favorite =
                                                      !FFAppState().favorite);
                                                },
                                                value: FFAppState().favorite,
                                                onIcon: Icon(
                                                  Icons.favorite,
                                                  color: Color(0xFFFF3535),
                                                  size: 25.0,
                                                ),
                                                offIcon: Icon(
                                                  Icons.favorite_border,
                                                  color: Color(0xFFFF3535),
                                                  size: 25.0,
                                                ),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 350.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 2.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.8,
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
                                          borderRadius:
                                              BorderRadius.circular(20.0),
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
                                                  bottomLeft:
                                                      Radius.circular(20.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight:
                                                      Radius.circular(0.0),
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFFDBE2E7),
                                                        fontSize: 18.0,
                                                        letterSpacing: 2.0,
                                                      ),
                                            ),
                                            Flexible(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    1.00, 0.00),
                                                child: Container(
                                                  width: 150.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF323B43),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                  ),
                                                  child: Container(
                                                    width: 160.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF323B43),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                20.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        topRight:
                                                            Radius.circular(
                                                                20.0),
                                                      ),
                                                      shape: BoxShape.rectangle,
                                                    ),
                                                    child:
                                                        FlutterFlowCountController(
                                                      decrementIconBuilder:
                                                          (enabled) => FaIcon(
                                                        FontAwesomeIcons.minus,
                                                        color: enabled
                                                            ? Color(0xFFDBE2E7)
                                                            : Color(0xFFDBE2E7),
                                                        size: 20.0,
                                                      ),
                                                      incrementIconBuilder:
                                                          (enabled) => FaIcon(
                                                        FontAwesomeIcons.plus,
                                                        color: enabled
                                                            ? Color(0xFFDBE2E7)
                                                            : Color(0xFFDBE2E7),
                                                        size: 20.0,
                                                      ),
                                                      countBuilder: (count) =>
                                                          Text(
                                                        count.toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFFDBE2E7),
                                                                ),
                                                      ),
                                                      count: _model
                                                          .countControllerValue ??= 0,
                                                      updateCount: (count) =>
                                                          setState(() => _model
                                                                  .countControllerValue =
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
                                        0.0, 30.0, 0.0, 0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 2.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.8,
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
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          border: Border.all(
                                            color: Color(0xFF323B43),
                                            width: 0.5,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().startDate,
                                                  '01/01/2000',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFFDBE2E7),
                                                          fontSize: 18.0,
                                                          letterSpacing: 1.0,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              ' - ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFFDBE2E7),
                                                        fontSize: 20.0,
                                                        letterSpacing: 1.0,
                                                      ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                FFAppState().endDate,
                                                '01/01/2000',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFFDBE2E7),
                                                        fontSize: 18.0,
                                                        letterSpacing: 1.0,
                                                      ),
                                            ),
                                            Flexible(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    1.00, 0.00),
                                                child: Container(
                                                  width: 50.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF323B43),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                  ),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 20.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        Color(0xFF323B43),
                                                    icon: Icon(
                                                      Icons.calendar_month,
                                                      color: Color(0xFFDBE2E7),
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
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
                          color: FlutterFlowTheme.of(context).primaryBackground,
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
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Add To Tour',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
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
                                          borderRadius:
                                              BorderRadius.circular(50.0),
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
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Proceed',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
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
                                          borderRadius:
                                              BorderRadius.circular(50.0),
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
              ].addToEnd(SizedBox(height: 30.0)),
            ),
          ),
        ),
      ),
    );
  }
}
