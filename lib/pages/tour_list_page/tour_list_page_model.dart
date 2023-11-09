import '/flutter_flow/flutter_flow_util.dart';
import 'tour_list_page_widget.dart' show TourListPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class TourListPageModel extends FlutterFlowModel<TourListPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
