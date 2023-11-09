import '/components/review_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'hotels_details_page_widget.dart' show HotelsDetailsPageWidget;
import 'package:flutter/material.dart';

class HotelsDetailsPageModel extends FlutterFlowModel<HotelsDetailsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for reviewBar component.
  late ReviewBarModel reviewBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    reviewBarModel = createModel(context, () => ReviewBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    reviewBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
