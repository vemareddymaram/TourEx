import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.textController ??= TextEditingController();
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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 0.0, 2.0, 0.0),
                                    child: Container(
                                      width: 430.0,
                                      height: 124.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 334.0,
                                            height: 109.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/TEX.png',
                                                ).image,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25.0, 0.0, 10.0, 55.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context
                                                    .pushNamed('profilePage');
                                              },
                                              child: Container(
                                                width: 56.0,
                                                height: 56.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/logo-TEX-removebg-preview.png',
                                                    ).image,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: Container(
                                            width: 430.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 8.0, 12.0, 8.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context
                                                      .pushNamed('searchPage');
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .gray200,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(0.0, 2.0),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textController,
                                                              onChanged: (_) =>
                                                                  EasyDebounce
                                                                      .debounce(
                                                                '_model.textController',
                                                                Duration(
                                                                    milliseconds:
                                                                        2000),
                                                                () => setState(
                                                                    () {}),
                                                              ),
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    'Explore here....',
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: Color(
                                                                          0xFF292B2D),
                                                                      letterSpacing:
                                                                          2.0,
                                                                    ),
                                                                enabledBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                focusedBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                errorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                focusedErrorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                suffixIcon:
                                                                    Icon(
                                                                  Icons
                                                                      .search_sharp,
                                                                  size: 25.0,
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: Color(
                                                                        0xFF95A1AC),
                                                                  ),
                                                              validator: _model
                                                                  .textControllerValidator
                                                                  .asValidator(
                                                                      context),
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
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 10.0),
                                      child: GradientText(
                                        'Most visited places!',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray600,
                                              fontSize: 24.0,
                                              letterSpacing: 2.0,
                                            ),
                                        colors: [
                                          FlutterFlowTheme.of(context).primary,
                                          Color(0xFF8A4A40)
                                        ],
                                        gradientDirection:
                                            GradientDirection.ltr,
                                        gradientType: GradientType.linear,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Container(
                          width: 370.0,
                          height: 181.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                'https://images.unsplash.com/photo-1564507592333-c60657eea523?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHx0YWp8ZW58MHx8fHwxNjkwNjExNzY4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Container(
                              width: 370.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0x80FFFFFF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 271.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25.0, 2.0, 0.0, 0.0),
                                            child: Text(
                                              'Taj Mahal',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Bevan',
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              'Agra',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Basic',
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30.0, 0.0, 0.0, 0.0),
                                      child: ToggleIcon(
                                        onPressed: () async {
                                          setState(() => FFAppState().favorite =
                                              !FFAppState().favorite);
                                        },
                                        value: !FFAppState().favorite,
                                        onIcon: Icon(
                                          Icons.favorite,
                                          color: FlutterFlowTheme.of(context)
                                              .customColor3,
                                          size: 30.0,
                                        ),
                                        offIcon: Icon(
                                          Icons.favorite_border,
                                          color: FlutterFlowTheme.of(context)
                                              .customColor3,
                                          size: 30.0,
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
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Container(
                    width: 370.0,
                    height: 181.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          'https://images.unsplash.com/photo-1586520748101-a5df6afa76f1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxsb3R1cyUyMHRlbXBsZXxlbnwwfHx8fDE2OTA2MTE4Mzd8MA&ixlib=rb-4.0.3&q=80&w=1080',
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: 370.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0x80FFFFFF),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 271.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 2.0, 0.0, 0.0),
                                      child: Text(
                                        'Lotus Temple',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bevan',
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 0.0, 5.0),
                                      child: Text(
                                        'Delhi',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Basic',
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 0.0, 0.0),
                                child: ToggleIcon(
                                  onPressed: () async {
                                    setState(() => FFAppState().favorite =
                                        !FFAppState().favorite);
                                  },
                                  value: FFAppState().favorite,
                                  onIcon: Icon(
                                    Icons.favorite,
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    size: 30.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.favorite_border,
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    size: 30.0,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Container(
                    width: 370.0,
                    height: 181.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          'https://images.unsplash.com/photo-1602216056096-3b40cc0c9944?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxrZXJhbGF8ZW58MHx8fHwxNjkwNTYyMjg0fDA&ixlib=rb-4.0.3&q=80&w=1080',
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: 370.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0x80FFFFFF),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 271.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 2.0, 0.0, 0.0),
                                      child: Text(
                                        'Backwaters',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bevan',
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 0.0, 5.0),
                                      child: Text(
                                        'Kerala',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Basic',
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 0.0, 0.0),
                                child: ToggleIcon(
                                  onPressed: () async {
                                    setState(() => FFAppState().favorite =
                                        !FFAppState().favorite);
                                  },
                                  value: FFAppState().favorite,
                                  onIcon: Icon(
                                    Icons.favorite,
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    size: 30.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.favorite_border,
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    size: 30.0,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Container(
                    width: 370.0,
                    height: 181.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          'https://images.unsplash.com/photo-1587474260584-136574528ed5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxpbmRpYSUyMGdhdGV8ZW58MHx8fHwxNjkwNjEyMjM4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: 370.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0x80FFFFFF),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 271.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 2.0, 0.0, 0.0),
                                      child: Text(
                                        'India Gate',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bevan',
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 0.0, 5.0),
                                      child: Text(
                                        'New Delhi',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Basic',
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 0.0, 0.0),
                                child: ToggleIcon(
                                  onPressed: () async {
                                    setState(() => FFAppState().favorite =
                                        !FFAppState().favorite);
                                  },
                                  value: FFAppState().favorite,
                                  onIcon: Icon(
                                    Icons.favorite,
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    size: 30.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.favorite_border,
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    size: 30.0,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                  child: Container(
                    width: 370.0,
                    height: 181.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          'data:image/jpeg;base64,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',
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: 370.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0x80FFFFFF),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 271.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 2.0, 0.0, 0.0),
                                      child: Text(
                                        'Araku Valley',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Bevan',
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 0.0, 5.0),
                                      child: Text(
                                        'Andhra Pradesh',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Basic',
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 0.0, 0.0),
                                child: ToggleIcon(
                                  onPressed: () async {
                                    setState(() => FFAppState().favorite =
                                        !FFAppState().favorite);
                                  },
                                  value: FFAppState().favorite,
                                  onIcon: Icon(
                                    Icons.favorite,
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    size: 30.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.favorite_border,
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    size: 30.0,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
