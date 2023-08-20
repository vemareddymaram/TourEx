import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Weather Group Code

class WeatherGroup {
  static String baseUrl = 'https://weatherapi-com.p.rapidapi.com';
  static Map<String, String> headers = {};
  static RealtimeWeatherAPICall realtimeWeatherAPICall =
      RealtimeWeatherAPICall();
  static SearchOrAutocompleteWeatherAPICall searchOrAutocompleteWeatherAPICall =
      SearchOrAutocompleteWeatherAPICall();
}

class RealtimeWeatherAPICall {
  Future<ApiCallResponse> call({
    String? place = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Realtime Weather API',
      apiUrl: '${WeatherGroup.baseUrl}/current.json?q=${place}',
      callType: ApiCallType.GET,
      headers: {
        ...WeatherGroup.headers,
        'X-RapidAPI-Key': 'a24c585d42msh42d550dcd1dbb4ep1ae36ajsn1aef31bcffd7',
        'X-RapidAPI-Host': 'weatherapi-com.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic locationname(dynamic response) => getJsonField(
        response,
        r'''$.location.name''',
      );
  dynamic locationregion(dynamic response) => getJsonField(
        response,
        r'''$.location.region''',
      );
  dynamic locationcountry(dynamic response) => getJsonField(
        response,
        r'''$.location.country''',
      );
  dynamic locationtzid(dynamic response) => getJsonField(
        response,
        r'''$.location.tz_id''',
      );
  dynamic locationlocaltime(dynamic response) => getJsonField(
        response,
        r'''$.location.localtime''',
      );
  dynamic currentlastupdated(dynamic response) => getJsonField(
        response,
        r'''$.current.last_updated''',
      );
  dynamic currenttempc(dynamic response) => getJsonField(
        response,
        r'''$.current.temp_c''',
      );
  dynamic currenttempf(dynamic response) => getJsonField(
        response,
        r'''$.current.temp_f''',
      );
  dynamic currentisday(dynamic response) => getJsonField(
        response,
        r'''$.current.is_day''',
      );
  dynamic currentconditiontext(dynamic response) => getJsonField(
        response,
        r'''$.current.condition.text''',
      );
  dynamic currentconditionicon(dynamic response) => getJsonField(
        response,
        r'''$.current.condition.icon''',
      );
  dynamic currentconditioncode(dynamic response) => getJsonField(
        response,
        r'''$.current.condition.code''',
      );
  dynamic currentwindmph(dynamic response) => getJsonField(
        response,
        r'''$.current.wind_mph''',
      );
  dynamic currentwindkph(dynamic response) => getJsonField(
        response,
        r'''$.current.wind_kph''',
      );
  dynamic currentwinddir(dynamic response) => getJsonField(
        response,
        r'''$.current.wind_dir''',
      );
  dynamic currentwinddegree(dynamic response) => getJsonField(
        response,
        r'''$.current.wind_degree''',
      );
  dynamic currentpressuremb(dynamic response) => getJsonField(
        response,
        r'''$.current.pressure_mb''',
      );
  dynamic currentpressurein(dynamic response) => getJsonField(
        response,
        r'''$.current.pressure_in''',
      );
  dynamic currenthumidity(dynamic response) => getJsonField(
        response,
        r'''$.current.humidity''',
      );
  dynamic currentcloud(dynamic response) => getJsonField(
        response,
        r'''$.current.cloud''',
      );
  dynamic currentfeelslikec(dynamic response) => getJsonField(
        response,
        r'''$.current.feelslike_c''',
      );
  dynamic currentfeelslikef(dynamic response) => getJsonField(
        response,
        r'''$.current.feelslike_f''',
      );
  dynamic currentviskm(dynamic response) => getJsonField(
        response,
        r'''$.current.vis_km''',
      );
  dynamic currentvismiles(dynamic response) => getJsonField(
        response,
        r'''$.current.vis_miles''',
      );
  dynamic currentuv(dynamic response) => getJsonField(
        response,
        r'''$.current.uv''',
      );
}

class SearchOrAutocompleteWeatherAPICall {
  Future<ApiCallResponse> call({
    String? place = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search or Autocomplete Weather API',
      apiUrl: '${WeatherGroup.baseUrl}/search.json?q=${place}',
      callType: ApiCallType.GET,
      headers: {
        ...WeatherGroup.headers,
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'weatherapi-com.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
      );
  dynamic region(dynamic response) => getJsonField(
        response,
        r'''$[:].region''',
      );
  dynamic country(dynamic response) => getJsonField(
        response,
        r'''$[:].country''',
      );
  dynamic lat(dynamic response) => getJsonField(
        response,
        r'''$[:].lat''',
      );
  dynamic lon(dynamic response) => getJsonField(
        response,
        r'''$[:].lon''',
      );
  dynamic url(dynamic response) => getJsonField(
        response,
        r'''$[:].url''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
}

/// End Weather Group Code

/// Start Tripadvisor Group Code

class TripadvisorGroup {
  static String baseUrl = 'https://tripadvisor16.p.rapidapi.com/api/v1';
  static Map<String, String> headers = {
    'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
    'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
  };
  static SearchAirportAPICall searchAirportAPICall = SearchAirportAPICall();
  static GetFiltersAPICall getFiltersAPICall = GetFiltersAPICall();
  static SearchFlightsAPICall searchFlightsAPICall = SearchFlightsAPICall();
  static SearchLocationAPICall searchLocationAPICall = SearchLocationAPICall();
  static GetHotelsFilterAPICall getHotelsFilterAPICall =
      GetHotelsFilterAPICall();
}

class SearchAirportAPICall {
  Future<ApiCallResponse> call({
    String? place = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Airport API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/flights/searchAirport?query=${place}',
      callType: ApiCallType.GET,
      headers: {
        ...TripadvisorGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetFiltersAPICall {
  Future<ApiCallResponse> call({
    String? sourceAirportCode = '',
    String? destinationAirportCode = '',
    String? date = '',
    String? itineraryType = '',
    String? classOfService = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Filters API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/flights/getFilters?sourceAirportCode=${sourceAirportCode}&destinationAirportCode=${destinationAirportCode}&date=${date}&itineraryType=${itineraryType}&classOfService=${classOfService}',
      callType: ApiCallType.GET,
      headers: {
        ...TripadvisorGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SearchFlightsAPICall {
  Future<ApiCallResponse> call({
    String? sourceAirportCode = '',
    String? destinationAirportCode = '',
    String? date = '',
    String? itineraryType = '',
    String? sortOrder = '',
    int? numAdults,
    int? numSeniors,
    String? classOfService = '',
    int? pageNumber,
    String? currencyCode = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Flights API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/flights/searchFlights?sourceAirportCode=${sourceAirportCode}& destinationAirportCode=${destinationAirportCode}& date=${date}& itineraryType=${itineraryType}& sortOrder=${sortOrder}& numAdults=${numAdults}& numSeniors=${numSeniors}& classOfService=${classOfService}& pageNumber=${pageNumber}& currencyCode=${currencyCode}',
      callType: ApiCallType.GET,
      headers: {
        ...TripadvisorGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SearchLocationAPICall {
  Future<ApiCallResponse> call({
    String? place = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Location API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/hotels/searchLocation?query=${place}',
      callType: ApiCallType.GET,
      headers: {
        ...TripadvisorGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetHotelsFilterAPICall {
  Future<ApiCallResponse> call({
    int? latitude,
    int? longitude,
    String? checkIn = '',
    String? checkOut = '',
    int? pageNumber,
    String? currencyCode = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Hotels Filter API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/hotels/searchHotelsByLocation?latitude=${latitude}&longitude=${longitude}&checkIn=${checkIn}&checkOut=${checkOut}&pageNumber=${pageNumber}&currencyCode=${currencyCode}',
      callType: ApiCallType.GET,
      headers: {
        ...TripadvisorGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Tripadvisor Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
