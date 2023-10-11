import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rating_bar_model.dart';
export 'rating_bar_model.dart';

class RatingBarWidget extends StatefulWidget {
  const RatingBarWidget({Key? key}) : super(key: key);

  @override
  _RatingBarWidgetState createState() => _RatingBarWidgetState();
}

class _RatingBarWidgetState extends State<RatingBarWidget> {
  late RatingBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingBarModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              Navigator.pop(context);
            },
            child: SizedBox(
              width: 50.0,
              child: Divider(
                thickness: 2.5,
                color: FlutterFlowTheme.of(context).accent1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              child: TextFormField(
                controller: _model.textController,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.textController',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelStyle: FlutterFlowTheme.of(context).labelMedium,
                  hintText: 'Write your review here.....',
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Outfit',
                        fontSize: 14.0,
                        letterSpacing: 2.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).accent1,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                  suffixIcon: _model.textController!.text.isNotEmpty
                      ? InkWell(
                          onTap: () async {
                            _model.textController?.clear();
                            setState(() {});
                          },
                          child: Icon(
                            Icons.clear,
                            color: FlutterFlowTheme.of(context).accent1,
                            size: 25.0,
                          ),
                        )
                      : null,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                maxLines: 5,
                minLines: 2,
                validator: _model.textControllerValidator.asValidator(context),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: RatingBar.builder(
              onRatingUpdate: (newValue) =>
                  setState(() => _model.ratingBarValue = newValue),
              itemBuilder: (context, index) => Icon(
                Icons.star_rounded,
                color: FlutterFlowTheme.of(context).tertiary,
              ),
              direction: Axis.horizontal,
              initialRating: _model.ratingBarValue ??= 3.0,
              unratedColor: FlutterFlowTheme.of(context).accent3,
              itemCount: 5,
              itemPadding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              itemSize: 30.0,
              glowColor: FlutterFlowTheme.of(context).tertiary,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                await AppReviewRecord.collection.doc().set({
                  ...createAppReviewRecordData(
                    appReviewId: random_data.randomString(
                      1,
                      10,
                      true,
                      false,
                      false,
                    ),
                    appComment: _model.textController.text,
                    rating: _model.ratingBarValue,
                    ratingBar: _model.ratingBarValue,
                    userId: currentUserReference,
                  ),
                  ...mapToFirestore(
                    {
                      'created_at': FieldValue.serverTimestamp(),
                    },
                  ),
                });
              },
              text: 'Submit',
              options: FFButtonOptions(
                width: 180.0,
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      letterSpacing: 2.0,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
