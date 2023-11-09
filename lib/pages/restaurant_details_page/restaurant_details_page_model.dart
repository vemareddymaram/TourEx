import '/components/review_bar_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'restaurant_details_page_widget.dart' show RestaurantDetailsPageWidget;
import 'package:flutter/material.dart';

class RestaurantDetailsPageModel
    extends FlutterFlowModel<RestaurantDetailsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
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
    reviewBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
