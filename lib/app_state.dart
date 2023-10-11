import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _startDate = await secureStorage.getString('ff_startDate') ?? _startDate;
    });
    await _safeInitAsync(() async {
      _endDate = await secureStorage.getString('ff_endDate') ?? _endDate;
    });
    await _safeInitAsync(() async {
      _like = await secureStorage.getBool('ff_like') ?? _like;
    });
    await _safeInitAsync(() async {
      _dislike = await secureStorage.getBool('ff_dislike') ?? _dislike;
    });
    await _safeInitAsync(() async {
      _userProfile =
          await secureStorage.getString('ff_userProfile') ?? _userProfile;
    });
    await _safeInitAsync(() async {
      _places = (await secureStorage.getStringList('ff_places'))
              ?.map((path) => path.ref)
              .toList() ??
          _places;
    });
    await _safeInitAsync(() async {
      _favorites = (await secureStorage.getStringList('ff_favorites'))
              ?.map((path) => path.ref)
              .toList() ??
          _favorites;
    });
    await _safeInitAsync(() async {
      _favorite = await secureStorage.getBool('ff_favorite') ?? _favorite;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _startDate = '';
  String get startDate => _startDate;
  set startDate(String _value) {
    _startDate = _value;
    secureStorage.setString('ff_startDate', _value);
  }

  void deleteStartDate() {
    secureStorage.delete(key: 'ff_startDate');
  }

  String _endDate = '';
  String get endDate => _endDate;
  set endDate(String _value) {
    _endDate = _value;
    secureStorage.setString('ff_endDate', _value);
  }

  void deleteEndDate() {
    secureStorage.delete(key: 'ff_endDate');
  }

  bool _like = false;
  bool get like => _like;
  set like(bool _value) {
    _like = _value;
    secureStorage.setBool('ff_like', _value);
  }

  void deleteLike() {
    secureStorage.delete(key: 'ff_like');
  }

  bool _dislike = false;
  bool get dislike => _dislike;
  set dislike(bool _value) {
    _dislike = _value;
    secureStorage.setBool('ff_dislike', _value);
  }

  void deleteDislike() {
    secureStorage.delete(key: 'ff_dislike');
  }

  String _userProfile = '';
  String get userProfile => _userProfile;
  set userProfile(String _value) {
    _userProfile = _value;
    secureStorage.setString('ff_userProfile', _value);
  }

  void deleteUserProfile() {
    secureStorage.delete(key: 'ff_userProfile');
  }

  bool _activeSearch = false;
  bool get activeSearch => _activeSearch;
  set activeSearch(bool _value) {
    _activeSearch = _value;
  }

  List<DocumentReference> _places = [];
  List<DocumentReference> get places => _places;
  set places(List<DocumentReference> _value) {
    _places = _value;
    secureStorage.setStringList(
        'ff_places', _value.map((x) => x.path).toList());
  }

  void deletePlaces() {
    secureStorage.delete(key: 'ff_places');
  }

  void addToPlaces(DocumentReference _value) {
    _places.add(_value);
    secureStorage.setStringList(
        'ff_places', _places.map((x) => x.path).toList());
  }

  void removeFromPlaces(DocumentReference _value) {
    _places.remove(_value);
    secureStorage.setStringList(
        'ff_places', _places.map((x) => x.path).toList());
  }

  void removeAtIndexFromPlaces(int _index) {
    _places.removeAt(_index);
    secureStorage.setStringList(
        'ff_places', _places.map((x) => x.path).toList());
  }

  void updatePlacesAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _places[_index] = updateFn(_places[_index]);
    secureStorage.setStringList(
        'ff_places', _places.map((x) => x.path).toList());
  }

  void insertAtIndexInPlaces(int _index, DocumentReference _value) {
    _places.insert(_index, _value);
    secureStorage.setStringList(
        'ff_places', _places.map((x) => x.path).toList());
  }

  List<DocumentReference> _favorites = [];
  List<DocumentReference> get favorites => _favorites;
  set favorites(List<DocumentReference> _value) {
    _favorites = _value;
    secureStorage.setStringList(
        'ff_favorites', _value.map((x) => x.path).toList());
  }

  void deleteFavorites() {
    secureStorage.delete(key: 'ff_favorites');
  }

  void addToFavorites(DocumentReference _value) {
    _favorites.add(_value);
    secureStorage.setStringList(
        'ff_favorites', _favorites.map((x) => x.path).toList());
  }

  void removeFromFavorites(DocumentReference _value) {
    _favorites.remove(_value);
    secureStorage.setStringList(
        'ff_favorites', _favorites.map((x) => x.path).toList());
  }

  void removeAtIndexFromFavorites(int _index) {
    _favorites.removeAt(_index);
    secureStorage.setStringList(
        'ff_favorites', _favorites.map((x) => x.path).toList());
  }

  void updateFavoritesAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _favorites[_index] = updateFn(_favorites[_index]);
    secureStorage.setStringList(
        'ff_favorites', _favorites.map((x) => x.path).toList());
  }

  void insertAtIndexInFavorites(int _index, DocumentReference _value) {
    _favorites.insert(_index, _value);
    secureStorage.setStringList(
        'ff_favorites', _favorites.map((x) => x.path).toList());
  }

  bool _favorite = false;
  bool get favorite => _favorite;
  set favorite(bool _value) {
    _favorite = _value;
    secureStorage.setBool('ff_favorite', _value);
  }

  void deleteFavorite() {
    secureStorage.delete(key: 'ff_favorite');
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
