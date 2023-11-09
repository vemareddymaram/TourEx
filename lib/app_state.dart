import 'package:flutter/material.dart';
import '/backend/backend.dart';
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
    secureStorage = const FlutterSecureStorage();
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
      _favorite = await secureStorage.getBool('ff_favorite') ?? _favorite;
    });
    await _safeInitAsync(() async {
      _isNameAlreadySet = await secureStorage.getBool('ff_isNameAlreadySet') ??
          _isNameAlreadySet;
    });
    await _safeInitAsync(() async {
      _isNotNull = await secureStorage.getBool('ff_isNotNull') ?? _isNotNull;
    });
    await _safeInitAsync(() async {
      _searchActive =
          await secureStorage.getBool('ff_searchActive') ?? _searchActive;
    });
    await _safeInitAsync(() async {
      _curWeatherPlace =
          await secureStorage.getBool('ff_curWeatherPlace') ?? _curWeatherPlace;
    });
    await _safeInitAsync(() async {
      _places = (await secureStorage.getStringList('ff_places'))
              ?.map((x) {
                try {
                  return PlacesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _places;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _startDate = '';
  String get startDate => _startDate;
  set startDate(String value) {
    _startDate = value;
    secureStorage.setString('ff_startDate', value);
  }

  void deleteStartDate() {
    secureStorage.delete(key: 'ff_startDate');
  }

  String _endDate = '';
  String get endDate => _endDate;
  set endDate(String value) {
    _endDate = value;
    secureStorage.setString('ff_endDate', value);
  }

  void deleteEndDate() {
    secureStorage.delete(key: 'ff_endDate');
  }

  bool _like = false;
  bool get like => _like;
  set like(bool value) {
    _like = value;
    secureStorage.setBool('ff_like', value);
  }

  void deleteLike() {
    secureStorage.delete(key: 'ff_like');
  }

  bool _dislike = false;
  bool get dislike => _dislike;
  set dislike(bool value) {
    _dislike = value;
    secureStorage.setBool('ff_dislike', value);
  }

  void deleteDislike() {
    secureStorage.delete(key: 'ff_dislike');
  }

  String _userProfile = '';
  String get userProfile => _userProfile;
  set userProfile(String value) {
    _userProfile = value;
    secureStorage.setString('ff_userProfile', value);
  }

  void deleteUserProfile() {
    secureStorage.delete(key: 'ff_userProfile');
  }

  bool _activeSearch = false;
  bool get activeSearch => _activeSearch;
  set activeSearch(bool value) {
    _activeSearch = value;
  }

  bool _favorite = false;
  bool get favorite => _favorite;
  set favorite(bool value) {
    _favorite = value;
    secureStorage.setBool('ff_favorite', value);
  }

  void deleteFavorite() {
    secureStorage.delete(key: 'ff_favorite');
  }

  bool _isNameAlreadySet = false;
  bool get isNameAlreadySet => _isNameAlreadySet;
  set isNameAlreadySet(bool value) {
    _isNameAlreadySet = value;
    secureStorage.setBool('ff_isNameAlreadySet', value);
  }

  void deleteIsNameAlreadySet() {
    secureStorage.delete(key: 'ff_isNameAlreadySet');
  }

  bool _isNotNull = false;
  bool get isNotNull => _isNotNull;
  set isNotNull(bool value) {
    _isNotNull = value;
    secureStorage.setBool('ff_isNotNull', value);
  }

  void deleteIsNotNull() {
    secureStorage.delete(key: 'ff_isNotNull');
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
    secureStorage.setBool('ff_searchActive', value);
  }

  void deleteSearchActive() {
    secureStorage.delete(key: 'ff_searchActive');
  }

  bool _curWeatherPlace = false;
  bool get curWeatherPlace => _curWeatherPlace;
  set curWeatherPlace(bool value) {
    _curWeatherPlace = value;
    secureStorage.setBool('ff_curWeatherPlace', value);
  }

  void deleteCurWeatherPlace() {
    secureStorage.delete(key: 'ff_curWeatherPlace');
  }

  List<PlacesStruct> _places = [
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"GrandCanyon","rating":"4.8","image":"https://images.unsplash.com/photo-1524099163253-32b7f0256868?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80","location":"36.09976309999999,-112.1124846","is_favorite":"false","description":"The Grand Canyon lies in the southwestern portion of the Colorado Plateau, which occupies a large area of the southwestern United States and consists essentially of horizontal layered rocks and lava flows. The broad, intricately sculptured chasm of the canyon contains between its outer walls a multitude of imposing peaks, buttes, gorges, and ravines.","address":"Arizona 86052, USA"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"EiffelTower","rating":"4.6","image":"https://images.unsplash.com/photo-1544609424-5265b9ea8f78?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80","location":"48.85837009999999,2.2944813","is_favorite":"false","description":"The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower from 1887 to 1889.","address":"Champ de Mars, 5 Av. Anatole France, 75007 Paris, France"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"GreatWallofChina","rating":"4.7","image":"https://images.unsplash.com/photo-1660672415776-02f2b8188d66?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80","location":"40.4319077,116.5703749","is_favorite":"false","description":"The Great Wall of China is a series of fortifications that were built across the historical northern borders of ancient Chinese states and Imperial China as protection against various nomadic groups from the Eurasian Steppe.","address":"Huairou District, China, 101406"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"PyramidsofGiza","rating":"4.5","image":"https://images.unsplash.com/photo-1553913861-c0fddf2619ee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80","location":"29.9789375,31.1313125","is_favorite":"false","description":"The Great Pyramid of Giza is the largest Egyptian pyramid and served as the tomb of pharaoh Khufu, who ruled during the Fourth Dynasty of the Old Kingdom.","address":" Giza, Cairo 11511 Egypt"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"StatueofLiberty","rating":"4.7","image":"https://images.unsplash.com/photo-1560748952-1d2d768c2337?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1180&q=80","location":"40.6892494,-74.04450039999999","is_favorite":"false","description":"Over the years, the statue stood tall as millions of immigrants arrived in America via nearby Ellis Island; in 1986, it underwent an extensive renovation in honor of the centennial of its dedication. Today, the Statue of Liberty remains an enduring symbol of freedom and democracy, as well as one of the world’s most recognizable landmarks.","address":"New York, NY 10004, United States"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"SydneyOperaHouse","rating":"4.6","image":"https://images.unsplash.com/photo-1560748952-1d2d768c2337?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1180&q=80","location":"-33.8567844,151.2152967","is_favorite":"false","description":" The Sydney Opera House is a multi-venue performing arts centre in Sydney, Australia. Located on the foreshore of Sydney Harbour, it is widely regarded as one of the world\'s most famous and distinctive buildings and a masterpiece of 20th-century architecture.","address":"Bennelong Point, Sydney NSW 2000, Australia"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Colosseum","rating":"4.7","image":"https://images.unsplash.com/photo-1552832230-c0197dd311b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1696&q=80","location":"41.8902102,12.4922309","is_favorite":"false","description":"The Colosseum was famous for being the largest Roman ampitheatre and the host to gladiator fights, mock naval battles, wild animal hunts, and public executions. Very often Roman emperors attended in person.","address":"Piazza del Colosseo, 00184 Rome Italy"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"MachuPicchu","rating":"4.9","image":"https://images.unsplash.com/photo-1526392060635-9d6019884377?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80","location":"-13.1547062,-72.5254412","is_favorite":"false","description":"Machu Picchu is a 15th-century Inca citadel located in the Eastern Cordillera of southern Peru on a 2,430-meter mountain ridge. Often referred to as the \\"Lost City of the Incas\\", it is the most familiar icon of the Inca Empire.","address":"Cusco Region, Peru"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Petra","rating":"4.8","image":"https://images.unsplash.com/photo-1579606032821-4e6161c81bd3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80","location":"30.3216354,35.4801251","is_favorite":"false","description":"Petra is half built, half carved in stone. The awe-inspiring monuments of Petra are cut into cobblestone cliffs and mountains, showing a whole spectrum of colours at the rising and setting of the sun. In its flourishing years in 1CE, Petra had a population which soared to 20,000 inhabitants.","address":"Jordan"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"TajMahal","rating":"4.5","image":"https://images.unsplash.com/photo-1548013146-72479768bada?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80","location":"27.1751448,78.0421422","is_favorite":"false","description":"An immense mausoleum of white marble, built in Agra between 1631 and 1648 by order of the Mughal emperor Shah Jahan in memory of his favourite wife, the Taj Mahal is the jewel of Muslim art in India and one of the universally admired masterpieces of the world\'s heritage.","address":"Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Stonehenge","rating":"4.5","image":"https://images.unsplash.com/photo-1599833975787-5c143f373c30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1856&q=80","location":"51.17888199999999,-1.826215","is_favorite":"false","description":"Stonehenge in southern England ranks among the world\'s most iconic archaeological sites and one of its greatest enigmas. The megalithic circle on Salisbury Plain inspires awe and fascination—but also intense debate some 4,600 years after it was built by ancient Britons who left no written record.","address":"Salisbury SP4 7DE, United Kingdom"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Acropolis","rating":"4.5","image":"https://images.unsplash.com/photo-1603565816030-6b389eeb23cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80","location":"37.97153229999999,23.7257491","is_favorite":"false","description":"The Acropolis of Athens is an ancient citadel located on a rocky outcrop above the city of Athens, Greece, and contains the remains of several ancient buildings of great architectural and historical significance, the most famous being the Parthenon.","address":"Athens, Greece"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"ChristtheRedeemer","rating":"4.6","image":"https://images.unsplash.com/photo-1599423217192-34da246be9e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1674&q=80","location":"-22.951916,-43.2104872","is_favorite":"false","description":"Christ The Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil, created by French sculptor Paul Landowski and built by Brazilian engineer Heitor da Silva Costa, in collaboration with French engineer Albert Caquot.","address":"Monument located on Corcovado Hill in Rio de Janeiro, Brazil"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"BuckinghamPalace","rating":"4.5","image":"https://images.unsplash.com/photo-1523602448860-5cf99857b7a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1769&q=80","location":"51.501364,-0.14189","is_favorite":"false","description":"Buckingham Palace is a royal residence in London and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.","address":"Spur Road, London SW1A 1AA England"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"GreatBarrierReef","rating":"4.9","image":"https://images.unsplash.com/photo-1587139223877-04cb899fa3e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1674&q=80","location":"-18.2870668,147.6991918","is_favorite":"false","description":"The Great Barrier Reef is a site of remarkable variety and beauty on the north-east coast of Australia. It contains the world’s largest collection of coral reefs, with 400 types of coral, 1,500 species of fish and 4,000 types of mollusc.","address":"north-east coast of Australia"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"MountFuji","rating":"4.8","image":"https://images.unsplash.com/photo-1610375228550-d5cabc1d4090?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1734&q=80","location":"35.3606255,138.7273634","is_favorite":"false","description":"Mount Fuji, with its graceful volcanic cone (dormant since 1707), has become famous internationally. It is considered a sacred symbol of Japan, and thousands of Japanese climb to the shrine on its peak every summer. The mountain is the major feature of Fuji-Hakone-Izu National Park, created in 1936.","address":"Mount Fuji, Kitayama, Fujinomiya, Shizuoka 418-0112, Japan"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"NiagaraFalls","rating":"4.7","image":"https://images.unsplash.com/photo-1564548777770-17bbd20b3d21?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1673&q=80","location":"43.0962143,-79.0377388","is_favorite":"false","description":"Niagara Falls is a group of three waterfalls at the southern end of Niagara Gorge, spanning the border between the province of Ontario in Canada and the state of New York in the United States.","address":"Niagara Falls, NY 14303, United States"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"MountEverest","rating":"5","image":"https://images.unsplash.com/photo-1607076317979-ca8923b78b94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80","location":"27.9881206,86.9249751","is_favorite":"false","description":"Mount Everest is a peak in the Himalaya mountain range. It is located between Nepal and Tibet, an autonomous region of China. At 8,849 meters (29,032 feet), it is considered the tallest point on Earth.","address":"Solukhumbu District, Koshi Province, Nepal;, Tingri County, Xigazê, Tibet Autonomous Region, China"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"GalapagosIslands","rating":"4.9","image":"https://images.unsplash.com/photo-1443803992021-689478c50dcc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80","location":"-0.9537690999999999,-90.9656019","is_favorite":"false","description":"The Galápagos Islands are an archipelago of volcanic islands in the Eastern Pacific, located around the Equator 900 km west of South America.","address":"Eastern Pacific"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"SerengetiNationalPark","rating":"4.8","image":"https://images.unsplash.com/photo-1554543518-2867d3116a7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80","location":"-2.3333333,34.8333333","is_favorite":"false","description":"The Serengeti National Park is a large national park in northern Tanzania that stretches over 14,763 km2. It is located in eastern Mara Region and northeastern Simiyu Region and contains over 1,500,000 hectares of virgin savanna.","address":"Arusha, Tanzania"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Lukshmi Vilas Palace","rating":"4.5","image":"https://s.yimg.com/fz/api/res/1.2/acq0O4pq4dPP6BsJMe5_vQ--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/cc0c2c35-cfd3-3eba-b5f1-f5d32c561237/t_500x300","location":"22.2935993,73.19190739999999","is_favorite":"false","description":"Lukshmi Villas Palace is the Official residence of the Maharaja Of Baroda.The royal family still resides in this magnificent palace builtin 1889.A part of the palace is open for visitors during the day 10 am to 5 pm. Mondays is the weekly off day. Weekends can get crowded , so best to come on any other day.The ticket cost Rs. 200 And it includes a complimentary audio tour guide in either english , hindi & marathi.Photographs inside the palace are not permitted. The tour takes about an hour. Water & other cold beverages are available at a charge for visitors","address":"Palace of Vadodara, Gujarat, India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Qutb Minar","rating":"4.3","image":"https://images.unsplash.com/photo-1632426237957-5ea14aae7100?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxRVVRVQiUyME1JTkFSfGVufDB8fHx8MTY5Nzk2ODAzMnww&ixlib=rb-4.0.3&q=80&w=1080","location":"28.5244754,77.18552059999999","is_favorite":"false","description":"The Qutb Minar, also spelled Qutub Minar and Qutab Minar, is a minaret and \\"victory tower\\" that forms part of the Qutb complex, which lies at the site of Delhi’s oldest fortified city, Lal Kot, founded by the Tomar Rajputs.","address":"Qutb Minar, Mehrauli, New Delhi 110030 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Swaminarayan Akshardham","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/74tln0iibLb8L0flJJOUmQ--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/7aede282-3477-3a4f-9c82-d8aeb668521e/t_500x300","location":"26.3514875,72.9968967","is_favorite":"false","description":"Fantastic site to visit - unimaginable architechture, great theme show, diaorama and I max presentation. If any tourist, irresepctive of his religion or creed, has half a day to spare, this is a must see. It is one man\'s creation in five years totally with voluntary support. A monument which makes every indian proud!","address":"Vidyut Nagar, Vaishali Nagar, Chitrakoot, Jaipur 302021 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"India Gate","rating":"4.5","image":"https://s.yimg.com/fz/api/res/1.2/G9H2qiUcgF5aOqhC4aKaKw--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MjA4/https://s.yimg.com/zb/imgv1/47baaec7-1b18-33d1-9086-30ac12094b7f/t_500x300","location":"28.612912,77.2295097","is_favorite":"false","description":"The India Gate is a war memorial located near the Kartavya path on the eastern edge of the \\"ceremonial axis\\" of New Delhi, formerly called Rajpath.","address":" Rajpath Near Connaught Place New Delhi, New Delhi 110001 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Lotus Temple","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/a3xPl22H76fv.ZBFtnKI_g--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/9efe51c3-adc3-3312-a2bd-5365819103b5/t_500x300","location":"28.553492,77.25882639999999","is_favorite":"false","description":"The Lotus Temple, located in New Delhi, India, is a Bahá?í House of Worship that was dedicated in December 1986. Notable for its lotus-like shape, it has become a prominent attraction in the city.","address":"Lotus Temple Rd, Bahapur, Shambhu Dayal Bagh, Kalkaji Near Kalkaji Temple, East of Nehru Place, New Delhi 110019 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Red Fort","rating":"4.7","image":"https://s.yimg.com/fz/api/res/1.2/m2CO25Kg08wDXAAN8Gjbmg--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/07afb8c3-0cdf-3d3f-bc2f-f7f9c046c40e/t_500x300","location":"28.6561592,77.2410203","is_favorite":"false","description":"The Red Fort or Lal Qila is a historic fort in the Old Delhi neighbourhood of Delhi, India, that historically served as the main residence of the Mughal emperors.","address":"Netaji Subhash Marg, New Delhi 110002 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Humayun\'s Tomb","rating":"4.5","image":"https://s.yimg.com/fz/api/res/1.2/slw70zOo3drfJ312eZ362g--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/f210f159-e5c9-3d68-a4ea-9231d91100f0/t_500x300","location":"28.5932848,77.2507492","is_favorite":"false","description":"Humayun\'s tomb is the tomb of Humayun in Delhi, India. The tomb was commissioned by Humayun\'s first wife and chief consort, Empress Bega Begum under her patronage in 1558, and designed by Mirak Mirza Ghiyas and his son, Sayyid Muhammad, Persian architects chosen by her.","address":" Mathura Road Opp Nizamuddin Mosque, New Delhi 110013 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Birla Mandir","rating":"4.5","image":"https://s.yimg.com/fz/api/res/1.2/JrAB3q.PBOCDKiEGgcNOkA--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/a2f6cfbf-43af-3d93-8a2b-043d295816fb/t_500x300","location":"28.6326666,77.19899629999999","is_favorite":"false","description":"Laxminarayan temple in Delhi. Also known as the Birla temple, it is one of the biggest Hindu temples of the city. As the name suggests, the temple is dedicated to Lord Laxminarayan, better known as Lord Vishnu, or the preserver in the Trimurti, comprising of Brahma, Vishnu and Mahesh.","address":"Mandir Marg, near Gole Market, Gole Market, New Delhi, Delhi 110001"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Chhatarpur Temple","rating":"4.5","image":"https://s.yimg.com/fz/api/res/1.2/F13mQOTtfDo9Fsb005pmdw--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/dc9ce57e-1919-3097-972d-9a43b04cfe2f/t_500x300","location":"28.5029292,77.1776332","is_favorite":"false","description":"Chhatarpur Temple is located in a down town area in Chhatarpur, Delhi, India. This temple is dedicated to Goddess, Katyayani. The entire complex of the temple is spread over a wide area of 70 acres.","address":"Mani Chhatarpur Temple,  New Delhi 110074 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Venkateswara Temple, Tirumala","rating":"4.5","image":"https://s.yimg.com/fz/api/res/1.2/DbCZnDV_wv6evUh3bfwwQw--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/c6686462-e1a9-3f0c-a82c-102f979213aa/t_500x300","location":"13.6832724,79.347417","is_favorite":"false","description":"The Sri Venkateswara Swami Temple is a Hindu temple situated in the hill town of Tirumala at Tirupati in Tirupati district of Andhra Pradesh, India.","address":"Tirupati district"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Borra Caves","rating":"4.5","image":"https://s.yimg.com/fz/api/res/1.2/rOwSnzvRQNJVf0pGxmwjOA--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/72043362-55fc-3783-8638-ead25e21f770/t_500x300","location":"18.2806929,83.0396992","is_favorite":"false","description":"The Borra Caves, also called Borra Guhalu, are located on the East Coast of India, in the Ananthagiri hills of the Araku Valley of the Visakhapatnam district in Andhra Pradesh.","address":"Andhra Pradesh 531149"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Araku Valley","rating":"4.5","image":"https://s.yimg.com/fz/api/res/1.2/_nV1XpcHa5RXs7ZPC1LuOw--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/5de56d35-29ff-36de-8588-125c99538993/t_500x300","location":"18.3273486,82.8775218","is_favorite":"false","description":"Araku Valley is a hill station in Alluri Sitharama Raju district in the Indian state of Andhra Pradesh, lying 111 km west of Visakhapatnam city. It is a valley in the Eastern Ghats inhabited by different tribes, mainly Araku Tribes.","address":"Araku Valley,Andhra Pradesh"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Gandikota","rating":"4.5","image":"https://s.yimg.com/fz/api/res/1.2/eezIYL4cjcAcIzy4rH1OMA--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/bbda0b47-febe-3f69-b553-3e202096fbb2/t_500x300","location":"14.8149269,78.2862866","is_favorite":"false","description":"Gandikota is a village and historical fort on the right bank of the Penna river, 15 km from Jammalamadugu in Kadapa district, Andhra Pradesh, India. The fort was the centre of power for various dynasties, such as the Kalyani Chalukyas, Pemmasani Nayakas, and the Golconda Sultanate.","address":"Village in YSR district, Andhra Pradesh, India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Amber Fort","rating":"4.5","image":"https://s.yimg.com/fz/api/res/1.2/SiTQukie37eSCXd9xMQo4Q--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9Mjg2/https://s.yimg.com/zb/imgv1/6b58d643-dfeb-31e4-b82c-a95b22534615/t_500x300","location":"26.9124336,75.7872709","is_favorite":"false","description":"Amer Fort or Amber Fort is a fort located in Amer, Rajasthan, India. Amer is a town with an area of 4 square kilometres located 11 kilometres from Jaipur, the capital of Rajasthan.","address":"City Palace Mubarak Mahal Courtyard, Jaipur 302002 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Jantar Mantar, Jaipur","rating":"4.5","image":"https://s.yimg.com/fz/api/res/1.2/hvxj3knT6f0Bil6t0CnJrw--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/a09160c1-38f2-3516-8f7c-cbfb176b54be/t_500x300","location":"26.924762,75.82455999999999","is_favorite":"false","description":"The Jantar Mantar, Jaipur is a collection of 19 astronomical instruments built by the Rajput king Sawai Jai Singh, the founder of Jaipur, Rajasthan. The monument was completed in 1734.","address":"Tripoliya Bazaar near entrance to City Palace, Jaipur 302020 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Hawa Mahal","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/NGS43pCoGYrXfNahyPq6vg--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/dba4840e-f201-3fda-aaf6-4e7e6a2d2059/t_500x300","location":"26.9239363,75.8267438","is_favorite":"false","description":"The Hawa Mahal is a palace in the city of Jaipur, India. Built from red and pink sandstone, it is on the edge of the City Palace, Jaipur, and extends to the Zenana, or women\'s chambers.","address":"Hawa Mahal Tripolia Bazaar Road Badi Choupad, J.D.A. Market, Pink City, Jaipur 302002 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Sheesh Mahal (Hall of Mirrors)","rating":"4","image":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/8e/20/db/photo9jpg.jpg?w=1000&h=800&s=1","location":"26.9857093,75.8506434","is_favorite":"false","description":"Sheesh Mahal in Jaipur is an enchanting gem that dazzles the senses. This \\"Palace of Mirrors\\" takes you on a magical journey into a world of opulence and artistry. The intricate mirror work adorning the walls and ceilings reflects light in a mesmerizing display, creating a breathtaking spectacle.","address":"Devisinghpura, Amer, Jaipur, Rajasthan 302028"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"City Palace, Jaipur","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/6Z.w02zp89dZ7cupMnz6Lg--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9Mjkw/https://s.yimg.com/zb/imgv1/5076686f-4f88-3082-a0f3-e7abd884d687/t_500x300","location":"26.9254152,75.8235814","is_favorite":"false","description":"The City Palace, Jaipur is a royal residence and former administrative headquarters of the rulers of the Jaipur State in Jaipur, Rajasthan.","address":"Tripolia Bazar Near Jantar Mantar, Jaipur 3023002 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Nahargarh Fort","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/BNuyWxtK7pyGDsnpE8XRjw--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/57b8f852-b13b-32e7-8eb9-a8bba27813ac/t_500x300","location":"26.935743,75.81720849999999","is_favorite":"false","description":"Nahargarh Fort stands on the edge of the Aravalli Hills, overlooking the city of Jaipur in the Indian state of Rajasthan. Along with Amer Fort and Jaigarh Fort, Nahargarh once formed a strong defence ring for the city.","address":"Nahar Garh Road, Jaipur 302002 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Jaigarh Fort","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/9nlvAgxJYaGvYI6.K7AvsA--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/144ecdb1-a619-33aa-a1ac-805f92620e50/t_500x300","location":"26.9816052,75.8447917","is_favorite":"false","description":"Jaigarh Fort is situated on the promontory called the Cheel ka Teela of the Aravalli range; it overlooks the Amer Fort and the Maota Lake, near Amer in Jaipur, Rajasthan, India.","address":"Cheel ka Teela, Jaipur 302013 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Jal Mahal","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/PDPH85MvplJyl3zMwSa_lQ--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/0402f462-6e22-3485-ac6f-b78c06c4d7ff/t_500x300","location":"26.9534584,75.84612349999999","is_favorite":"false","description":"Jal Mahal (meaning \\"Water Palace\\") is a palace in the middle of the Man Sagar Lake in Jaipur city, the capital of the state of Rajasthan, India. The palace was originally constructed around 1699; the building and the lake around it were later renovated and enlarged in the early 18th century by Maharaja Jai Singh II of Amber.","address":"Palace in Man Sagar Lake, Rajasthan, India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Vaishno Devi Temple","rating":"4","image":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/34/98/37/lrm-export-31665251117501.jpg?w=1000&h=-1&s=1","location":"33.0255377,74.9384135","is_favorite":"false","description":"The Vaishno Devi Temple is a major and divine Hindu temple dedicated to Vaishno Devi located in Katra, Reasi on the slopes of Trikuta Hills within the union territory of Jammu & Kashmir in India.","address":" Reasi district"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Gulmarg Gondola","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/mhwjP_lRZmnGKxkQNap9YQ--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/3ae0f05c-d409-3f44-809e-af60830f5e89/t_500x300","location":"34.0455704,74.3844135","is_favorite":"false","description":"Gulmarg Gondola in Gulmarg, Jammu and Kashmir, an administered union territory of India is the second longest and second highest cable car in the world. Higher lines include the Dagu Glacier Gondola.","address":"Alambal Road Gulmarg Ski Area, Gulmarg 193403 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Manali, Himachal Pradesh","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/EvXFGjany7VZ82v934jkLA--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/cac17123-0b00-3dc9-bea3-fe038a067eb5/t_500x300","location":"32.2431872,77.1891761","is_favorite":"false","description":"Manali is a town, near Kullu town in Kullu district in the Indian state of Himachal Pradesh. It is situated in the northern end of the Kullu Valley, formed by the Beas River.","address":"Manali, Himachal Pradesh"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Padmanabhaswamy Temple","rating":"4.8","image":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/a3/45/c8/caption.jpg?w=1000&h=800&s=1","location":"8.482824899999999,76.9465165","is_favorite":"false","description":"The Shree Padmanabhaswamy Temple is a Hindu temple, dedicated to Vishnu, in Thiruvananthapuram, the capital of the state of Kerala, India. It is widely considered as the world\'s richest Hindu temple.","address":"Thiruvananthapuram"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Kerala backwaters","rating":"4.2","image":"https://sp.yimg.com/ib/th?id=OIP._Z-6UwHv0a9MunO7AJdDZgAAAA&pid=Api&w=148&h=148&c=7&dpr=2&rs=1","location":"9.5238149,76.3574364","is_favorite":"false","description":"The Kerala backwaters are a network of brackish lagoons and canals lying parallel to the Arabian Sea of the Malabar coast of Kerala state in south-western India.","address":"83FG+54W, Bund Road, Poovar, Poovar - Neyyatinkara Rd, Poovar, Kerala 695525"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Meenakshi Temple","rating":"4.2","image":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/71/bf/0e/madurai-meenakshi-temple.jpg?w=1000&h=700&s=1","location":"9.9195045,78.1193418","is_favorite":"false","description":"Arulmigu Meenakshi Sundaraswarar Temple a.k.a Arulmigu Meenakshi Amman Thirukkovil is a historic Hindu temple located on the southern bank of the Vaigai River in the temple city of Madurai, Tamil Nadu, India.","address":" Madurai"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Dhanushkodi Beach","rating":"4.2","image":"https://s.yimg.com/fz/api/res/1.2/E3Cp9kjGLQIh.o75P_or2A--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/14879109-a762-3bc3-a32f-ee24220d916f/t_500x300","location":"9.158856799999999,79.43899850000001","is_favorite":"false","description":"Dhanushkodi Beach lies on the tip of the Rameswaram island. In this beach, the Bay of Bengal and Arabian Sea of Indian Ocean merge which is known as Arichal Munai in Tamil. Before 1964, Dhanushkodi was a busy, crowded city.","address":"Beach on the tip of the Rameswaram island"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Marina Beach","rating":"4.2","image":"https://s.yimg.com/fz/api/res/1.2/XCmAx4MvpZZhvduymc9bVw--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/bc9c7aa4-cde3-31a0-a050-9eae7b49f0ba/t_500x300","location":"13.0499526,80.2824026","is_favorite":"false","description":"Marina Beach, or simply the Marina, is a natural urban beach in Chennai, Tamil Nadu, India, along the Bay of Bengal.","address":"Tamil Nadu"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Kodaikanal Lake","rating":"4.2","image":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/87/ed/d3/caption.jpg?w=1000&h=800&s=1","location":"10.2343586,77.4863295","is_favorite":"false","description":"Kodaikanal Lake, also known as Kodai Lake, is a manmade lake located in the Kodaikanal city in Dindigul district in Tamil Nadu, India.","address":"Kodaikanal, Dindigul district, Tamil Nadu"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Mysore Palace","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/ixUthBdp9rVi7CQodsXBKw--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/7845b5e8-16f5-3eb3-971e-636d4891c9cc/t_500x300","location":"12.305163,76.65517489999999","is_favorite":"false","description":"Mysore Palace, also known as Amba Vilas Palace, is a historical palace and a royal residence. It is located in Mysore, Karnataka, India. It used to be the official residence of the Wadiyar dynasty and the seat of the Kingdom of Mysore.","address":"Office Of The Deputy Director, Mysuru Palace Board, Mysuru (Mysore) 570001 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Chennakeshava Temple, Somanathapura","rating":"4","image":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/08/6b/fd/somanathapura-vishnu.jpg?w=1000&h=800&s=1","location":"13.2516041,76.6145548","is_favorite":"false","description":"The Chennakesava Temple, also referred to as Chennakeshava Temple and Keshava Temple, is a Vaishnava Hindu temple on the banks of River Kaveri at Somanathapura, Karnataka, India.","address":"Keshava Temple, Somanathapura Somanathapura Village, Mysuru (Mysore) 571120 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Virupaksha Temple","rating":"4","image":"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Hampi_virupaksha_temple.jpg/440px-Hampi_virupaksha_temple.jpg","location":"15.3351333,76.45865289999999","is_favorite":"false","description":"Virupaksha Temple is located in Hampi in the Vijayanagara district of Karnataka, India. It is part of the Group of Monuments at Hampi, designated as a UNESCO World Heritage Site.","address":"Hampi, Vijayanagara district, Karnataka, India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Golconda Fort","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/IaoosjmQX_TYkXGenhhSNw--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/f97e372e-c9b9-3024-be92-ab4ef6ca25c9/t_500x300","location":"17.3847636,78.40333919999999","is_favorite":"false","description":"Golconda is a fortified citadel and ruined city located in the western outskirts of Hyderabad, Telangana, India. The fort was originally built by Kakatiya ruler Prat?parudra in the 11th century out of mud walls.","address":"Hyderabad, India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Falaknuma Palace","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/kwn8Iy1_Eb47DSXTIJO4bQ--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/fc0bd069-bc59-32e3-9ede-366a60cb0d16/t_500x300","location":"17.330955,78.46750399999999","is_favorite":"false","description":"Falaknuma is a palace in Hyderabad, Telangana, India. It originally belonged to the Paigah family, and was later owned by the Nizam of Hyderabad.","address":"Hyderabad, India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Salar Jung Museum","rating":"4.2","image":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/a1/66/09/photo3jpg.jpg?w=1000&h=-1&s=1","location":"17.3716084,78.48024389999999","is_favorite":"false","description":"The Salar Jung Museum is an art museum located at Dar-ul-Shifa, on the southern bank of the Musi River in the city of Hyderabad, Telangana, India. It is one of the notable National Museums of India.","address":"Salar Jung Road, Hyderabad 500002 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Statue of Unity","rating":"4.5","image":"https://lh5.googleusercontent.com/p/AF1QipNj1ZN0O-2oDw2AP5saKcJZzQyxayA32ahUrjj0=w408-h279-k-no","location":"21.8380184,73.71907279999999","is_favorite":"false","description":"The Statue of Unity is the world\'s tallest statue, with a height of 182 metres, located near Kevadia in the state of Gujarat, India.","address":"Sardar Sarovar Dam, Statue of Unity Rd, Kevadia, Gujarat 393155"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"White Desert","rating":"4.2","image":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/44/21/17/white-desert.jpg?w=2000&h=-1&s=1","location":"23.8412898,69.52255989999999","is_favorite":"false","description":"White Desert in Kutch, also known as the Great Rann of Kutch, is located in western Gujarat. One of the hottest regions in India, the desert is the site of popular Rann Festival in Gujarat which is held from November to February every year. Camel rides, hot air balloon safari, jeep safaris, and watching cultural dances are popular things to do in White Desert in Kutch.","address":"Road 341 Near Dhordo, Bhuj 370001 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Dwarkadhish Temple","rating":"4.7","image":"https://s.yimg.com/fz/api/res/1.2/37pW0MzQqjYijEvP6xFCcQ--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/b24cf5f9-308a-3fed-9f00-6af4326141ed/t_500x300","location":"22.2376336,68.96740559999999","is_favorite":"false","description":"The Dwarkadhish temple, also known as the Jagat Mandir and occasionally spelled Dwarakadheesh, is a Hindu temple dedicated to the god Krishna, who is worshiped here by the name Dwarkadhish, or \'King of Dwarka\'.","address":"Kishan Park Society, Jamnagar 361005 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Somnath temple","rating":"4","image":"https://s.yimg.com/fz/api/res/1.2/kGo6LjLXi.25rJFetJgqyw--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MzMy/https://s.yimg.com/zb/imgv1/e4d5a3f4-255e-3292-be9a-904e44a3ba56/t_500x300","location":"20.9059922,70.3842909","is_favorite":"false","description":"The Somnath temple, also called Soman?tha temple or Deo Patan, is a Hindu temple located in Prabhas Patan, Veraval in Gujarat, India.","address":"Somnath,Gujarat,India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Harihar fort","rating":"4.9","image":"https://tse1.mm.bing.net/th?id=OIP.SHdEFykPyIEGVHrs_UZuLAHaGM&pid=Api&P=0&h=180","location":"19.9052223,73.4721591","is_favorite":"false","description":"Harihar fort / Harshagad is a fort located 40 km from Nashik City, 48 km from Igatpuri, 40 km from Ghoti in Nashik district, of Maharashtra, India.","address":" Nashik 422001 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Ajanta Caves","rating":"4","image":"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Ajanta_%2863%29.jpg/600px-Ajanta_%2863%29.jpg","location":"20.5518603,75.7032521","is_favorite":"false","description":"The Ajanta Caves are 29 rock-cut Buddhist cave monuments dating from the second century BCE to about 480 CE in the Aurangabad District of Maharashtra state in India. Ajanta Caves are a UNESCO World Heritage Site.","address":"Ajanta, Aurangabad district, Maharashtra, India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Ellora Caves","rating":"4.8","image":"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Ellora_Caves%2C_India%2C_Kailasanatha_Temple_2.jpg/600px-Ellora_Caves%2C_India%2C_Kailasanatha_Temple_2.jpg","location":"20.0267844,75.17708689999999","is_favorite":"false","description":"Ellora Caves are a multi-religious rock-cut cave complex with inscriptions dating from the period 6th century CE onwards, located in the Aurangabad District of Maharashtra, India.[1] They are also called verul caves.","address":"Aurangabad District , Maharashtra, India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Marine Drive, Mumbai","rating":"4.5","image":"https://s.yimg.com/fz/api/res/1.2/EdAXloXrxR4MsIKabH5PwA--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9Mjc4/https://s.yimg.com/zb/imgv1/3cc199fa-42ca-3fff-a68f-9e5b527faf2b/t_500x300","location":"18.9552139,72.81331999999999","is_favorite":"false","description":"Marine Drive is a 3 kilometre-long Promenade along the Netaji Subhash Chandra Bose Road in Mumbai, India. The road and promenade were constructed by Pallonji Mistry.","address":"Chaupati, Mumbai 400021 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Gateway of India","rating":"4.3","image":"https://s.yimg.com/fz/api/res/1.2/HJMY1jpPuFGuZ3XQNT9ipA--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MjYw/https://s.yimg.com/zb/imgv1/37f3a27c-e8c4-3909-8e31-babd0ca6553c/t_500x300","location":"18.9219841,72.8346543","is_favorite":"false","description":"The Gateway of India is an arch-monument completed in 1924 on the waterfront of Mumbai, India. It was erected to commemorate the landing of George V for his coronation as the Emperor of India in December 1911 at Strand Road near Wellington Fountain.","address":"Apollo Bandar, Colaba, Mumbai 400001 India"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Della Adventure Park","rating":"4.8","image":"https://lh5.googleusercontent.com/p/AF1QipPbKJIxSy7diXltOHk6w8VqEPhub-TuNyEjk4Mh=w456-h240-k-no","location":"18.7814023,73.38906","is_favorite":"false","description":"Experience India’s only Swoop swing(100 ft.), India’s Longest Flying Fox(1250ft.), 5 kinds of zorbing and 700cc yamaha raptor ATV only at Della Adventure, Lonavala. Make sure you do not miss out adrenaline pumping adventure activities like Archery, Rocket Ejector, Motocross dirt bike riding, Buggy Ride, Paintball and Rappelling.","address":"Plot No. 130-1, Lonavala, Kunegaon, Maharashtra 410401"}')),
    PlacesStruct.fromSerializableMap(jsonDecode(
        '{"name":"Charminar","rating":"4.4","image":"https://s.yimg.com/fz/api/res/1.2/6ALH7ux2qSDTyMVg3gMcYQ--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MjE4/https://s.yimg.com/zb/imgv1/c8560b8a-4526-3f5d-b46e-f7940810f46d/t_500x300","location":"17.3615636,78.4746645","is_favorite":"false","description":"The Charminar is a monument located in Hyderabad, Telangana, India. Constructed in 1591, the landmark is a symbol of Hyderabad and officially incorporated in the emblem of Telangana.","address":"Charminar Road Char Lamar, Hyderabad 500002 India"}'))
  ];
  List<PlacesStruct> get places => _places;
  set places(List<PlacesStruct> value) {
    _places = value;
    secureStorage.setStringList(
        'ff_places', value.map((x) => x.serialize()).toList());
  }

  void deletePlaces() {
    secureStorage.delete(key: 'ff_places');
  }

  void addToPlaces(PlacesStruct value) {
    _places.add(value);
    secureStorage.setStringList(
        'ff_places', _places.map((x) => x.serialize()).toList());
  }

  void removeFromPlaces(PlacesStruct value) {
    _places.remove(value);
    secureStorage.setStringList(
        'ff_places', _places.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPlaces(int index) {
    _places.removeAt(index);
    secureStorage.setStringList(
        'ff_places', _places.map((x) => x.serialize()).toList());
  }

  void updatePlacesAtIndex(
    int index,
    PlacesStruct Function(PlacesStruct) updateFn,
  ) {
    _places[index] = updateFn(_places[index]);
    secureStorage.setStringList(
        'ff_places', _places.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPlaces(int index, PlacesStruct value) {
    _places.insert(index, value);
    secureStorage.setStringList(
        'ff_places', _places.map((x) => x.serialize()).toList());
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
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
