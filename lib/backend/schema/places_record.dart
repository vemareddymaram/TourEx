import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlacesRecord extends FirestoreRecord {
  PlacesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "place_is_favorite" field.
  bool? _placeIsFavorite;
  bool get placeIsFavorite => _placeIsFavorite ?? false;
  bool hasPlaceIsFavorite() => _placeIsFavorite != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "place_country_name" field.
  String? _placeCountryName;
  String get placeCountryName => _placeCountryName ?? '';
  bool hasPlaceCountryName() => _placeCountryName != null;

  // "place_description" field.
  String? _placeDescription;
  String get placeDescription => _placeDescription ?? '';
  bool hasPlaceDescription() => _placeDescription != null;

  // "place_id" field.
  String? _placeId;
  String get placeId => _placeId ?? '';
  bool hasPlaceId() => _placeId != null;

  // "place_image_urls" field.
  List<String>? _placeImageUrls;
  List<String> get placeImageUrls => _placeImageUrls ?? const [];
  bool hasPlaceImageUrls() => _placeImageUrls != null;

  // "place_location" field.
  LatLng? _placeLocation;
  LatLng? get placeLocation => _placeLocation;
  bool hasPlaceLocation() => _placeLocation != null;

  // "place_name" field.
  String? _placeName;
  String get placeName => _placeName ?? '';
  bool hasPlaceName() => _placeName != null;

  // "place_ratings" field.
  double? _placeRatings;
  double get placeRatings => _placeRatings ?? 0.0;
  bool hasPlaceRatings() => _placeRatings != null;

  // "place_region_name" field.
  String? _placeRegionName;
  String get placeRegionName => _placeRegionName ?? '';
  bool hasPlaceRegionName() => _placeRegionName != null;

  // "place_state_name" field.
  String? _placeStateName;
  String get placeStateName => _placeStateName ?? '';
  bool hasPlaceStateName() => _placeStateName != null;

  // "place_open_text" field.
  String? _placeOpenText;
  String get placeOpenText => _placeOpenText ?? '';
  bool hasPlaceOpenText() => _placeOpenText != null;

  // "place_open_time" field.
  String? _placeOpenTime;
  String get placeOpenTime => _placeOpenTime ?? '';
  bool hasPlaceOpenTime() => _placeOpenTime != null;

  // "place_close_text" field.
  String? _placeCloseText;
  String get placeCloseText => _placeCloseText ?? '';
  bool hasPlaceCloseText() => _placeCloseText != null;

  // "place_close_time" field.
  String? _placeCloseTime;
  String get placeCloseTime => _placeCloseTime ?? '';
  bool hasPlaceCloseTime() => _placeCloseTime != null;

  // "latitude" field.
  String? _latitude;
  String get latitude => _latitude ?? '';
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  String? _longitude;
  String get longitude => _longitude ?? '';
  bool hasLongitude() => _longitude != null;

  void _initializeFields() {
    _placeIsFavorite = snapshotData['place_is_favorite'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _placeCountryName = snapshotData['place_country_name'] as String?;
    _placeDescription = snapshotData['place_description'] as String?;
    _placeId = snapshotData['place_id'] as String?;
    _placeImageUrls = getDataList(snapshotData['place_image_urls']);
    _placeLocation = snapshotData['place_location'] as LatLng?;
    _placeName = snapshotData['place_name'] as String?;
    _placeRatings = castToType<double>(snapshotData['place_ratings']);
    _placeRegionName = snapshotData['place_region_name'] as String?;
    _placeStateName = snapshotData['place_state_name'] as String?;
    _placeOpenText = snapshotData['place_open_text'] as String?;
    _placeOpenTime = snapshotData['place_open_time'] as String?;
    _placeCloseText = snapshotData['place_close_text'] as String?;
    _placeCloseTime = snapshotData['place_close_time'] as String?;
    _latitude = snapshotData['latitude'] as String?;
    _longitude = snapshotData['longitude'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('places');

  static Stream<PlacesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlacesRecord.fromSnapshot(s));

  static Future<PlacesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlacesRecord.fromSnapshot(s));

  static PlacesRecord fromSnapshot(DocumentSnapshot snapshot) => PlacesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlacesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlacesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlacesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlacesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlacesRecordData({
  bool? placeIsFavorite,
  DateTime? createdAt,
  String? placeCountryName,
  String? placeDescription,
  String? placeId,
  LatLng? placeLocation,
  String? placeName,
  double? placeRatings,
  String? placeRegionName,
  String? placeStateName,
  String? placeOpenText,
  String? placeOpenTime,
  String? placeCloseText,
  String? placeCloseTime,
  String? latitude,
  String? longitude,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'place_is_favorite': placeIsFavorite,
      'created_at': createdAt,
      'place_country_name': placeCountryName,
      'place_description': placeDescription,
      'place_id': placeId,
      'place_location': placeLocation,
      'place_name': placeName,
      'place_ratings': placeRatings,
      'place_region_name': placeRegionName,
      'place_state_name': placeStateName,
      'place_open_text': placeOpenText,
      'place_open_time': placeOpenTime,
      'place_close_text': placeCloseText,
      'place_close_time': placeCloseTime,
      'latitude': latitude,
      'longitude': longitude,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlacesRecordDocumentEquality implements Equality<PlacesRecord> {
  const PlacesRecordDocumentEquality();

  @override
  bool equals(PlacesRecord? e1, PlacesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.placeIsFavorite == e2?.placeIsFavorite &&
        e1?.createdAt == e2?.createdAt &&
        e1?.placeCountryName == e2?.placeCountryName &&
        e1?.placeDescription == e2?.placeDescription &&
        e1?.placeId == e2?.placeId &&
        listEquality.equals(e1?.placeImageUrls, e2?.placeImageUrls) &&
        e1?.placeLocation == e2?.placeLocation &&
        e1?.placeName == e2?.placeName &&
        e1?.placeRatings == e2?.placeRatings &&
        e1?.placeRegionName == e2?.placeRegionName &&
        e1?.placeStateName == e2?.placeStateName &&
        e1?.placeOpenText == e2?.placeOpenText &&
        e1?.placeOpenTime == e2?.placeOpenTime &&
        e1?.placeCloseText == e2?.placeCloseText &&
        e1?.placeCloseTime == e2?.placeCloseTime &&
        e1?.latitude == e2?.latitude &&
        e1?.longitude == e2?.longitude;
  }

  @override
  int hash(PlacesRecord? e) => const ListEquality().hash([
        e?.placeIsFavorite,
        e?.createdAt,
        e?.placeCountryName,
        e?.placeDescription,
        e?.placeId,
        e?.placeImageUrls,
        e?.placeLocation,
        e?.placeName,
        e?.placeRatings,
        e?.placeRegionName,
        e?.placeStateName,
        e?.placeOpenText,
        e?.placeOpenTime,
        e?.placeCloseText,
        e?.placeCloseTime,
        e?.latitude,
        e?.longitude
      ]);

  @override
  bool isValidKey(Object? o) => o is PlacesRecord;
}
