import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'place_info_model.dart';
export 'place_info_model.dart';

class PlaceInfoWidget extends StatefulWidget {
  const PlaceInfoWidget({
    Key? key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
  }) : super(key: key);

  final dynamic parameter1;
  final dynamic parameter2;
  final dynamic parameter3;

  @override
  _PlaceInfoWidgetState createState() => _PlaceInfoWidgetState();
}

class _PlaceInfoWidgetState extends State<PlaceInfoWidget> {
  late PlaceInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaceInfoModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 0.0),
      child: FutureBuilder<ApiCallResponse>(
        future: TravelAdvisorAPIGroup.attractionsListAPIDepracatedCall.call(),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitChasingDots(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            );
          }
          final containerAttractionsListAPIDepracatedResponse = snapshot.data!;
          return InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.goNamed('PlaceDescription');

              await PlacesRecord.collection.doc().set({
                ...createPlacesRecordData(
                  placeIsFavorite: FFAppState().favorite,
                  placeCountryName: getJsonField(
                    containerAttractionsListAPIDepracatedResponse.jsonBody,
                    r'''$.data[:].address_obj.country''',
                  ).toString(),
                  placeDescription: getJsonField(
                    containerAttractionsListAPIDepracatedResponse.jsonBody,
                    r'''$.data[:].description''',
                  ).toString(),
                  placeId: getJsonField(
                    containerAttractionsListAPIDepracatedResponse.jsonBody,
                    r'''$.data[:].location_id''',
                  ).toString(),
                  placeName: widget.parameter1?.toString(),
                  placeRatings: widget.parameter2,
                  placeRegionName: getJsonField(
                    containerAttractionsListAPIDepracatedResponse.jsonBody,
                    r'''$.data[:].address_obj.city''',
                  ).toString(),
                  placeStateName: getJsonField(
                    containerAttractionsListAPIDepracatedResponse.jsonBody,
                    r'''$.data[:].address_obj.state''',
                  ).toString(),
                  placeOpenText: getJsonField(
                    containerAttractionsListAPIDepracatedResponse.jsonBody,
                    r'''$.data[:].open_now_text''',
                  ).toString(),
                  placeOpenTime: getJsonField(
                    containerAttractionsListAPIDepracatedResponse.jsonBody,
                    r'''$.data[:].hours.week_ranges[:][:].open_time''',
                  ).toString(),
                  placeCloseTime: getJsonField(
                    containerAttractionsListAPIDepracatedResponse.jsonBody,
                    r'''$.data[:].hours.week_ranges[:][:].close_time''',
                  ).toString(),
                ),
                ...mapToFirestore(
                  {
                    'created_at': FieldValue.serverTimestamp(),
                    'place_image_urls': [widget.parameter3],
                  },
                ),
              });
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 180.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: CachedNetworkImageProvider(
                    widget.parameter3!,
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
                alignment: AlignmentDirectional(0.00, 1.00),
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
                        width: 270.0,
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
                              alignment: AlignmentDirectional(-1.00, 0.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  widget.parameter1!.toString(),
                                  maxLines: 2,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Bevan',
                                        fontSize: 14.0,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.00, 1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 280.0,
                                  height: 22.0,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 105.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1.00, 0.00),
                                          child: RatingBar.builder(
                                            onRatingUpdate: (newValue) =>
                                                setState(() => _model
                                                    .ratingBarValue = newValue),
                                            itemBuilder: (context, index) =>
                                                Icon(
                                              Icons.star_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                            ),
                                            direction: Axis.horizontal,
                                            initialRating:
                                                _model.ratingBarValue ??=
                                                    widget.parameter2!,
                                            unratedColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent3,
                                            itemCount: 5,
                                            itemSize: 20.0,
                                            glowColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiary,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.parameter2!.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
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
                              25.0, 0.0, 0.0, 0.0),
                          child: ToggleIcon(
                            onPressed: () async {
                              setState(() => FFAppState().favorite =
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
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
