import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'similar_plc_rtng_bar_model.dart';
export 'similar_plc_rtng_bar_model.dart';

class SimilarPlcRtngBarWidget extends StatefulWidget {
  const SimilarPlcRtngBarWidget({
    super.key,
    this.parameter1,
  });

  final double? parameter1;

  @override
  _SimilarPlcRtngBarWidgetState createState() =>
      _SimilarPlcRtngBarWidgetState();
}

class _SimilarPlcRtngBarWidgetState extends State<SimilarPlcRtngBarWidget> {
  late SimilarPlcRtngBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SimilarPlcRtngBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.00, 1.00),
      child: RatingBar.builder(
        onRatingUpdate: (newValue) =>
            setState(() => _model.ratingBarValue = newValue),
        itemBuilder: (context, index) => Icon(
          Icons.star_rounded,
          color: FlutterFlowTheme.of(context).customColor3,
        ),
        direction: Axis.horizontal,
        initialRating: _model.ratingBarValue ??= widget.parameter1!,
        unratedColor: FlutterFlowTheme.of(context).accent3,
        itemCount: 5,
        itemSize: 20.0,
        glowColor: FlutterFlowTheme.of(context).customColor3,
      ),
    );
  }
}
