// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlacesStruct extends FFFirebaseStruct {
  PlacesStruct({
    String? name,
    double? rating,
    String? image,
    LatLng? location,
    bool? isFavorite,
    String? description,
    String? address,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _rating = rating,
        _image = image,
        _location = location,
        _isFavorite = isFavorite,
        _description = description,
        _address = address,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;
  void incrementRating(double amount) => _rating = rating + amount;
  bool hasRating() => _rating != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  set location(LatLng? val) => _location = val;
  bool hasLocation() => _location != null;

  // "is_favorite" field.
  bool? _isFavorite;
  bool get isFavorite => _isFavorite ?? false;
  set isFavorite(bool? val) => _isFavorite = val;
  bool hasIsFavorite() => _isFavorite != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  static PlacesStruct fromMap(Map<String, dynamic> data) => PlacesStruct(
        name: data['name'] as String?,
        rating: castToType<double>(data['rating']),
        image: data['image'] as String?,
        location: data['location'] as LatLng?,
        isFavorite: data['is_favorite'] as bool?,
        description: data['description'] as String?,
        address: data['address'] as String?,
      );

  static PlacesStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PlacesStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'rating': _rating,
        'image': _image,
        'location': _location,
        'is_favorite': _isFavorite,
        'description': _description,
        'address': _address,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.LatLng,
        ),
        'is_favorite': serializeParam(
          _isFavorite,
          ParamType.bool,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
      }.withoutNulls;

  static PlacesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlacesStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.LatLng,
          false,
        ),
        isFavorite: deserializeParam(
          data['is_favorite'],
          ParamType.bool,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PlacesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlacesStruct &&
        name == other.name &&
        rating == other.rating &&
        image == other.image &&
        location == other.location &&
        isFavorite == other.isFavorite &&
        description == other.description &&
        address == other.address;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, rating, image, location, isFavorite, description, address]);
}

PlacesStruct createPlacesStruct({
  String? name,
  double? rating,
  String? image,
  LatLng? location,
  bool? isFavorite,
  String? description,
  String? address,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlacesStruct(
      name: name,
      rating: rating,
      image: image,
      location: location,
      isFavorite: isFavorite,
      description: description,
      address: address,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlacesStruct? updatePlacesStruct(
  PlacesStruct? places, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    places
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlacesStructData(
  Map<String, dynamic> firestoreData,
  PlacesStruct? places,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (places == null) {
    return;
  }
  if (places.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && places.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final placesData = getPlacesFirestoreData(places, forFieldValue);
  final nestedData = placesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = places.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlacesFirestoreData(
  PlacesStruct? places, [
  bool forFieldValue = false,
]) {
  if (places == null) {
    return {};
  }
  final firestoreData = mapToFirestore(places.toMap());

  // Add any Firestore field values
  places.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlacesListFirestoreData(
  List<PlacesStruct>? placess,
) =>
    placess?.map((e) => getPlacesFirestoreData(e, true)).toList() ?? [];
