import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'fav_rating_bar_model.dart';
export 'fav_rating_bar_model.dart';

class FavRatingBarWidget extends StatefulWidget {
  const FavRatingBarWidget({
    super.key,
    this.parameter1,
  });

  final double? parameter1;

  @override
  _FavRatingBarWidgetState createState() => _FavRatingBarWidgetState();
}

class _FavRatingBarWidgetState extends State<FavRatingBarWidget> {
  late FavRatingBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavRatingBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return RatingBar.builder(
      onRatingUpdate: (newValue) =>
          setState(() => _model.favRatingBarValue = newValue),
      itemBuilder: (context, index) => Icon(
        Icons.star_rounded,
        color: FlutterFlowTheme.of(context).tertiary,
      ),
      direction: Axis.horizontal,
      initialRating: _model.favRatingBarValue ??= widget.parameter1!,
      unratedColor: FlutterFlowTheme.of(context).accent3,
      itemCount: 5,
      itemSize: 25.0,
      glowColor: FlutterFlowTheme.of(context).tertiary,
    );
  }
}
