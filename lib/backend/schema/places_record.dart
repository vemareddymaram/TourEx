import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PlacesRecord extends FirestoreRecord {
  PlacesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "latitude" field.
  String? _latitude;
  String get latitude => _latitude ?? '';
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  String? _longitude;
  String get longitude => _longitude ?? '';
  bool hasLongitude() => _longitude != null;

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

  // "place_is_favorite" field.
  bool? _placeIsFavorite;
  bool get placeIsFavorite => _placeIsFavorite ?? false;
  bool hasPlaceIsFavorite() => _placeIsFavorite != null;

  // "place_name" field.
  String? _placeName;
  String get placeName => _placeName ?? '';
  bool hasPlaceName() => _placeName != null;

  // "place_open_text" field.
  String? _placeOpenText;
  String get placeOpenText => _placeOpenText ?? '';
  bool hasPlaceOpenText() => _placeOpenText != null;

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

  // "place_location" field.
  String? _placeLocation;
  String get placeLocation => _placeLocation ?? '';
  bool hasPlaceLocation() => _placeLocation != null;

  // "placeLocationLatLng" field.
  LatLng? _placeLocationLatLng;
  LatLng? get placeLocationLatLng => _placeLocationLatLng;
  bool hasPlaceLocationLatLng() => _placeLocationLatLng != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _latitude = snapshotData['latitude'] as String?;
    _longitude = snapshotData['longitude'] as String?;
    _placeCountryName = snapshotData['place_country_name'] as String?;
    _placeDescription = snapshotData['place_description'] as String?;
    _placeId = snapshotData['place_id'] as String?;
    _placeImageUrls = getDataList(snapshotData['place_image_urls']);
    _placeIsFavorite = snapshotData['place_is_favorite'] as bool?;
    _placeName = snapshotData['place_name'] as String?;
    _placeOpenText = snapshotData['place_open_text'] as String?;
    _placeRatings = castToType<double>(snapshotData['place_ratings']);
    _placeRegionName = snapshotData['place_region_name'] as String?;
    _placeStateName = snapshotData['place_state_name'] as String?;
    _placeLocation = snapshotData['place_location'] as String?;
    _placeLocationLatLng = snapshotData['placeLocationLatLng'] as LatLng?;
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
  DateTime? createdAt,
  String? latitude,
  String? longitude,
  String? placeCountryName,
  String? placeDescription,
  String? placeId,
  bool? placeIsFavorite,
  String? placeName,
  String? placeOpenText,
  double? placeRatings,
  String? placeRegionName,
  String? placeStateName,
  String? placeLocation,
  LatLng? placeLocationLatLng,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'latitude': latitude,
      'longitude': longitude,
      'place_country_name': placeCountryName,
      'place_description': placeDescription,
      'place_id': placeId,
      'place_is_favorite': placeIsFavorite,
      'place_name': placeName,
      'place_open_text': placeOpenText,
      'place_ratings': placeRatings,
      'place_region_name': placeRegionName,
      'place_state_name': placeStateName,
      'place_location': placeLocation,
      'placeLocationLatLng': placeLocationLatLng,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlacesRecordDocumentEquality implements Equality<PlacesRecord> {
  const PlacesRecordDocumentEquality();

  @override
  bool equals(PlacesRecord? e1, PlacesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdAt == e2?.createdAt &&
        e1?.latitude == e2?.latitude &&
        e1?.longitude == e2?.longitude &&
        e1?.placeCountryName == e2?.placeCountryName &&
        e1?.placeDescription == e2?.placeDescription &&
        e1?.placeId == e2?.placeId &&
        listEquality.equals(e1?.placeImageUrls, e2?.placeImageUrls) &&
        e1?.placeIsFavorite == e2?.placeIsFavorite &&
        e1?.placeName == e2?.placeName &&
        e1?.placeOpenText == e2?.placeOpenText &&
        e1?.placeRatings == e2?.placeRatings &&
        e1?.placeRegionName == e2?.placeRegionName &&
        e1?.placeStateName == e2?.placeStateName &&
        e1?.placeLocation == e2?.placeLocation &&
        e1?.placeLocationLatLng == e2?.placeLocationLatLng;
  }

  @override
  int hash(PlacesRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.latitude,
        e?.longitude,
        e?.placeCountryName,
        e?.placeDescription,
        e?.placeId,
        e?.placeImageUrls,
        e?.placeIsFavorite,
        e?.placeName,
        e?.placeOpenText,
        e?.placeRatings,
        e?.placeRegionName,
        e?.placeStateName,
        e?.placeLocation,
        e?.placeLocationLatLng
      ]);

  @override
  bool isValidKey(Object? o) => o is PlacesRecord;
}
