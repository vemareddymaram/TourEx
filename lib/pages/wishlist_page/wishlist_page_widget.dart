import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wishlist_page_model.dart';
export 'wishlist_page_model.dart';

class WishlistPageWidget extends StatefulWidget {
  const WishlistPageWidget({Key? key}) : super(key: key);

  @override
  _WishlistPageWidgetState createState() => _WishlistPageWidgetState();
}

class _WishlistPageWidgetState extends State<WishlistPageWidget> {
  late WishlistPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WishlistPageModel());
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
        backgroundColor: Color(0xFFDBE2E7),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.goNamed('profilePage');
            },
          ),
          title: Text(
            'Wishlist',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 2.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: Color(0xFFDBE2E7),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      0,
                      0,
                      30.0,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 30.0, 10.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: CachedNetworkImage(
                                    fadeInDuration: Duration(milliseconds: 500),
                                    fadeOutDuration:
                                        Duration(milliseconds: 500),
                                    imageUrl:
                                        'https://images.unsplash.com/photo-1564507592333-c60657eea523?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx0YWolMjBtYWhhbHxlbnwwfHx8fDE2OTI5Nzk2MTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: 115.0,
                                    height: 115.0,
                                    fit: BoxFit.fill,
                                    errorWidget: (context, error, stackTrace) =>
                                        Image.asset(
                                      'assets/images/error_image.jpg',
                                      width: 115.0,
                                      height: 115.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.65,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(25.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(25.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.5,
                                            height: 75.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -1.00, 0.00),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 0.0, 0.0),
                                                child: AutoSizeText(
                                                  '',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 16.0,
                                                        letterSpacing: 2.0,
                                                      ),
                                                  minFontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.5,
                                            height: 75.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.00, 1.00),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0,
                                                                10.0, 0.0, 0.0),
                                                    child: RatingBar.builder(
                                                      onRatingUpdate: (newValue) =>
                                                          setState(() => _model
                                                                  .ratingBarValue =
                                                              newValue),
                                                      itemBuilder:
                                                          (context, index) =>
                                                              Icon(
                                                        Icons.star_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                      ),
                                                      direction:
                                                          Axis.horizontal,
                                                      initialRating: _model
                                                              .ratingBarValue ??=
                                                          5.0,
                                                      unratedColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      itemCount: 5,
                                                      itemSize: 30.0,
                                                      glowColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.00, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 5.0,
                                                                0.0, 0.0),
                                                    child: AutoSizeText(
                                                      '',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            letterSpacing: 2.0,
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
                                    Container(
                                      width: 55.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: ToggleIcon(
                                          onPressed: () async {
                                            setState(() =>
                                                FFAppState().favorite =
                                                    !FFAppState().favorite);
                                          },
                                          value: FFAppState().favorite,
                                          onIcon: Icon(
                                            Icons.favorite,
                                            color: FlutterFlowTheme.of(context)
                                                .customColor3,
                                            size: 40.0,
                                          ),
                                          offIcon: Icon(
                                            Icons.favorite_border,
                                            color: FlutterFlowTheme.of(context)
                                                .customColor3,
                                            size: 40.0,
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
                      ),
                    ],
                  ),
                ].addToEnd(SizedBox(height: 30.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
