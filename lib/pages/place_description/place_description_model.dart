import '/components/review_bar_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'place_description_widget.dart' show PlaceDescriptionWidget;
import 'package:flutter/material.dart';

class PlaceDescriptionModel extends FlutterFlowModel<PlaceDescriptionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
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
    tabBarController?.dispose();
    reviewBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
