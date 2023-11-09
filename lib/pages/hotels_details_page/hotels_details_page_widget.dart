import '/backend/api_requests/api_calls.dart';
import '/components/review_bar_widget.dart';
import '/components/similar_htls_rtng_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'hotels_details_page_model.dart';
export 'hotels_details_page_model.dart';

class HotelsDetailsPageWidget extends StatefulWidget {
  const HotelsDetailsPageWidget({
    super.key,
    required this.hotelImage,
    required this.hotelRtngs,
    required this.hotelName,
  });

  final String? hotelImage;
  final String? hotelRtngs;
  final String? hotelName;

  @override
  _HotelsDetailsPageWidgetState createState() =>
      _HotelsDetailsPageWidgetState();
}

class _HotelsDetailsPageWidgetState extends State<HotelsDetailsPageWidget> {
  late HotelsDetailsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HotelsDetailsPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: TravelAdvisorAPIGroup.hotelsGetDetailsAPIDeprecatedCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitChasingDots(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final hotelsDetailsPageHotelsGetDetailsAPIDeprecatedResponse =
            snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
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
                  color: FlutterFlowTheme.of(context).primary,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.00, 0.00),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 455.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 300.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: CachedNetworkImageProvider(
                                            widget.hotelImage!,
                                          ),
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(30.0),
                                          bottomRight: Radius.circular(30.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 150.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.00, -1.00),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await launchMap(
                                                    address: getJsonField(
                                                      hotelsDetailsPageHotelsGetDetailsAPIDeprecatedResponse
                                                          .jsonBody,
                                                      r'''$.data[:].address''',
                                                    ).toString(),
                                                    title: '',
                                                  );
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 30.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 40.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.00, 0.00),
                                                            child: Icon(
                                                              Icons
                                                                  .location_on_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 20.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.87,
                                                        height: 30.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.00,
                                                                        0.00),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.87,
                                                                  height: 20.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.00,
                                                                            1.00),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        widget
                                                                            .hotelName!,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 1.0,
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
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.00, -1.00),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 120.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      50.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            getJsonField(
                                                              hotelsDetailsPageHotelsGetDetailsAPIDeprecatedResponse
                                                                  .jsonBody,
                                                              r'''$.data[:].address''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      1.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      50.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            widget.hotelRtngs!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  letterSpacing:
                                                                      1.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      50.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            getJsonField(
                                                              hotelsDetailsPageHotelsGetDetailsAPIDeprecatedResponse
                                                                  .jsonBody,
                                                              r'''$.data[:].phone''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  letterSpacing:
                                                                      1.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      50.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            getJsonField(
                                                              hotelsDetailsPageHotelsGetDetailsAPIDeprecatedResponse
                                                                  .jsonBody,
                                                              r'''$.data[:].email''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  letterSpacing:
                                                                      1.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      50.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            getJsonField(
                                                              hotelsDetailsPageHotelsGetDetailsAPIDeprecatedResponse
                                                                  .jsonBody,
                                                              r'''$.data[:].website''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  letterSpacing:
                                                                      1.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      50.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            getJsonField(
                                                              hotelsDetailsPageHotelsGetDetailsAPIDeprecatedResponse
                                                                  .jsonBody,
                                                              r'''$.data[:].ranking''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  letterSpacing:
                                                                      1.0,
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
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 160.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-1.00, -1.00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'Overview',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: const Color(0xFF1D4C67),
                                              fontSize: 16.0,
                                              letterSpacing: 2.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              -1.00, -1.00),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: AutoSizeText(
                                              getJsonField(
                                                hotelsDetailsPageHotelsGetDetailsAPIDeprecatedResponse
                                                    .jsonBody,
                                                r'''$.data[:].description''',
                                              ).toString(),
                                              textAlign: TextAlign.justify,
                                              maxLines: 50,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 1.0,
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
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 20.0, 5.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 260.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.00, -1.00),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 0.0, 10.0),
                                        child: Text(
                                          'Similar Hotels',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: const Color(0xFF1D4C67),
                                                fontSize: 16.0,
                                                letterSpacing: 2.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.00, 0.00),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 220.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: Builder(
                                          builder: (context) {
                                            final similarHotels =
                                                hotelsDetailsPageHotelsGetDetailsAPIDeprecatedResponse
                                                    .jsonBody
                                                    .toList()
                                                    .take(10)
                                                    .toList();
                                            return ListView.separated(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20.0),
                                              scrollDirection: Axis.horizontal,
                                              itemCount: similarHotels.length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(width: 20.0),
                                              itemBuilder: (context,
                                                  similarHotelsIndex) {
                                                final similarHotelsItem =
                                                    similarHotels[
                                                        similarHotelsIndex];
                                                return Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 10.0),
                                                    child: Container(
                                                      width: 180.0,
                                                      height: 205.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        image: DecorationImage(
                                                          fit: BoxFit.fill,
                                                          image:
                                                              CachedNetworkImageProvider(
                                                            getJsonField(
                                                              similarHotelsItem,
                                                              r'''$.data[:].photo.images.original.url''',
                                                            ),
                                                          ),
                                                        ),
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                                2.0, 2.0),
                                                            spreadRadius: 2.0,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25.0),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.00, 1.00),
                                                        child: Container(
                                                          width: 180.0,
                                                          height: 50.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0x80FFFFFF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      25.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          25.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        -1.00,
                                                                        -1.00),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    getJsonField(
                                                                      similarHotelsItem,
                                                                      r'''$.data[:].name''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    minFontSize:
                                                                        12.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.00,
                                                                        1.00),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          5.0,
                                                                          15.0,
                                                                          0.0),
                                                                  child:
                                                                      SimilarHtlsRtngBarWidget(
                                                                    key: Key(
                                                                        'Key8g5_${similarHotelsIndex}_of_${similarHotels.length}'),
                                                                    parameter1:
                                                                        getJsonField(
                                                                      similarHotelsItem,
                                                                      r'''$.data[:].rating''',
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
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 300.0,
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.reviewBarModel,
                                updateCallback: () => setState(() {}),
                                child: const ReviewBarWidget(),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    1.0, 20.0, 1.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 900.0,
                                  constraints: const BoxConstraints(
                                    minWidth: double.infinity,
                                    minHeight: 900.0,
                                    maxWidth: double.infinity,
                                    maxHeight: 1500.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.00, -1.00),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 20.0, 0.0, 10.0),
                                          child: Text(
                                            'Reviews',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: const Color(0xFF1D4C67),
                                                  fontSize: 16.0,
                                                  letterSpacing: 2.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListView(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 210.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.00, -1.00),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                image:
                                                                    const DecorationImage(
                                                                  fit: BoxFit
                                                                      .fill,
                                                                  image:
                                                                      CachedNetworkImageProvider(
                                                                    'https://images.unsplash.com/photo-1474447976065-67d23accb1e3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw5fHxwcm9maWxlfGVufDB8fHx8MTY5MDgyNDQ5Mnww&ixlib=rb-4.0.3&q=80&w=1080',
                                                                  ),
                                                                ),
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              '',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    fontSize:
                                                                        18.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      1.00,
                                                                      0.00),
                                                              child: Container(
                                                                width: 120.0,
                                                                height: 40.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    ToggleIcon(
                                                                      onPressed:
                                                                          () async {
                                                                        setState(() =>
                                                                            FFAppState().like =
                                                                                !FFAppState().like);
                                                                      },
                                                                      value: FFAppState()
                                                                          .like,
                                                                      onIcon:
                                                                          Icon(
                                                                        Icons
                                                                            .thumb_up,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            15.0,
                                                                      ),
                                                                      offIcon:
                                                                          Icon(
                                                                        Icons
                                                                            .thumb_up_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            15.0,
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          35.0,
                                                                      height:
                                                                          100.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            1.00,
                                                                            0.00),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              ToggleIcon(
                                                                            onPressed:
                                                                                () async {
                                                                              setState(() => FFAppState().dislike = !FFAppState().dislike);
                                                                            },
                                                                            value:
                                                                                FFAppState().dislike,
                                                                            onIcon:
                                                                                Icon(
                                                                              Icons.thumb_down,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 15.0,
                                                                            ),
                                                                            offIcon:
                                                                                Icon(
                                                                              Icons.thumb_down_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 15.0,
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
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.00, -1.00),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: AutoSizeText(
                                                        '',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        maxLines: 5,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  letterSpacing:
                                                                      1.0,
                                                                ),
                                                        minFontSize: 14.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    height: 50.0,
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
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              image:
                                                                  const DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image:
                                                                    CachedNetworkImageProvider(
                                                                  'https://th.bing.com/th/id/OIP.TU3CHmmsppZehSbmCMnhFAHaEK?w=317&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              image:
                                                                  const DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image:
                                                                    CachedNetworkImageProvider(
                                                                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAsJCQcJCQcJCQkJCwkJCQkJCQsJCwsMCwsLDA0QDBEODQ4MEhkSJRodJR0ZHxwpKRYlNzU2GioyPi0pMBk7IRP/2wBDAQcICAsJCxULCxUsHRkdLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCz/wAARCAFoARoDASIAAhEBAxEB/8QAGwAAAQUBAQAAAAAAAAAAAAAAAQACBAUGAwf/xABFEAACAQMDAgQDBgIJAgUDBQABAgMABBEFEiETMSJBUWEGcYEUIzKRobFC8BUkM1JywdHh8TRiFkNjgsJTc7IHJTWio//EABsBAAMBAQEBAQAAAAAAAAAAAAABAgMEBQYH/8QAKxEAAgIBBAEDBAIDAQEAAAAAAAECEQMEEiExQRMiURQjMmEFcUJSgaHw/9oADAMBAAIRAxEAPwBvNLFHFKvsjwmN596RHvTsUsUIQzmlz607FLFMAD50vrRFHFADcH1pc07FLFAMGTS5p2KOKAGc0Rn1p2KWPY0hA59aGD607FHBoHQ3miM0aOBQAOfWjz60cUhQMQ+Zo8+tGjjFIYBnijz60aWKQCGaPNLFOxQMXPrR59aWKNIBc0RmlRpAHJo8+tCnUAHn1ojPrQFOApDFz607n1pUcGkMqce9DFPxSxWxmMwKVOxS20ANpYpwXk0dtMBoFLFOxSxQHA3ApYp+KWPagBmKOKdilg+lADcUaOKWKBAxSxTqWKQwYo4FHFLFAAxRwKOKQHtQAMUcGjg0cUhgxRxRAPFHFACAogUQKVIBYo4FKiBSAQo4pY9qOKABinUgKdg0gEBRApCnCkMVOoYp2KQ7KulTsClgVqSMxSFPxSxQIZRo4o4piG4pU7FLApjG0sU7Ao4oEMxRxTsUsGgBmOaNOwaWDSAGKGKdg0sUADFHyogUcUDGgUsU8LSxSsBoFOxRxRxSGNxRxRxRoAGKIo4ogUAACjRxRAoAGBThiiBRxSAbgU6lRpALFEClinCkwEBzTsUgKdSGVeKWKdilitBDcUqdiligGMpU7FLFUIGBSxTsUcCgBmKVPHFLFAqG4pYNOwKNAxmKWKfilQAzFGnc0KQCxSwKOKOKQAFKjijigAUqcKWKAG4o4pwAo4oAaPKjRxRxQMGKcAKQFEYpAKjiliiB2pAACnYpYpwoGAUQB70QKcBSChUaWKOKQFbSo4pGtBAoY9qdiligBtGnYoYoEDApUQKOBTAbSp2BQxQMFHn0o4FKgQMUse1OpUANxSxTqQxSAFL2o4o4oAbjFH6U7iligACjj2o4o4pADHtRA9qQFGgAY9qOKVHFAAAo4o4o4pDAB7U6linAUDQAKOPeiBRx7VICxRxSp1IYqOKIAp30oCirwaX0p+DSwa1IGClinYpYoAbilTsUcU7GMxRxTsGlg0WIbilinYNLFKxWNpU/FDFFjG0qdiliiwBSxTwMUqQDcUsU7FLBoAAFKnYpYpWABRxSxRxSAGKIo4o4oGDFHFHFHFFgDBogU4CiBRYDQKNP20sVNjGijijtNHFAAApwFICnAUrGICnYpAU7FSMrKWKfihg1tZA3FLHpTsUsUCG8UsU/FLFADKVPxSxQA0ClgUcUaBjcUsU6l9aYDcUsU6likwG4pU/BpYpWAxmRFLOQqjGSewycUcVwvnjjtZWkkWNC9uhd03ou6ZBl1/u+pqVio3W6Ht4saBSp2KOKqxUMxRp2KQFFgACnYpAU4ClY6BTsUcU4ClY6AFFECn0gKmxgwKIFECnYpWAwiltp+KOKLA54xThTttICiwAKdgUQKdilZSRWYNLBp+KWK1szo57TRxT8VyF5p8d3bw3E1vs8b3KPIVfYBwg2c5J/b3rLJlWOLlIqGNze1DlwwVh2IBB9QeaO2rC9XSJFhn064t3jfwvFDIjdPjIIUHIHfyqFilhzLLBSiVkxuEtrOe2jin4pYFbWZDMUsU/FLFOwOeKWPaum2higBmKWKfijilYDMGiFp3ABJIAAJJJAAA8yTxiuEL2uoMIhNItvvBkaJmjMqr3UMPEFP6+1YZs8cUd0jbHjeR0jrJZyXcfS6kcMZliaR5XMbFY36hWMgg58OCfLmpVzatAQwZHicnayMGwe5Vsc5q5sLHSoY06NrAuRwxjV3Yepd8t+tWXShZSOnGRjB8K814S/kZ+pu8fB6UtLFQ2mMxSxVzf6U6GSa2XdHyzRAeJPXb6iqnFe1izRyxuLPNyY3B0xmKWKfilit7IobinAUQKdiluCgYNOANIDtTgKVjBzRFHFEClYgUNw3rH5sjOPkpUH9xTmKIrO7KiKCWZjhVUdyTVbYa1Cl5eSXUby2sgEUKR25YhA3GGJBGe/nn6Vz586wq2bYsTyOizwacFpkM8NyhlgEwjLuqieNonwpI5Vq6itYzUlaIcadMbto7fanYo7TTsBuKOKdgUcD0osZW4oYp+KGKvcRQ2oF1b2N3O8JuFjuDBJF4HETdQlWTqSHAwMHjPnjzqyxUSKxs7jW7JHj8M8LyzhSR1GXcAXx7D9K5NW36To30/58ljNpxjRrl+lO32y4lSeMRMYUkCgIHj/AIfQY47fOPirrVLa2to7YQRJH1Oqr9NQu5QFODt4qpwKjQtrF0VqfzGYoYrpgUsV3Wc1DNtDFdMUttNSJo54oYroRQp7gobigafigOOe+3Jx7rzUtjSKLVrl5HNpET04yOuR/wCZJwdnyX9/lXOxke2bLEopIJ7nHtXGMMzNJ3LFmckHOScn8811ACZA3hhlmPJXnjGScV89nz+pJ2evixbFwbXTr6OWNAr+EDJBBz2zxV3E24AgnBHPGM1gtMugk6LtlBLFPDgHtnnPl5VsrOVmjHDt+LLKDgEHtyPzrzpcM6u0WQOfp5+VUerWSxsLiIYSRsSAdg/fI+dXCMPf5+WKZeIslpdL/wCkzD5p4h+1dWlzOE00c2WCaaMnijg0TjIHmcn8qOK+ls8qgAeVHFHAo4zSsKEBRxRAogUWFAANOAo0cUrHQwhQGLEBQCzFu2AMnNZ2KXRDdO8kMrb7jqrKwLKFXIjwoycDJYe5HpWm2g8HBB4IPII9DWfghhXXbdOmrRrekbSMqBlgPliuDWN0qOrT9svozbsiGCXqxBQqnbIjDAGFZZQG7YroBUm+ULdSAcDbGR9VHauIFdGFv01ZjkXvY3FLBp2BSAFa2TQAKdiiAKdRYUVuKGK6YpYpbgo5gUzT1VviGIZ5jsvTvnxYz9a749qZpKudfvWIIVIFQeuQqDnj+cVyauf22bYI++y71kZjtPZ5R+gqlxV5q4HTtf8AHJj8hVPtqtJL7SFnVzOWKO2n7aOK69xz7TmBSxXTbSABAPPIB5BB9e1Pch7Tnihtrpgl8cYCSMcg5JBUAj8+aRAyBnGQ57E8IhkP4QfIGo9RD2M4FlEkMIKmWYkRIzqhYDuctxgVZPo8yxboTuY72kQsrHLc+AqoH0rIm+srnUftH9aktVCCOSCI5YIvGOpjHOc1qbP4mthlXttRaONVG9LXeRnPL9Nif0rys+sksntfB3Y9OtnPZjJIpYWgjQnLQRSvvTDK7ZyuCccYrm6zbSDORu7gOAMYx2FXl7b2uoXcl4LsKkuAkTKQQoJ5IyME+YNcjpdie0y54BOxOAfT/muBu3Z2LoqYbVJWG68WPaRje7nvgE5z9fpWm0+1t1SMrqUe/apP37Arxnb4n8qh2+naTC4dnilZcEAhTjvnJAI5q1jutDjAH2K357hmVs+39kazlbKXBc28VwF8F1JJjsWctj6U67uZYISr7OnJFch5GO3phY85OBjz9qrV1DSQfBZQbtoHhyjfmsQ/eoGrXyzWU4RXAijeXaJZJM4aMYXqIP8A8qULUkyZe5ErT7caivWRgoUSLH96CcMV8Toq9+O26lPbS27mOQc91I7MPUVSaVq6WMbOtpdb33M+0xdPjgHa0g7edX0+rx3cdqktjqME+QUaWAdNgy5OHQkDNenh1ct9SfDOTJp1ttHAL2pwGKdHh1icdnRHHyYBqKAlUzyduSQMDuRXp+orRx7GADtRxT8EbeGO5tvhBOOCcn2p22nu8CoZijingUcUrChm2s6xCa5GxBIW/TaARyS+DWmxWWuTGNUlkWSLC3YYeIcgPnPyrk1Mvab4FybPUF+/jYfxRL+YJFRdtTbrE0dtNGd8ewguvI5Ixk1FxV4JXjROVNSY3bR207FECttxntG7aOKfijijcVRW49qWKdjmlWO4raNx6ZHuO9VmiWeoC/vba3vpY0t5CHkyS0mG4JXBXPrVsBkqB5kCo3w0Q2oaxIRjdK5zjg/eNxntXJqXcTbCqZd3scsMKJJNLN1DgGbpkptwcghQc1WYq41T8Ft/if8AYVVYrTTPbDgnKrkNxSxTsUsV07zLaQ777atuDaLG0nWhyJCy5UNuwGUjGSBmpbSX02yS8hhjlZFyIlkXdjI3MHJ/eoOrwxy29qGz/wBfaIrKxBXqMVbGPUVdXkMcBt4YwwjWIEBnZvMjOWJPkKwcn6qZso/bKPU7yTT4LV0QM04ukGX5TMoYHBBOOMVw0m/kvbq+EqGOQmYxQgiRBFFbbC8cijkEniq+9ihN7ePISzmeUEDtwew86naFBBNqCJt2o0Vwj7GKll2BsE98f6fnyzzNN0bLGmuRsulyz3+pTkOqGB0tVjYqGkMTcsNvqF/M02xstbs9J1WASSRzPLbXEPTdiz9EMzJvTlQTgn5e9Xsn2BESWVCqMqsX6qAMzKGKgbCc/IflXB4LW4t3kgzGhjkaMxyxOweJTJ94QoIzjtXJKW52bpUjpDdS/wBGwXRl2deWWZzjBZWBfhSN1Stl+GUNewLlQ7AzKrhsehHaoYjP9B2ijyjfIHkvSbvuPYV2mQFw6AGUxqsjEhTtG0eI8EcbiCM4x29Z6BcnRY5xkPew4ydqpcDBPrjIGacFlYErqIGM7vvUx8qp7zUrNFaID7RI2UZkB6ecAZ3k7jjHkPPvSg1e2l3Bl6DMNgIJ2DkfxDkVO9F7WW4W4OFS/GQuSsciksV7sAOcfz51EuFmvbeeCV5XTeUy7HcYvu3bbhc5xnHFdLdFM8EhVeo0cwBB4KMgztIJOAffyzQt4I7iWRLiM9I3MqqrD8RFqCSzcnnGccDj86JKYaDA2nTRSS3C38c8rWcqbzD0S429VcDJx7f73EkvRm1K5d7loJILOTp7HZhJbx7GKJnAyPSuEp063iWaWCACVVkQGU75SyBvCBGTgdvSuLpZ3EEksaRKQsskfQkB6bxoDiQNGGyefMdqqMtrtA1a5JJi1k22jNp9qJYZ4beSebqxK8ESxEhVR+SzHGeONvvXW2huEhtDcRypKLKNJOopBLiU5ycYz5/WrbS+lHpenO5Uf1WDe5IGTtxXW8UGNSCSpIwM5X5iumGR7+WYSitvBnZmvo9Rsnt3g3CB1jWUhcB5FVjjPJIzjgdseeasNso4lx1P49qbBu88Lk/vUOe3t21TSRJGGEuBL3G4I+FB+VWcsapJKqgBVdgoHAAzwBXTCX3WYyXsRxC0cV020sV07zHacyuQRzggqcd8EY4rF39nDBeSwIcLG+0E+N9vGCxPc1uMVkNZwNQu84GHBBxg5IBxXPnpo2xcGpt9KsbC3tXgUmRwd0hyC25QSMA4/Su2Kkgl7C0Y98RMScZ5X24rlilp3UKDLzIZiiBT8UQK33GVDcUce1Ox7UsUWOiqNAUjSrm3G20en4l78HPHoOajfCayYvXZSN0oPi4xkZ4H1oXcTT21zEJHjLRlg8Zww2feYz6HGD86jfDcGqXKMyXskMS7crE+5ixGTkEFf59q580m1RpjVOzUapjZbf4n/YVV1Y3qyQxKrSyS9ViPvSjbcYOVwoP61XVpik1GiJrkVGhRrXeTtIOpbyumKqk7tTtAcAngEmrzUs9aH/7QHP8AiNZ3VII5rnQgWkV5Lzobo3ZWEZ2scY4z71f3kSQNbxIX2CPI6kjyHJYjOXJNYuT9RGle0xeonFxckd2urhfll+asPhjL3y4AASO64PptVf8AOqzUxM0svSiZy13cbtvbG89ySKs/hZJkuXV12uYLnb24zsAztyK5p92bLqgamC08UQZtsFnaIoCkgbkDsfqaj6a7rPeRZwrWN47D/uVRg81Zajpes3Bne2jwHt7WKMuWRt8cSo/ZTjkHFQrHStXsWuJ7yJBCun3MDEM7feuFCgkoB6/yaySV2Vb6LYhv6Ht/EATvz2I27ORXPWpGiVYU4a7AklbOSIo8KEHzPf5U8ZOkW5AHPW/EBxhMVG14s11YhASRAxOFJH9occ0NWNcFHKsaDfIwUgEjn07gYrnthZl2yZ4DYDcAeuPaut5DcssJS3ckGQsQowMrx3NcY45gkgkjdSzEhSAePD4hio2l7jQaFOzP0iQ3S6hTPKjcOR+lWFiS1xtOCDezg9yf+l8/zqm+HQ328KVPCyHGMZAVu9XtmB9pYED/AK0ggNnbm29e9WuiH8mb1Lc865z4bOyRd2MAdFTj9Sa5aWT9pvEOSjWF0zAHAyoHNWGo6Nq14XNqY1UxWqL1HCn7tBGSGQH09a52mjalZTTXNx02hFjdQt0izkM6gKew4z3opWK/BdAuukaKRg/cNu5wARwPy5qfEWNjHuJJVyASRwOOKjW9vcXGj6csAQvGsvEhABw7KBnFSo4ZobRlmTa3VzwQdwIXk4/KqiqyWJ1soqrp0XU9HBIz3PI8I6uRn9at7gffSHHDHcPfIHaqXUYoTe6YzKPvBslxwZFEgUAkEeuKu5Y44nKRoqIApCqAAMjmupS97MmvajnilijRrbeZ7BuM9qx2r9KXUbwCWLG5cEkFT4R2YcVs8YwaxGr2Vva3k0MI2ReBlBy23eoY5LEms5yvouMUjb2LpNplssciSMqRjEZGQR3GO/FLFVejaLpq2EV0yCWV1Eu51A2nIOFx6Yq3pYpUqFON8jcUcUaNa7ydgMUcUaOKN4thSUq4w3Ntcp1LeVJUyVLIexHkQec11zWG6zWjncHbbXbZxi2n/PpmuvwmhFrIR2Mpye2WAHJFRr1sWV9n/wCgyj5thasPhbAsMAk/eycZzipm+Bx7LHVj4bb/ABSfsKqs1Z6ucC1/xS/stVOatOkTQ/NEUyjkU9wUQbtlbUtAj3Rkx3LTSAuqlUO0Bjk+xq/1Aq0luykFdm3KkEZDZxkVnLyC3uNW+H4pYldXMm8EcMobIVvUcVob6OOOa1SNFVemMKigAeMjsKhv3FeDG3fhllK4yZpgQeQWLk1bfDwJuJHxz9muRz6gL3qgu5ousQxXiafKnIJ5II486vvhiRH6xXJKwXK4AJySyBQOKxd2aJ8Ey8uRE6QII9+yF3Zs8MyKQqjOO3P1rlHdi5S5jKqJI7S7ZmTcoZdmPwnjg1H1KSGK6vGkDFYorckhQTkQIdoz5+nNcdOkhnmuDFu8enXRRNp3HIVsccfOsadl+C1VFbR7fHABlYn18AqLrAIuoNwBbojgefiY4qxtlS40y3RWcYiclwuQAVGT3HA4zVXrksa3lqWIG623BWHBHUdOasgrpDboXeRF4ORvP/aOBUWYwPjphVDqVO3zJGc81G1K7tYomlZ41CNNI2TkhFgHiC5/yqPaXls0e8vGUYmXI52o8SMGYeVVTCzSfD4zqIHbashz5/hPpV7bAfat3bbfIBwRnNuVyc+dZz4aubd9RbYcsIj4Rgli5KgitYI1t5kkPUCy3KSEMFADLEQQuD54zU+RlPdzCHpQqkeRChaQopYA5UKue3bn/auNteLcSiCSNDJtldJFVQxCwvuVtuB/PvTNZuYbN5eoQGSGCPadoJkd2wu4/wClQ9LuIpdTskQZMyTGPO3nMJ4Bz6+1TTuyrNRp85h0eyYfiZpEBI/D945JqYZhPas4OdrBSR2OPOoFrsfSLMkHAluEwBkg9RwRgelSLUo1lMFH4ME+Hb7DimpP1KJ2rZZT6hKBeacBnwAs7YOEBcEc/SruaSKYpJE4dSgGRnyz6iqfUdvVsiwUgLMcHB4BXyPlV5cjHQwAB08AAYAwfKtr95DXtRxoim0a0smh1ZH4gH/7gxPPEPBPfMYrXBWPYE+XAz+1ZTXWje/lCPG7LHEjbWDYZRhlOM8jzosKNJoJY6TGGG3wOoX0AJ96kZqF8NMn2BULru3SDaSA3JJ7Hn9KmL4mRexYhfzOKmL7BhzRzXn93/8AqBMlzcQW2nxIkUskKtO5kkYo+zxBWCc+2fnVxofxO+pXQs7mCKJ5A/2eSEsVkZBuIIYnuM4+VDyJOmCaZqefL3J9h6mox1DTASDf2QIJBH2mHuP/AHVnPjy7urXQk+zyOnWv4IpzGSGMaxySbOPIkD8q8uE9xgYmnA8h1GGKp34Ik6Z6H8MDFpdnIObnyGDxGo5q+B71kdM1MWMOGJ6TXCFtyghi2I9u49v19atX1jhAjQqZhMiEMrhJBtALnsMDkZ75rDFJbUbyi7O+oSXD3em2CdLpXbJ11k3DeDJwCy+IDjnFddR1e6+GxYRRW1uWu3nihRTOIk6SBmdlPfv/AHqq0vlutSsZ2VtsBiVen4mYAEkn3JPpUT4tn3XuhQpNMYzDeTgSY7SMsXywcelLI7YVwazTNUvNcsBcTQQiWK5kjIPVHh6SvkKDmu/RvcMywWrDOCP6xuGO+Ru/Kqn4VaGLS7sTSLgXkz4QgOQIo8Z5Az6VbO9u9tOBOwkiNyEKuuWCMQoI3eeOazjJ12XtIMeodTULvTRDb9e2ihkkkXrGMGUKdgAfdwCMnH7U7Ubm40y0ur2aG2dbcIwiUSq0oeVYQAxfHc5NUGm3EKfFusssgNu0tyXcYUEIqlsc45I45qV8U3cB0u7RZtyXdxpSwqdpxvmaVlXBJAwoP/NUm35J8WS9LvBqx/pGCzQT2cvQQESsU3LuyAsoHOfSnrr9rqd02niZZLgNLAXNpKsamJmZsuZQQBg848qgfDD2sGl3jPKizLddSNTIqA/doF/GRnkVR6FJbLqtxclwII5NVlVy2FKETEE7jjnj+TSUnV2BpbSLQNUlnWyGmztHl2K2844ZjhlaSYDk55FW1vYyWIP2VLWI5aJhFDh9oJOF3THOcD8qx3wZPa2sd7NPIiqLOBFLMqhiz48OfMfWpza0YtUuIPtpazttKmmCoUIa6PUkQlsc5AAPzpp32Fs0F1Zszt1ltX64QNLJAmJCAR94S/oMCoNxLBpe7ZHbLcskiGOC2gI2MDgOytgDgZGPpWcXWLqfVdWu4p5I4z1I4YmkLpGNkabFB4455x6nz4gXWoXCy3HTZCsRhTLAvueSQIxOcevHy96pJdsVm50hZ7+0kmeQR7ZJ4I44YbeKMRDBMaqyHj15qe1jKdvUnZxlV8cdozLuGTw0WOMnNYzR9YlzHps6wLZu11I8o3pMJWiJXDhsY3AY488eda17rSAdMuFvYeokkKzfeHmJUbduXGO4H8motXwWk2joLC18UZ6WCoLEw2hDHJGG+5/y/aj9gCpJtMWHDlkZbNVYAnniLBz5fzhJc6S1xeql3C8Oy3SUtKAgmeRgVUtjuMdvnUd77TYoLq1luYknt1leF3cOSGdzGEKZB4xnPr9aYUySLJEZenLt7nMaWqOuPXbFnFdre0k6lwZLmYhVUK++BwSeScdIEEdu1RW1XQetaSpdxjDukp2yY5jOCxIx3rNa18WXFle38OlTQm3dbExuYg7KzxmSXBk9fDwRxz9FVhL29mpu7VPuiZVk6khBWVLU7lQE5U9Hvz61zFisW12lVJM4DrHawumc8k9LscYwG/asdafFWpy2WrJdTI8yxWslmzRoGV5bkKwG0AY2/h9Oayk13cXXTM9zPKxlLffSyyEhbcL/ABE+9NRZDyJHrDbbOJ5J9UNvax4zIZbcwF3YrgbIT4vTjn6Vwtb2wvHmtrXWZZJ0QNNHHsVCMjG2QwgHgg9+M1h5bxf/AAtHZlyWN/p21D2CKZ5DtbPy/k03Q7pYNamy5RZYxG0hyBH1Yly5HoPMUfsW++D0LMH2sWLaopuIwWSMzW7TIoAfLJ0cjI5xnNShFcZy19LlVCgtJCyEZycARH9qwL6lbp8X6jfRSxPBFcxqr5whRLZISxPp3/KrWD4gtX+I5Ud5F0iS0gVo5juMchjMhKiMkjJ57+f5JlJmj6Nzhgl7IeS2N8G4EnkKxQA01Uu1bH2yQDLEP1EK5UDCsoiHf5nGPeoi6xo/2KFTdDqg7gpXlWWQFiSDjkZ+f1qFa/FVtKbmZY+i6z3EEY56ZhJBjk2HjcADk+/tinZVO6o763JPDa71vN9wkU8gZHCgIsW4MyxhTgkcj/t96w+k6peX06LPIv3jt1NgCNkqcYPf9av7zULOWDUdkweV7S5UbhjMjxsBz71jtDkSOe3bjKzJuBycowwSMCtH+JlNNSR61BE2NPf7TIWYWxbLRqwBUEkDp8+4z+1XcwC3UQBPJQ+X96snFr+liKFZ5oVktbiAWojDF3tliUkyk8Bic8ewrrq3xFaTTwnT9QwqQMz7RtUyKSwBZuf+KmLp8mji3yjya5B+3XZQE4urlyDySglbIOPOtFoM7Q3ujyFSGS5thkbSDvk6Tdj6H8jWTMrtKJJDu3ylpOQS4LZYj51orKVgEkj8XO8Hwg5VgQc/lRndI5Ydmz+O5reTRLmOOQsY9SsnJQHYcpJHgNjHnXlO8ec2D6E9vbtW4+IrozaZcJ1Thrm0yuPC2GbB8u3yrCl2yfvQOTwUHHt2reMrQZVtfJudPtpblZFTd92ysfGqg5BUdz+dc9Vhm02y+0SyM330cMa7twMsxJ5VW7cE8V20mS8VrlLcWrSsAx+1ibCxjzUQkc59TXTU4ry+FlaXJ0wK14GBhM4JdLeVhktIfD5GvLhJ71b4O6U5JUiBp6i8sobhrxUJLIS5WLcwxyiBicDtmoeqxiHUrRRKkqtZFiVbfsTc52nb64qMbG/imsAlvNJA8HTQW0MrKnTcjDYB9c9/Omy74dTnWUNG0ccW5GGCnhDcjvnmtne510ZPJJ8M0VhbW1xCJbmcwWlu2blxII9sZwpYNg9uw486mxaTbTT641rqHUtbG4C2pXLdWMRxyP1JF7MuWHCnO0/SvtrK61G01C2to7V/Aok6yEsBM3PTbcAD3PINaTT7N9O0zULciCKWZ5LpZYY4zsZdsndmJJ8Jx6b/AG51wtbGpFty4cTE2JtY5rt5HAhaafJUsM7nyD4QT6AeGuOpWl3az2ZuJVbrTySRAM5KxLkqSGUccgZ9vyk6Ctvc3lkk8cckM8snVSQZU+FmGQPPIBHyqd8X/Zo77R0hSNXe3mkl2ZyR1NqZz8jWcbTZLbcSI9jcXdmssU202nXd4vDtmYJvC5LDnvjv3qJYSwQ2N5JOpaMWc21QzKerIu2M+AjsSCefnV/plysWha4ROA+LhkAAywjg8iaz1r49PvFCFm+wTkL57lUEnjzxnAqE+KZL4dlx8OxI9prMcghdxpJRBOePG6qzLjOCAD5VV3HUjvfiDrMHdWlDGHO3wpwF4z4ex+R+dWWgi7NpqZt9w6kCW3iG1XOckEsCce4qUuiu+qXV9O8M9vdTvJLayRSFZUkXaUdgR375GKHmivaxU6VFXpkUUtzcxyMyKYppd0eC29IuqoAYEcnvRnsb2S41GO3t5nRpRJC8mEV0EwcYdjt4HvWih0zT7e6la0tgk0n4IxK1wyJ+HarOxHA4Jq7ttKmkKtcP01C/2cJyzf8A3JOw+n51l60m6ijRQbVGastLs5YjavC51Zbnq3IiZ3AtHh+7GGGzBOScdiO/PNr/AOF9LhjM17NJEODsi2k8eQG0kn2A+taWKwt7YSXSQtu2x8Lw8uzIUZY+55P64qrvJdaW4Vo9NWfxZV0u40RF8kUOmQPqa6YxlLkdrGqRk/sERnk6NpdKguIlBnBLojvsTcVwB78U+WzuI+qPspcxjLoUYZUNgqJAeDwcHB+VaaS7itrcz6jJbWMswg3RTXMTEYn8m4yMDOcftU0R9SFyNrCXqMCCMMGYtnI4rZqkSsjM7aaTpV/p6NYGTbFJiaO5ciaGUIEMcpXkHA8xz3qovvhnqPM8UssczENsmVWiG1doAYYOPfmtPqtjfRyJqelKovo0VJ4gfu76FRnpyqeCwH4D5dvPjppt/p+tQgiV1ZAWms5VXMTDglWIBx2z2x2PvnKMvygx7lL2yPPF07WYlurd7N3kNtBIOmwkjwko/C6+Hd7ZzVOrgJEchgJWPGM/2ePKvXrjS5QCYJ4HU/hQtEpHr4u35is5daDpt07LLahJBIHP2cGJ2YLswzRrjHtURy1+RL0/+plpFR9Fgl3sDb31rGsZxhxLHIS+M5yNo/Om2pK6kyp4WfoIjY4UsigEfnzV/d/D4h0i4tVmePbcQ3QuL0COOPYGQK3Tj88nHn2qDZ6bEus6IVvIJusEe4e2l5SWE5IjUgsSQMjjyPpVKSaZLxSTK+y6n9IXhxHI73Mka7MBHk3lBgtgYPGKl3FtLZa/cwPCqFGtcRAsQ2+JWG0k5wSTUS0S5XV72Bkk+0G+cFHHiMizk4IXA5zVrqVxet8UTTXEcYmWTTHjW3JCGNYlRemZcH1BJ7Z9qH2/6FTS/wClhc28sUWoTPFKqrZzvsAjeJR0zhgVlz5/7VXaEVCXHVjLr4MMis48RIBOPlzW3OtafBauJknhmhtW2pdWzdKSRISQoli3JyR/eFZb4JVbt7qNw2Ft87Y5ZYm3dRcEGJgfX+RWSi1HlmztSXILifRoxcIs0kdy1pJKVFtlVMaPtUvvHJ58qzGko2YpEZSBJGR+IbX3cnafIZyflXoWuaDpcNjq99i9Fxb6ZdCMtdzyLggkAiUk4yT5+Z9a840wld+0Z8XPqT2I54/n3rVJqD5M8m6+TZR6RZZkuYtRdlt0CyhLRWAUnHKDk8mpZsHzGxuJg0mQhOmoBvKs4BdTx50X0K61PSIHs9Rn6tylvLsubq4+zja2WTaM+nHHFdho1/a2hkluLwyQWssjrBfSiENFGzYVePDx2rFynw2zSNrg8qADOoOeWGCuSeTgirrTJF5QDLxOsTEnjLZOPXy5+VUQKdUFh4MqXXJGQSM4q9tnT7RKBgicLdxSEjEhB8accZBz5eddWVXGjjiaf4hs3b4e+1h8qxsXA2YXxHGd2PpXnxEYJAZsAnHatLq2oXCwXFjLIphNvbSwITyoVwCSM+xrM5Pon5VGn3KPJWWW52bzTJ54vtBtx1JDBI+0xCVQFGQSPWtTa26mKN54I1nPV3EwojAFiOAAMZGKyOjzWsM05mJ6b2l1GcsoBMmAM7/rWrXUbaSIGC2tWTbmOSY/jQHaHHAFcsZxhy0dMYXLc3/wkdFlUqsBVQBx1yi4Ax2AxXn2tgRa9rDNHhFWzZxkucGFPErd8etbFA4e6lZpV67BpYoJ2iViihRgI2B+XNZ/XdOLz29/A0qXFzNHY4upeskhZGZXJ75UD05qlnUnRc0muCd8OyQwxXgdLuTLIF+zgNhV3cEBgfPire4uw0XTitNRUSoyF5GL4DDGdiv/AJ1Es9KFpAsQu54wXBlZeph+O2EOBT1tkXlbuRwpJCb5c+I9/Gdtc7ytcRZSTSozGh219b3zo0VwpsC5kaBQrb3XC4eTw8g5GM96ka1p+r313aXdvDI/Sgki/rMsStuaTcvIJ45/StAU2bi4kCsdzFhkbioAPHlgCu0druTrbgVPl1AxAz+LYMn5UvVlu3Eenaoo7DSWispoLvMf2l5xNFAUKbXXacMV7nk8HzqXp2iW1kDNapcEKhQS3MyhVHH4TIACT7ZqyjWB26aQ3AlLeSOzkDsVHAx9Kt4dLknAN1KxGBhSVZlA5xu7ULdK/wBlrHFclSiFgCA8jMfwkHbz7x812t7AyLuuEkWPJBSE5dsceI+X5GryOytbYME7kgsxc7mxz4iece1PASRlCA7u3B2qP0rWGH5H7UjhDFbWqYtoSgzjaqnexH8THBP511knihWFrxQjyZ6cZO44VdxkZU/hHnUhmhtUkbJygId/xYfHCKD3b9u5rOiWSU6rPI2+Z7XzJYheqoCjb2A9K64w6RhLJ8E57m6uQWVVEkUm0iQsIXieMFXQjHIO4H07fOPLc3ELqbl4UAjM52hyojQN4ifbBqQXn+x2uG2EoQxw3OJBxWf+M5/s+n3RRj1J7Q28K5wHJZiQB7DvW6SsxbZ51Lrf9KajfXl8sr9UHCRv4eingRNhyMAYHGK9D0DWYLmwijBaMW4EaRbG3LG2SuSTn9a8zsLSeER3B2q+4q24jIzHu7du/FaDT9Ueyv4w8WLKaB3mZFAbIfBcbeD5H86qVFKLo9HivPtMipGwL4OAYyPY+YFUGuaPf2E8mu6eClxGetOsIYmYc5kVCSN397jn3qz0ww/b7Z0DMCxXJCgjI5Bq5kcu8y4OUMJj7EKwlznBP0NK6dolc8Mp9E1+LVo0RpOlfYYvEkKKkm0eIxk85Hcg9vccizmt4LpBHN1HTPBkEYIb1UqmRWJ17SjpeoXGoWIMaS3UzSxISiwSRspDRsDxndwfL5Hi80T4hk1Pbbzy2kN0SoieaJlW5ZTyj7JFVZPUY58vecmC1vh0aY81PbLskXGinbKI4YJ4TjMMsPUYfNW8J9uKq1tdLikGy206CWMkE/ZfvFb3KuCPyrVF9SQhXWwKjd2SXOR6/ecVyeCS8B6kdqhUZLRrMsnPr4jkfWuRx+Dq3LyUDW0MLpO8ekiVgNsxjUy49N4mzUS40ywur2K/mkgDKgjdIJQiThSCpk8ZPHsRnzq7urC6tFRxGtxjG4WqKWHuVkPIqCLuMszPbXe/GMJawnJ91DAVnyi+GdGnhaOWMSQDqxSx4EkXZkK486zfw/oskS3K30UW0dOMRmQSETKAS4ZDx3wCDV79riY4Wx1AgEDKWaDn0/FRN7bgktp185OcZtmTGPZXFCbSpCcU2m/BF1Gykj03VFt9SvkQWVzut2mkmhlURltgEoYjt5EV55p7nqMBtL43IGxgkZBGffj8q9MOpxqP/wCNvR3H/RiTv3ALSYrGyaJGuotLEl9bWL7yhltbgywFuCqqgZTnkA58/atscrTTOfNG6aNppOrLbadZRT2OoGOOIAXEMSzq2WYnwo3UGO34T2qbNrmgNb3jG+jBS2nZoJFeGcgoQQsUwXJ9s1AsL7Sljitba7h8ChEhnLRyfUXCg59eaqNb1Zre+stPhskvN6LJfx9IyuIpSVCIR2JXLUoSbdUbcKPZ53Io6hUEEINpIzhgDjg/rVxpkkMnQilUs6SsY3jbhQF3MJFIIxzg+9Us8clvMyvHKqdR1jLxuhZFcqCA4Bz9Ks9NkKckIwDRM2fCFXcdzjPGQPF/xx15FcDz1wzXX9sjfCF/ciGEzJqUJaYxo0qwHYrKJD4gCxHnWCCMQp6g5APJ/wBq31xdXS/DusWotRLbzh5WnSZc28kbxE5hcZx4R2PnXn5A5wzgeQrPB+JWVdG10a3innEUq9RUTqENgo+QTghjjv71ozpmhkRhljSQkgqLYlDnthkJ/b9qhW2nQWSyLFuLtt3ux2sSO42gkDmu5ACoSVXa2WZyPEfLPbj5V5M3crR1qNIX9GWCh9i2nDeAAbdzDvkOopwtbYvFvjkV4ZCYQpgwjADLrkt9K7W1tdzFOjDKw5YPwIgPPDsQM0+6tnty7T3MQ2qcLE/WkLceEouPn3FTyG3gSRyyblSOaabGW2zBmwTyWUZ70x1kgeQSxPG5C5QSJuGcZOFBNPtpo0xHZtfTOSzmKOK32t4eGYSFsn6irFbGO5yLmxt4nOC3RY9YEYwZ3iKru9hnvVRg30NKyvMjzHoW8ce5uPCHlnIPmWdjjPrVjbaNIQpurhk/i2QnL59S54z8h9asoLaG2UJDGkYONx/iYj+8eSfzrqQwJ4Yn1XI4PzFdMcKXZVJCitrS3jWJG2r5KHc9+fEeTT9iMMjHIOCWY58uKSysgYNlRyRu8P0yf9a6wSdVZHTotHGziUxypIQ6jJUtnAPrk10KFdIhyrkZHFMXVQCw458h8yOK53l/9kRYbRd9xPkQkj7vIIDEEeme/wDzXC/1Zo3trW0VTJK5eQsv9nCo37mHYD5ntz2OGiWsZePUJ9yvIWgHWkUksrPlsAnt5Dj/AEW0vgxlK+wPHc7IEmuGLLu3FjHg858I3Dj2rjKEht7koUJeLDNvRi79RG7KSeOfL96h3n9ISSXSRyNxcTBVRU4UOQB28qjRyyKt1Gz9WSWNI1O5RHEd2WZ3z+g/Sldc+BKLm6SsuLi7igsLWWaTpxJ1Cx2jdJlwdka4ySewH/NeYfF2o3t5PBdnqLlrhY48kCCBdgCceePxHzJNeg9WWUx/ZohciOIoJ7hJI4I5CcZhc8Ec+LaD86q9U+HLVLW4R/6xdPZXEskrgjMmTIemnYDjA/X2eOblK64Np4441tb9zMDaXUU9pKJcmSMKQOwJMiIM59M1KeYm3t5FCb9skIRDuK5DcbR88j5e9VBsb2OUrCw2MFZiGUqcMCB8+1bDSNHui6Xd1F931VCEqqBpOmWLoABkZFbSaRrDBOm3wkbfR5ItRt9Murd0W4txFHOCfFIiDG44/i4qwkZutcduRFk89uqKyn2C8jmE2lSC2uSQen4lidh585wfpip2l6rNdXE9lqiLaamNm0EdOOfDBvPjcccEHBrCLlDh9GWSMcvvx9/BbahCtwZ1MaSfeTEqZADsbAywYfPPtXn2q6ZPpU29UZredtsPiVldRyIpWXs4/gOOR78VvdQUvKxa4uYj17hNsMrIW8EYGcHNZfULFowYpZZXgm5xIzcpn8LZPcV3YZbeTz8nPHkfpHxHclLe2mngEX9lDcXELyuDnHTnKyL28ia02dbBISXTyRtPNrdDj0BWQ15teWj6beSw7twVmjUkELcRg5GfIOKttO+IdTt44YFuwLRSEVpoVme3X0OQWKj0/Knl06fuxmmLUV7Zm2W510MyhtILLywEV6CRnHI70y5s9VudztFpQkYAiRBeo/rnJH75rgjfE8iLNFqOlTRSLlGFsNrhux4WuJi+LoGZom019+eoQDl8+vUGf1FcLjfHB3X5RyuLPVbZN7Q9fg7/ALNvcpjkHDKGP5Gq6LWrEEpNI0WNu4sDkc9sMM5/KrU3XxhFu3QWO04HjyAoJzw241xlXXdRIH9H2Dy+TIYy5Uf93UwR86y9FFPJSIza9oQOWv0JBwUxIOD/ABZVSKYNd0UZK3sZxnAZZi35BKmnTdRhid59PESqPEB0JAOOSRHlsfSuFtfaKHIZdNlAJViRBG6kHGd4H7is2kn0x22uys1DW9DmTTmmitbu1S6V7tG3LPhBvQKkgBxnG7HkMfxZrNXmt3o1a/1K4Rliub4XFvIOFeNVVcKy5UjAGADxz61ubq6+GzBcToLaSREd0hxFIXcHCxgOnH59qg2j/Dl3p6WbpapvmF3fpMFjLXxBXdHk4CKCVUDHHfvz0wkox/FnNPiadopL/T4tfuECXdpbCQi4N1cGQxthC21htB3EnGBntUDSLEqoj1BugrDfAZFR1DLnHVKPkIfPufatDeL8JaYolgjnadT4FsLu53KD3YOxZR9Oeaz51FGmV47O2NuJA2y4HVbjLfeyriQn15HeqTc1VFTpO2ava8uiXGnzIkdybG5aeSGVDbdV2YoiSHuW4PAIry0yPk5HPnz51e6lql5f3G5nSJWChUhLBAEXau0H0586pGi8TZKk5OTzyfXvVYsbgY5ZqVUj1gRl2ChZMOA24BmGBx6bf1qbbxXVrKsk1tbFGUFTdXMKbfPhctz6HZVI0+sXjqk97eyFzkJa26q3PGfHnH8+lTrX4dEuyS/acLyek9yXlPoWMZ6Y+grzY4k/J1Jt9FtearpLQiO71Boc91s5iwfj8LMUUY+lU32rTHkDQDUbmIdkgt2LN83RWX9K01lZaPZqot7OGHjG9Ej3n5uRuP51YpOgXwo2O3jYAE/Tj9K2WKPwNpszltqOpgfZtN0GWFigkPVTY7KW2l987rnHYnB71Iz8XukaR2lrAAz7leaALgtlfwKzfPnnNXkXSmlSQxKJIkkRW3ElUcgsPDxg4B+ldz02ztx5AsBWlpLhE0/JnPsXxTIQJr6yjAYgrELmXbnjjYUFOXSL+QDra1MwyfDDbxJ7cdUyGtApDHprgtjOBggGpUUEYG7aNx4JA54+dXFt9ES9vZQp8M2rIhlvNQY7k/HKgB8YyuIkX8QyPrXCaWLT5JtL0RZFmmlMl3NLIZemduAoeYkDAH0+nEm+1o3Mj2Wns4XOyW5QgHk42xZ9fX/mqaZobaGSG0U5xmeViS8jn39BWjb6Ri35Yka2hURrL1HYnryDLdWQc4U99v7nn5SrjUrTTdNvJ5NrsTB04iSHlYHnbngADucfmTiqrqzHxMe/fei49fSqfVbK5ktNSvJNQlMjS21raWscMaRCOTgqzYLYHiZsEZq4pVTHp4LJmSk+CFf67c363IVhHDLIrGOEkYjkkyQW7kVxe9uswxtJIyRqAIUXpEbfCdhXv2/286rRDma+hUYWC1+p6RQ+Xmea2Wkx2l1p9/Z3aRyBZI5YlZQQonAcsrHkHw+XrTnBM+5llw6XT74wVKiHH8W3SIkM4LpGuB1UYOBkNgtEf/jTL/4jbVYJbdujAskZiZ7eRhMYmOWQNcPjnz8NStS+GWgRJ7dzdQEAm3kIa4jA4HSY/ix6ZB+festrENtCbQ26BSRKJBtKOHUrw6t4gfpTS54OTDl0OompxxJv/wC8Eq2g0m3253sQSVLT2zAe+1ZMVeWl/bJtCugCHKgyxZXjHhAY1QWCRyQhmi3E+aMw9uCa7XEEI/s7uCJtpJivYYz9Vdkz+9HPk+keKE8e1xVM1MWs2cDCSWVWYHPMsa8A+hY1S61qrajudJNNSKAGSIb2e6JXnAlxxn0AFd1sNLSOJibZnKRNi2tTKzMQCdoCYyfKu40rU5yfs1q1rD3Ml5EqOVGPwQIS2fmBSqz5qWHQYPfsr+2UkPxJr8MeZTOZGCR2zSZIcrgDCvycDHrn9riO+n1mNI4rlTJ528qhWWTGcK2M/wDHtVsnw/pCrdRzLdXM86NCbyaM7k7HMarwuDyMDy71hxDd2FzqFu+ftEUgcbf7QPE3UWRV7kEH9abqKMtPHS/yKliqmun5NpFpdtq0uu2l0hDraxzW7KcNHOGwrAjyORn2+VYieKa0lmglRormBtk8T7vGPXt+VeifDt1a3Ukl+qhGms0iuFiBYCRZF8Xhyee/b9q7fEmh2+tW6SW8RGowAiCRuBNGAT0ZC3OP7vHB9jW2LPslT6Z8pqtLLHKWOX5JmI0fWLnTH3xEy2crKJrcn8A82XPAPvivSNPntNQhjnt5kaNx5DxKfNXXPBryRRMkso2MssTMlwhXH4Tggj1HY1baRqt3ps4urMqykBZYH5jdfRh6+la6jSqa3xMMOocPZI9OeEAspy8bjDFSysoIIOR3x8qgWskUVx9ljgZIldtrXUiQybh26ChRkH/Fmn2HxBp13biTqQqc4eKdghifHZjkDHoRUKW6SeRYL2/sTbjL77IoyqxOckgbgc/t9a8rZ4PTt+TSHeB4lzx2fO786odQ0LTr+YzFIlcbVbZEMtySS7Agk88Z9KnxXGnxARx39u+MYZ7tJGOfMtI+ad9stGPguLTcDgkXEWfljNQ0yooxWoaK1ouZLKO4g55guZgwIbHjXcGAx7HmqSSx0UPldMuUmKqVaG/lU5PYMdx4+hr1CY2su0yrbOFIKsrIxU8cnac/Wqy90PTb1neKQwzFdwMDx9148Styc+fNFzXKbDZFrowEdtGiglr8AuVEZuIX2MRwMyxnPvmi2n7nX+rRzAgli9nAxzyQS0DDjg+VXtzpWsWCgzlpIkKLHdRjcic8byoDDn147VDWe/tnVluJSI2+7LqjKpyXIBUA4JOT559u56s/kj0YfBXf0bZkoH0o4JwTEHjA43Hd4gR6DjvxTjpOk5ONKvMZ4+9I4+RSrBNWniZJVmdZOuzETYeN2dhkCTlh6gH0qadc1DJ+9ujyeQykH3BDYo9XINYoGiihtLcBbYW8ajvhwM4/vuxyT8zUgFWB2mJueGRl259smpkkMbHG0kdsd+Dzjg1x+y2uQOmjHJIUgkfk2KLotHEyYyw7fxMcEDy7iuvSLKJZZOnHtyucZIPp/wAU029sxCmGAFDxlAyn5Zrr9msmYj7LASPPYMDjHaiwObTQKmOoFjz+CFWOTxyxOMn3p8Cz3T4j6ywqCC+5stj64zXSHTbZ2BEMajG3jIJ7eh4qy22tpFI7sEjRSzszEAKPPvThFy/omc4wVLsaIltIJXXbmOJnO84XKLuyx/es5qOtzX0gs9MZxDgi5nVCMntsQny/nsMHnd39zqryQw7orPjCb5OpMB2DlTj3wP1qK7RRIsEDuCuQzLM4Cj+4ozj5mt3/AKxORyvlhhtTsNvbzCBIALi5uXUMzsDkKmfPOP8AgVxtY2h2oVklEkwZi5LfiYZB3ZoJGzcB39/vD/nUmOKYYImm8LBuZMjIOc4xVRx1yYzmuiJJbXDOx2rg72VSxG1VrhqljezaUFsgGuIr63u1jkKgOEidWTJ9c+tXJibbGetLnDd2XzYnGCtF7adoCqXBVt5flUbjb/g/zrdRpWZwyvHNTj4POrKC4jvNS+2QiKciFXiBDBBKN/cEjtjzq40GXbcGNe1xA8Hb+6Q6498ZFDUrDWbW9uL1LeS8tJwrv9mUGaF0UJtKAEkHHGAf0rlozalHdW7T2l5ZOl1H05bmB0X70NHhGZQMjIOKh8s+30+SOpwyi2vdGv8Aw3LZKWyqVyd24lTxjHkayvx3GhttIuVUh47meJ37FlaNWA3H028fOtPH1lYL9q/CuMbI85+oxVH8XAzaJclpA3Qu7SQAiPJBYxkjaAfOhdny2gns1MH+zK6cJ5IIZDJLzkHxHxFWIJ45z6VYyRXUkTLFOA3TYjrxiQE4PmT/AJVE0UA2rqeNs8m3z7Kp8qsEkEc8Kt+GTeoz6jnH5Zork/VoL7dfCNlp8lrHaWjJCiubeAlgBuJ6akkt3rq0yszOpxncTjIIY4HccVEt4rkWtn05JdvRjAKJETgDbjlDTmF2FILXQGD/AAxjjGCfwVN06PyTUbvVlu+WO+1xtcmOS5ljhHUMzfidWDMAE4wfLyrNavaPcaimo2yqTcBtNSSUjKT7SbeR2HAYgYBxjIFWxikeeZWlZQZH5IyTz54xU630uWfqW63L9MtFK25W2lkOUIBPcHtQx6TUPT5N6VlHoOm6jpNwbm4u9l1ib7RbJho3LsQBJIOCVJycD/fvqMuoG5aR55GtSt1sCkIiEqdq7UAHPODirB4IllnR7q4kcNJGzs74Y7xk43e1cJ4EaOSNCG3KygSPJjO0gH8Xet4wiuWTq9bl1U9+Qx+p2jybbu03LP0oeoqj+2UIB2P8VZ9LmeGQyfiU53qBg/LHFbGeCSBgJRnKgBgWI4HbJqi1OxPiubcD/wBZFHcf3gB+teirq0eVfIw3CdFLmFuThwqkh3U/iUY8/wB62WiR/C+pKsc1vCs8eGVZZGQlSANytvAJz34z88ZPmwaSJgSd0Z/EAT+E98eeavYJUYQywNhoyrIynxqQPJu+f3rkzYXk5jwzsw59nEuUelPoXwy+cKisRxsvJBjPY434qJJ8PfD4KgySKSPC0VxuUt7gq371H0L4hs7tehqMyQ3CcJOdscUwAAIc4wrfkP8APUBVBGSdpAPdjjPI7DtXlS3xdM9OLi+YmaPw1pZ4W4vAc5G1Vbj59P8Azpo+FrcE7Ly6yTwGtlYY9iuK0TdLdlTk9yMuPryKIVnXIjXHIOJCe3pgD9qlTkvJTUWZZvh2UN0o7y4WTZuCS2zKHUcHa6S7T/PFcH+G9aTaIjbuuSSskhVc8ZyvNbFFfgjwqct4nJHI8wea7rBK/wCIr8+fnkU3KT4oVJHmGpW7aUsj3ttdQR4/t1UT2xxnAaROO/qAarPtNg3O9eeeElxz6ZSvYulDJvik6cmVIkjI3qyEc7kbPB+VVTfB3wezMx0i2yxLHaZlGSc8KrgD8qcYryS510SVtU3N964D9lXceO/auwSIq6xpnBxjOCxHkxNMZ5BuAmtQec7SxwfU+I1IgS7LKQISmSd2XXj0AxVKBEsgorYk7slQOwUqSc++KcYGdgqkhRyxz6/KpSrIARsQD2Y/p4aiXt4mnwNLIsYUHHMhyWI4AAXJPtRKCrkUcj8Eh5baygeSV9scSlnZuTz2+p8qy91eXWsSMFRodOQ52v8A2k7jtuA9PIfue0G6v73UZVEsbLbrJujjaRN0j8DMi+vt5dh611kupoUaJIdrDlmEkZ2+wOe/7U074RnLjlhlnWANbQkggFGbgFQRyvHn6/ziIsQznIFcCWH/AJb857un+tdVeXA+6PlxlT+firaMaMZTJMZRRkk49s/5VKURqNxL+RyB5+2agiZx+FJc+qhMf/lTxJcNjwSepLEH/wCVapHO5FoskTAc8gj8WAacW2kbxgevlUCOWFQN0VwzYwxBVcn28VPMxwNsU5UZ/Ewx9csR+laJWZWTIBG8n4xgHjHJP5Cumsw293p/2fqHqJPDMgA8QK5OeaqWnuIxmPTnJ5OVuUXHPvRa7vjG7yaZdMTydk9uxOf/AHCspQ5s69PqJYpqce0dZfDLOWJXLZyeDyM8Gs/8SuItKnRcsLmRUyf4dn32efXFWZ1CZm3SaXfqTgkkxN/8xVNr999osXtoLK7G+4hM0k0JVI0UkkgqWGT+2ahOnya4eMsZfsrdEIMNwuBkTRv9HQDP6UdQforaTLnKXSbv1J/bFRtAlxJLEf4kf/8AzKkfua760o+yj1FyoH1D1U+I2freKSlBP9G60maOa1izvZkPhVXKggcjKgirP7WkcUpSNNxjkC4G5vwnnzrHfDdyXQQ7d7MoKDfs5AG4EkH3rXW+9ACLVB3B+94HHslcmSVOz8//AJfSvDqpLw+SrcKLjeAzh9j7hxjcoarJtRjtYGSMMLhkwp2fgJ53Hd5+lVepuwvJNqRDbHCuDKx7IPRRUPrSE4KJt4PLSNjAxXSoKVM+fcnFtHbdIdxJByfkc96H3p52En/FTDJK6gKYducDCvu/cU4NMSd5T/2pn6+Js/rW6Zk7I19C80R+6cPHl12+LnHIIyKot/sa1O5MKTKT/wBojA/fNUWo2vTczx5ELkbtuwbHPlgeRrpw5P8AEyyQ8mb1G1EJe4iX7onMiqPwMe5GPI1BgnNs4YZML9x5DPn/AK1oWxzlmIIxjIx+1U13brC+VQCB8YwBhH9OfI1tJV0ZxJyOGKyxHn1GD+da74f+JIkxY6mVQFisN1ggJn+CQDsPT/Tt55DNJbyYY5iPr2X248qsg6sFdDkZwDnvkfhasMuJZP7OnFkcHx0exN018DS24RlGGDjJB7Hk9qjvcC1cBJomQ8eKVTuPfGQawuhfEDac6QXKCWy3ePwq00GR+KMkZIHmM/rW6huknXqQLHLbtyksfMbE99m8YyOxGT/lXkzxuD5PRhPcdoru1fa28LltmCjsSx/7lBHNdDdqrbSkvJAVlhcqfq2KjhkTLoSxJO9d4zyO20H/ACro1ydgKRByCeoN21lX1AAOT7VlRrQ+VkcJuinO3DI46aOjezb8imhtT4xnHluNuT9SAP2qO95bqdpIC5fGY2YcHkeFeKcNS0wADrw8ADu4/TFHIUiba228JNIqKrAMFClXJPm+asCQMduaxyX+rygPLeTwRcqWV4kCkDdn7xGz6VVXvxFcwhxb67fSSqcMn2ZGX6P01FdUJJnPKDRvbi8gtw7yuFjjXfMzfhiTHBOOcnsBWH1S9v8AU5opVQRW8eTFHks3JyWbPmeM/LFZm513W7oFZrqdk3iTaScbwMBiAMVFOrakMAXkwxyMOQAe3FEsMpeSU68GwTFsgB5uGXxk4Ih78LgfiPnXIvnGMDHqCcVjzqV+TzeXBJz2lOTn15pjX9+cZurg5x/5rY/etYYdvkzmpS6NvFMiHcR6+QA/Wuq3KLg7GI7cYGf0NYZNU1aL8F1cjH/ezD8jkVIT4g1mPBNxvz/9WNGP6AVWxroXpt9s2QuoySBCGOCeSx/Linfa9ynMZAHAAJAx+VZAfEernDHoE9/FEefTgNj9KePiXVgytstSQwwOkwBOc4OGppS+CXgT/wAjVLcIB/ZPntny+XauqPHg+CRSR3AYD6DtWOHxHq4YsWhbvndECGJzkkA11/8AFOrEKClrxz+B/wAuHoe/4F9PBdyNaRuz4nIyMBtwJNEyNtIO9eDjAbAHasgfijVMHaloD5ExuSPkGfFRJNf1uTObx1B8oVSMf/1Gf1pbJs09OC8m3JXbvdGAx+KXcq/PxHFVtzd2LI6C5t/EroQJl7MpXyNY572ZzunZpj/6zyN/nXe31uSyD9CzshvxvaRJZDx6b3NQ8LNIpWcdGJivSp85HUjnsVyDzVrq6NJbug/EGV1AHfYDkD35qj08t/SFvIgJieZU3KMgtjkDbWm1CCeIaZNIqrFcyOEZiQAUdUy27Axzn6Upv20fpOi1OP6eDk/0Vvw7dNHIwDEGJ0mXHfGcMOP55r0yCRNqAOArAEHd5N615dHHp1pqE/Tv1YGV4oeluZZEc47iMgc428/7b2IxRxwDqEkRRBi+0sDtG4HbxXLNKSpnh/y2bFqVGUHyiNdQ3d1c3EwgfDudoK4O0eFf2rh9nulLL03BBwRgjkDJq4ikSQgLMAcjCnI5z2Ga6Skq6nAbcfF6AqAMg/z2rRZGlR8xLTJu2UJhuB/A2PI+RPzo4ulPMefQHbV6AheGWSAOzk4G3cO2OV7ZHkcVHvVjQkwXIjMpEg3wRzx4BAx5EeeOf2p+qxLTIrds7DxRSZ7jgf5UXt2nikiZZAHUrwFOD3BGanBZHAaLaY/EoOcMR75447Gue/acEYIHOeDx9afqND+mi+DLPpmsBmAs5n2kjKhDnHoAc/pTJNJ1uRGRtKvyjDxYgfgHzyK14uGV43BPhIIwOQfWnm5mfOZnI5JPY598V0/WS6aMHoV4Z5xLoWvxuYf6K1B17jbA27n1H8/rSg0j4jgO06RqDJzt/qznafNT/lXoqTMDgO5JbjJ5z75qQizjLN/EMjccgn2K8io+qkivpF8nnp0zWe506+U4wC0LA/JgastGb4v0yWTZp1xLC7B2hJQKynHbe2QRzW1kuXTpCTqpuzySGDAYJDAHP6VHkIkkzCXSUbVaJ1Kt4vNS/wCx/wCc553PtFwwbfIY74SoH6WyRtqlHXEkZI3bZVIyP570f6TKnAUYQhjydx8u3HFcvA0u5kCTRx9IswkLbQ2djbf4fTOcdx6Hn9plVjE8Ue8Kr926RQ52kNg5Hof9MDnN18HRr0KxmUwB8AzpKWVXQeHL4BIPbkA+4PlMXUIWVTtm5APh6RXkeR6g4+lcFe3YAlVV2LYO0Yx+Wcn3Fdhb5AOwnPOcv/lxUtWPoz5jjOA3UZyAFG4nKnjw8E+w4qQ6QwIqsv8AWM5kVnIWEcYRivO71Hl6+VdbZUh+9kAadRgSHGyAfhATA8T/ALfrXMrEXkSKOWQkBmLlsEtgBvD9TzRYzjEEZmJt4tpBC4Mp5IPPL5ppjt9p3RhmyAOHCl2JAGSfY/l71LMM56W2GKJl5DbvHhgdwzn+c1zm+2IkMGXO15JSe6qAuASxG0Ac/nTtsENjt7WTeJIcQoUMmxfvG/uxoxHc/wC9RHhsjvLWcPBwqjkKBxg4xk81YzpPiFNylY41K9MqSzOMszE8ZP7ceVRltbgqZDG2A3ixgMMeZB45pqTGkiM1pYMC32K2C8KVXdG2fUBG5ribHTyQRZKDgdQB5nPBwSOasVgvTgICrEh4yN+S2M+HHApghuXeNE/E3mzYwM48RzT3Me1EddE0fMM8dtJcNKCWjWXdEEbKg4bA/Suh0PRQzlrW28OYwY5JB4/4jw3l2/OrG0iuIpHadlMawthUcsOGChSq+Xf5d/l1djIqKu1SS7FmBVyPTd7fKjfL5JcYrwUp+HNJb8HVQ9iySsfriTNRpPhaAkmK9ce0saMR9VIrTdMjYNy7tqBlDHCgKWZju9ePP19KbbhS8hnVDGWbpr5ccAOee/mcef5tZZLpk7IvwZB/ha87xXNtIp7bg6H9N1RZPhvWkyVhjceRjlTn6PtrcrvwW2Ksg2htxQgNkeED0/1pwh/CpBG9u+ezZ5xnI5/yq1qJol4onnEmkavHnfY3HGeQu4ce6E1DktbhRl4JlA82jkA/UV6e0bqzsqse7jDqfDyo25H1xSSEqc7ywBGO/iYAHgE/nxVfUP4D0UYDSbfWoriKa1sHVItrxbgkUWc5JPWZWJPcnNb2WK1mnmu3jWWXaNhMcZljQqPASTjHyP8Au8w7zIghyEKoOQxnZmwCCwHbvjFHCpe3CpLunKwG6hUDoxnpDaqcAdgD9a55S3uzphJxVHLbMWMcMAUlSGbCEADBxkjv9K7w25iDCSJWJIOd2QMeRGMU7fNvAiQhQ7H7xDtIAySCpJzzxR3MZQ5LjOGbMUgYkZOAe/n58c1NFubrgeoAfIVQzhcKAMkj3FGXcInI7rscAkDJHh25Prk0kWYXEStgwiFd5uGGdrfiwq+ZPnxx+VcmVurNHI26IzyQRmfxjobF2Mqn0P5496ozbOoLFFVkYkMrjuhGex3d8jz+VGaKKRFRVB2bhtYlUk3DxMwTzBAwa4WUxltoc5BwVcZLFZASrAnJ7EGpe1fNu3rQIrTZ3ZIA6GzcAAzF9gPGfEM/Ok1reYwCjYJI2qAefPJ/arNfTdz7mizBeMH6f60wsq1tb0KAEYkZyd64Ptj/AHo/Zbz+KLzGDkeVWXVX1wfXHIoiQjnORSthZWfY7tuQi4zzuYVJiTUEjVCqOoxtV3AKc9sqM/rUkyZ/PzpFjtPf2x5UWybIUltdyuXYQjsBulLcDsCNtOW3ul2gdNAFy2x8N1M54dVz+9SgVOPXnvThIO3HPHHnQLcVhivFfeGi352ENJubK/3gAa7ywTSZM6xhU4h6e/fGp5I8XYe2a7zwxygsPxjsAdof/tcj9/8AKm27wMXyHRkZkZG/FHIOSvbP8+hpWK7IEkVzAivIHEQDMSBuweByRziuPgODzzz+B/8AWr3dtGwjKnJOQD3H5VG+xaceTCufPErAfQUWNOijDXSqp3zhD4Vy5A7Z5A867iRkRQUuQXBG+O4Zc+hxjFKlTYIReberRpJtRAJBNJJLknuTyAB6Y/4RvJ2UxkKI2QgiHfljjPLsxP8AP0pUqQAihneQKrAuFDYUsoOF3NncfzqULW4JCgNhWO0glgQFzxznHIA4pUqBnOQXiAAySqxLoV3sGUA9mIPnXONZpgQyliC20knkDvwfOlSpgxiQXCSr0g4dn2AKfxGRgFBI5qVLHdSTGO2JUQ70LuwOdh27u3GcDilSpWA2O2vHG95WjU+HGAXc+hA7D613jtnRs/aGkA46bAbeefHilSoE2dDbE7nLS7TkbVO1Pxeq4OfLvSFvAVwAx2+bs7HxZOBzSpUAmHpRqqgxtzlsEnkduWJofZ4yXkaOQ5IVCPDgYA8WDz7cUqVA7AIIgpVFlAPizI75Yr2/i/KmC0ZnDqrdF1HWAbkbfEAhIzz86VKmFtDXjhjaaaV5oII9iLtiyd/nvZiy498dqlRxgo8iSMUYCWIxhVJYjGeoATjk+VKlSByZyiilfcjx+KHbt6Y5wQfrk9zzTpYGJbgiNNoYYbajFQ3iPv3+tKlTEmG1iCSzIni62LleQc5AjcjHuM/WpZjBBG185x7UqVAA6Uh5IIxjPyodJ/QedKlQFgEeODtz68UiIx/Go+o5pUqAsaNgH9rEc4/iHb04o9WDt1oR/wC9aVKgBpktmICzwsSewbJz6Vy69gDg3cAYcHLDJ9qVKpsaQPtdghObuAD03Hv+VO+1ac7A/a4Q7bVjGTkt2AzilSoHSEt7p0gJS7h3I7q6sSGVoztZGDDuKeLzTsD+t2vYd2OaVKkKkf/Z',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              image:
                                                                  const DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image:
                                                                    CachedNetworkImageProvider(
                                                                  'data:image/jpeg;base64,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',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              image:
                                                                  const DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image:
                                                                    CachedNetworkImageProvider(
                                                                  'https://th.bing.com/th/id/OIP.m0AboaMyhcnHqQCOf4odKAHaEK?w=224&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(
                                                    thickness: 0.5,
                                                    indent: 10.0,
                                                    endIndent: 10.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                    ].addToEnd(const SizedBox(height: 30.0)),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
