import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestaurantsRecord extends FirestoreRecord {
  RestaurantsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "place_location" field.
  DocumentReference? _placeLocation;
  DocumentReference? get placeLocation => _placeLocation;
  bool hasPlaceLocation() => _placeLocation != null;

  // "place_name" field.
  DocumentReference? _placeName;
  DocumentReference? get placeName => _placeName;
  bool hasPlaceName() => _placeName != null;

  // "restaurant_description" field.
  String? _restaurantDescription;
  String get restaurantDescription => _restaurantDescription ?? '';
  bool hasRestaurantDescription() => _restaurantDescription != null;

  // "restaurant_id" field.
  String? _restaurantId;
  String get restaurantId => _restaurantId ?? '';
  bool hasRestaurantId() => _restaurantId != null;

  // "restaurant_image_urls" field.
  List<String>? _restaurantImageUrls;
  List<String> get restaurantImageUrls => _restaurantImageUrls ?? const [];
  bool hasRestaurantImageUrls() => _restaurantImageUrls != null;

  // "restaurant_location" field.
  LatLng? _restaurantLocation;
  LatLng? get restaurantLocation => _restaurantLocation;
  bool hasRestaurantLocation() => _restaurantLocation != null;

  // "restaurant_name" field.
  String? _restaurantName;
  String get restaurantName => _restaurantName ?? '';
  bool hasRestaurantName() => _restaurantName != null;

  // "restaurant_ratings" field.
  double? _restaurantRatings;
  double get restaurantRatings => _restaurantRatings ?? 0.0;
  bool hasRestaurantRatings() => _restaurantRatings != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _placeLocation = snapshotData['place_location'] as DocumentReference?;
    _placeName = snapshotData['place_name'] as DocumentReference?;
    _restaurantDescription = snapshotData['restaurant_description'] as String?;
    _restaurantId = snapshotData['restaurant_id'] as String?;
    _restaurantImageUrls = getDataList(snapshotData['restaurant_image_urls']);
    _restaurantLocation = snapshotData['restaurant_location'] as LatLng?;
    _restaurantName = snapshotData['restaurant_name'] as String?;
    _restaurantRatings = castToType<double>(snapshotData['restaurant_ratings']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurants');

  static Stream<RestaurantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestaurantsRecord.fromSnapshot(s));

  static Future<RestaurantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestaurantsRecord.fromSnapshot(s));

  static RestaurantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestaurantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestaurantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestaurantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestaurantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestaurantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestaurantsRecordData({
  DateTime? createdAt,
  DocumentReference? placeLocation,
  DocumentReference? placeName,
  String? restaurantDescription,
  String? restaurantId,
  LatLng? restaurantLocation,
  String? restaurantName,
  double? restaurantRatings,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'place_location': placeLocation,
      'place_name': placeName,
      'restaurant_description': restaurantDescription,
      'restaurant_id': restaurantId,
      'restaurant_location': restaurantLocation,
      'restaurant_name': restaurantName,
      'restaurant_ratings': restaurantRatings,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestaurantsRecordDocumentEquality implements Equality<RestaurantsRecord> {
  const RestaurantsRecordDocumentEquality();

  @override
  bool equals(RestaurantsRecord? e1, RestaurantsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdAt == e2?.createdAt &&
        e1?.placeLocation == e2?.placeLocation &&
        e1?.placeName == e2?.placeName &&
        e1?.restaurantDescription == e2?.restaurantDescription &&
        e1?.restaurantId == e2?.restaurantId &&
        listEquality.equals(e1?.restaurantImageUrls, e2?.restaurantImageUrls) &&
        e1?.restaurantLocation == e2?.restaurantLocation &&
        e1?.restaurantName == e2?.restaurantName &&
        e1?.restaurantRatings == e2?.restaurantRatings;
  }

  @override
  int hash(RestaurantsRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.placeLocation,
        e?.placeName,
        e?.restaurantDescription,
        e?.restaurantId,
        e?.restaurantImageUrls,
        e?.restaurantLocation,
        e?.restaurantName,
        e?.restaurantRatings
      ]);

  @override
  bool isValidKey(Object? o) => o is RestaurantsRecord;
}
