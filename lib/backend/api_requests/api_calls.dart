import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
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
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Realtime Weather API',
      apiUrl: '${WeatherGroup.baseUrl}/current.json?q=$place',
      callType: ApiCallType.GET,
      headers: {
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
  dynamic locationlat(dynamic response) => getJsonField(
        response,
        r'''$.location.lat''',
      );
  dynamic locationlon(dynamic response) => getJsonField(
        response,
        r'''$.location.lon''',
      );
}

class SearchOrAutocompleteWeatherAPICall {
  Future<ApiCallResponse> call({
    String? place = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search or Autocomplete Weather API',
      apiUrl: '${WeatherGroup.baseUrl}/search.json?q=$place',
      callType: ApiCallType.GET,
      headers: {
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
  static SearchHotelsAPICall searchHotelsAPICall = SearchHotelsAPICall();
  static SearchHotelsByLocationAPICall searchHotelsByLocationAPICall =
      SearchHotelsByLocationAPICall();
  static GetHotelDetailsCall getHotelDetailsCall = GetHotelDetailsCall();
  static SearchRestaurantLocationAPICall searchRestaurantLocationAPICall =
      SearchRestaurantLocationAPICall();
  static SearchRestaurantsAPICall searchRestaurantsAPICall =
      SearchRestaurantsAPICall();
  static GetRestaurantDetailsAPICall getRestaurantDetailsAPICall =
      GetRestaurantDetailsAPICall();
  static GetCurrencyAPICall getCurrencyAPICall = GetCurrencyAPICall();
}

class SearchAirportAPICall {
  Future<ApiCallResponse> call({
    String? place = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Airport API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/flights/searchAirport?query=$place',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
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
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Filters API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/flights/getFilters?sourceAirportCode=$sourceAirportCode&destinationAirportCode=$destinationAirportCode&date=$date&itineraryType=$itineraryType&classOfService=$classOfService',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
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
    String? currencyCode = '',
    int? pageNumber,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Flights API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/flights/searchFlights?sourceAirportCode=$sourceAirportCode&destinationAirportCode=$destinationAirportCode&date=$date&itineraryType=$itineraryType&sortOrder=$sortOrder&numAdults=$numAdults&numSeniors=$numSeniors&classOfService=$classOfService&pageNumber=$pageNumber&currencyCode=$currencyCode',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic originStationCode(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].originStationCode''',
        true,
      );
  dynamic destinationStationCode(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].destinationStationCode''',
        true,
      );
  dynamic isDifferentOriginStation(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].isDifferentOriginStation''',
        true,
      );
  dynamic isDifferentDestinationStation(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].isDifferentDestinationStation''',
        true,
      );
  dynamic departureDateTime(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].departureDateTime''',
        true,
      );
  dynamic arrivalDateTime(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].arrivalDateTime''',
        true,
      );
  dynamic classOfService(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].classOfService''',
        true,
      );
  dynamic marketingCarrierCode(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].marketingCarrierCode''',
        true,
      );
  dynamic operatingCarrierCode(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].operatingCarrierCode''',
        true,
      );
  dynamic amenities(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].amenities''',
        true,
      );
  dynamic flightNumber(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].flightNumber''',
        true,
      );
  dynamic numStops(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].numStops''',
        true,
      );
  dynamic distanceInKM(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].distanceInKM''',
        true,
      );
  dynamic seatGuruAirlineUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].seatGuruAirlineUrl''',
        true,
      );
  dynamic seatGuruEquipmentId(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].seatGuruEquipmentId''',
        true,
      );
  dynamic isInternational(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].isInternational''',
        true,
      );
  dynamic selfTransfer(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].selfTransfer''',
        true,
      );
  dynamic operatingCarrierlogoUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].operatingCarrier.logoUrl''',
        true,
      );
  dynamic operatingCarrierdisplayName(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].legs[:].operatingCarrier.displayName''',
        true,
      );
  dynamic durationType(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].layovers[:].durationType''',
        true,
      );
  dynamic hasStationChange(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].layovers[:].hasStationChange''',
        true,
      );
  dynamic durationInMinutes(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].segments[:].layovers[:].durationInMinutes''',
        true,
      );
  dynamic purchaseLinkId(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].purchaseLinkId''',
        true,
      );
  dynamic providerId(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].providerId''',
        true,
      );
  dynamic partnerSuppliedProviderid(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].partnerSuppliedProvider.id''',
        true,
      );
  dynamic commerceName(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].commerceName''',
        true,
      );
  dynamic originalCurrency(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].originalCurrency''',
        true,
      );
  dynamic seatAvailability(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].seatAvailability''',
        true,
      );
  dynamic taxesAndFeesPerPassenger(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].taxesAndFeesPerPassenger''',
        true,
      );
  dynamic taxesAndFees(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].taxesAndFees''',
        true,
      );
  dynamic totalPrice(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].totalPrice''',
        true,
      );
  dynamic totalPricePerPassenger(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].totalPricePerPassenger''',
        true,
      );
  dynamic purchaseLinksurl(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].url''',
        true,
      );
  dynamic isPaid(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].isPaid''',
        true,
      );
  dynamic fareBasisCodes(dynamic response) => getJsonField(
        response,
        r'''$.data.flights[:].purchaseLinks[:].fareBasisCodes''',
        true,
      );
  dynamic totalNumResults(dynamic response) => getJsonField(
        response,
        r'''$.data.totalNumResults''',
      );
  dynamic numOfFilters(dynamic response) => getJsonField(
        response,
        r'''$.data.numOfFilters''',
      );
}

class SearchLocationAPICall {
  Future<ApiCallResponse> call({
    String? place = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Location API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/hotels/searchLocation?query=$place',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data[:].title''',
      );
  dynamic geoId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].geoId''',
      );
  dynamic documentId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].documentId''',
      );
  dynamic trackingItems(dynamic response) => getJsonField(
        response,
        r'''$.data[:].trackingItems''',
      );
  dynamic secondaryText(dynamic response) => getJsonField(
        response,
        r'''$.data[:].secondaryText''',
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class GetHotelsFilterAPICall {
  Future<ApiCallResponse> call({
    String? geoId = '',
    String? checkIn = '',
    String? checkOut = '',
    String? latitude = '',
    String? longitude = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Hotels Filter API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/hotels/searchHotelsByLocation?geoId=$geoId&checkIn=$checkIn&checkOut=$checkOut&latitude=$latitude&longitude=$longitude',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  dynamic sortDisclaimer(dynamic response) => getJsonField(
        response,
        r'''$.data.sortDisclaimer''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].id''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].title''',
        true,
      );
  dynamic primaryInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].primaryInfo''',
        true,
      );
  dynamic secondaryInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].secondaryInfo''',
        true,
      );
  dynamic bubbleRatingcount(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].bubbleRating.count''',
        true,
      );
  dynamic rating(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].bubbleRating.rating''',
        true,
      );
  dynamic isSponsored(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].isSponsored''',
        true,
      );
  dynamic accentedLabel(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].accentedLabel''',
        true,
      );
  dynamic provider(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].provider''',
        true,
      );
  dynamic badge(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].badge''',
        true,
      );
  dynamic priceForDisplay(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].priceForDisplay''',
        true,
      );
  dynamic strikethroughPrice(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].strikethroughPrice''',
        true,
      );
  dynamic priceDetails(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].priceDetails''',
        true,
      );
  dynamic priceSummary(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].priceSummary''',
        true,
      );
  dynamic cardPhotostypename(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].__typename''',
        true,
      );
  dynamic sizestypename(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].sizes.__typename''',
        true,
      );
  dynamic sizesmaxHeight(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].sizes.maxHeight''',
        true,
      );
  dynamic sizesmaxWidth(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].sizes.maxWidth''',
        true,
      );
  dynamic sizesurlTemplate(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].sizes.urlTemplate''',
        true,
      );
  dynamic commerceInfoprovider(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.provider''',
        true,
      );
  dynamic loadingMessagetext(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.loadingMessage.text''',
        true,
      );
  dynamic commerceInfopriceForDisplay(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.priceForDisplay''',
        true,
      );
  dynamic commerceInfostrikethroughPrice(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.strikethroughPrice''',
        true,
      );
  dynamic pricingPeriod(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.pricingPeriod''',
        true,
      );
  dynamic commerceInfodetails(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.details''',
        true,
      );
  dynamic commerceSummary(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.commerceSummary''',
        true,
      );
  dynamic roomUrgencyMessage(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.roomUrgencyMessage''',
        true,
      );
  dynamic commerceInfolabels(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.labels''',
        true,
      );
}

class SearchHotelsAPICall {
  Future<ApiCallResponse> call({
    String? geoId = '',
    String? checkIn = '',
    String? checkOut = '',
    int? pageNumber,
    String? currencyCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Hotels API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/hotels/searchHotels?geoId=$geoId&checkIn=$checkIn&checkOut=$checkOut&pageNumber=$pageNumber&currencyCode=$currencyCode',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  dynamic sortDisclaimer(dynamic response) => getJsonField(
        response,
        r'''$.data.sortDisclaimer''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].id''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].title''',
        true,
      );
  dynamic primaryInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].primaryInfo''',
        true,
      );
  dynamic secondaryInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].secondaryInfo''',
        true,
      );
  dynamic badgesize(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].badge.size''',
        true,
      );
  dynamic badgetype(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].badge.type''',
        true,
      );
  dynamic badgeyear(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].badge.year''',
        true,
      );
  dynamic bubbleRatingcount(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].bubbleRating.count''',
        true,
      );
  dynamic bubbleRating(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].bubbleRating.rating''',
        true,
      );
  dynamic isSponsored(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].isSponsored''',
        true,
      );
  dynamic accentedLabel(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].accentedLabel''',
        true,
      );
  dynamic provider(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].provider''',
        true,
      );
  dynamic priceForDisplay(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].priceForDisplay''',
        true,
      );
  dynamic strikethroughPrice(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].strikethroughPrice''',
        true,
      );
  dynamic priceDetails(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].priceDetails''',
        true,
      );
  dynamic priceSummary(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].priceSummary''',
        true,
      );
  dynamic cardPhotostypename(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].__typename''',
        true,
      );
  dynamic sizestypename(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].sizes.__typename''',
        true,
      );
  dynamic maxHeight(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].sizes.maxHeight''',
        true,
      );
  dynamic maxWidth(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].sizes.maxWidth''',
        true,
      );
  dynamic urlTemplate(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].sizes.urlTemplate''',
        true,
      );
  dynamic commerceInfoexternalUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.externalUrl''',
        true,
      );
  dynamic commerceInfoprovider(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.provider''',
        true,
      );
  dynamic loadingMessage(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.loadingMessage''',
        true,
      );
  dynamic commerceInfopriceForDisplay(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.priceForDisplay''',
        true,
      );
  dynamic priceForDisplaytext(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.priceForDisplay.text''',
        true,
      );
  dynamic strikethroughPricetext(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.strikethroughPrice.text''',
        true,
      );
  dynamic pricingPeriod(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.pricingPeriod''',
        true,
      );
  dynamic commerceInfodetailstext(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.details.text''',
        true,
      );
  dynamic commerceSummary(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.commerceSummary''',
        true,
      );
  dynamic roomUrgencyMessage(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.roomUrgencyMessage''',
        true,
      );
  dynamic commerceInfolabels(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.labels''',
        true,
      );
}

class SearchHotelsByLocationAPICall {
  Future<ApiCallResponse> call({
    String? latitude = '',
    String? longitude = '',
    String? checkIn = '',
    String? checkOut = '',
    String? currencyCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Hotels By Location API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/hotels/searchHotelsByLocation?latitude=$latitude&longitude=$longitude&checkIn=$checkIn&checkOut=$checkOut&currencyCode=$currencyCode',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  dynamic sortDisclaimer(dynamic response) => getJsonField(
        response,
        r'''$.data.sortDisclaimer''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].id''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].title''',
        true,
      );
  dynamic primaryInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].primaryInfo''',
        true,
      );
  dynamic secondaryInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].secondaryInfo''',
        true,
      );
  dynamic badge(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].badge''',
        true,
      );
  dynamic bubbleRatingcount(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].bubbleRating.count''',
        true,
      );
  dynamic bubbleRating(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].bubbleRating.rating''',
        true,
      );
  dynamic isSponsored(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].isSponsored''',
        true,
      );
  dynamic accentedLabel(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].accentedLabel''',
        true,
      );
  dynamic provider(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].provider''',
        true,
      );
  dynamic priceForDisplay(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].priceForDisplay''',
        true,
      );
  dynamic strikethroughPrice(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].strikethroughPrice''',
        true,
      );
  dynamic priceDetails(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].priceDetails''',
        true,
      );
  dynamic priceSummary(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].priceSummary''',
        true,
      );
  dynamic cardPhotostypename(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].__typename''',
        true,
      );
  dynamic sizestypename(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].sizes.__typename''',
        true,
      );
  dynamic maxHeight(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].sizes.maxHeight''',
        true,
      );
  dynamic maxWidth(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].sizes.maxWidth''',
        true,
      );
  dynamic urlTemplate(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].cardPhotos[:].sizes.urlTemplate''',
        true,
      );
  dynamic externalUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.externalUrl''',
        true,
      );
  dynamic commerceInfoprovider(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.provider''',
        true,
      );
  dynamic loadingMessage(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.loadingMessage''',
        true,
      );
  dynamic priceForDisplaytext(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.priceForDisplay.text''',
        true,
      );
  dynamic debugValueKey(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.priceForDisplay.debugValueKey''',
        true,
      );
  dynamic commerceInfostrikethroughPrice(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.strikethroughPrice''',
        true,
      );
  dynamic pricingPeriod(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.pricingPeriod''',
        true,
      );
  dynamic commerceInfodetailstext(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.details.text''',
        true,
      );
  dynamic commerceSummary(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.commerceSummary''',
        true,
      );
  dynamic roomUrgencyMessage(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.roomUrgencyMessage''',
        true,
      );
  dynamic commerceInfolabels(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].commerceInfo.labels''',
        true,
      );
}

class GetHotelDetailsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? checkIn = '',
    String? checkOut = '',
    String? currency = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Hotel Details',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/hotels/getHotelDetails?id=$id&checkIn=$checkIn&checkOut=$checkOut&currency=$currency',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  dynamic maxHeight(dynamic response) => getJsonField(
        response,
        r'''$.data.photos[:].maxHeight''',
        true,
      );
  dynamic maxWidth(dynamic response) => getJsonField(
        response,
        r'''$.data.photos[:].maxWidth''',
        true,
      );
  dynamic photosurlTemplate(dynamic response) => getJsonField(
        response,
        r'''$.data.photos[:].urlTemplate''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data.title''',
      );
  dynamic rating(dynamic response) => getJsonField(
        response,
        r'''$.data.rating''',
      );
  dynamic numberReviews(dynamic response) => getJsonField(
        response,
        r'''$.data.numberReviews''',
      );
  dynamic rankingDetails(dynamic response) => getJsonField(
        response,
        r'''$.data.rankingDetails''',
      );
  dynamic displayPrice(dynamic response) => getJsonField(
        response,
        r'''$.data.price.displayPrice''',
      );
  dynamic pricestatus(dynamic response) => getJsonField(
        response,
        r'''$.data.price.status''',
      );
  dynamic providerName(dynamic response) => getJsonField(
        response,
        r'''$.data.price.providerName''',
      );
  dynamic contenttitle(dynamic response) => getJsonField(
        response,
        r'''$.data.about.content[:].title''',
        true,
      );
  dynamic abouttags(dynamic response) => getJsonField(
        response,
        r'''$.data.about.tags''',
        true,
      );
  dynamic aboutcontent(dynamic response) => getJsonField(
        response,
        r'''$.data.about.content[:].content''',
        true,
      );
  dynamic reviewscontenttitle(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.content[:].title''',
        true,
      );
  dynamic reviewscontenttext(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.content[:].text''',
        true,
      );
  dynamic bubbleRatingText(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.content[:].bubbleRatingText''',
        true,
      );
  dynamic publishedDate(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.content[:].publishedDate''',
        true,
      );
  dynamic reviewsdeprecatedContributionCount(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.content[:].userProfile.deprecatedContributionCount''',
        true,
      );
  dynamic userProfileavatarmaxHeight(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.content[:].userProfile.avatar.maxHeight''',
        true,
      );
  dynamic avatarmaxWidth(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.content[:].userProfile.avatar.maxWidth''',
        true,
      );
  dynamic avatarurlTemplate(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.content[:].userProfile.avatar.urlTemplate''',
        true,
      );
  dynamic reviewsphotos(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.content[:].photos''',
        true,
      );
  dynamic reviewscount(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.count''',
      );
  dynamic reviewsratingValue(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.ratingValue''',
      );
  dynamic averageratingCountspercentage(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.ratingCounts.average.percentage''',
      );
  dynamic averageratingCounts(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.ratingCounts.average.count''',
      );
  dynamic excellentratingCountspercentage(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.ratingCounts.excellent.percentage''',
      );
  dynamic excellentratingCounts(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.ratingCounts.excellent.count''',
      );
  dynamic poorratingCountspercentage(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.ratingCounts.poor.percentage''',
      );
  dynamic poorratingCounts(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.ratingCounts.poor.count''',
      );
  dynamic terribleratingCountspercentage(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.ratingCounts.terrible.percentage''',
      );
  dynamic terribleratingCounts(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.ratingCounts.terrible.count''',
      );
  dynamic veryGoodratingCountspercentage(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.ratingCounts.veryGood.percentage''',
      );
  dynamic veryGoodratingCounts(dynamic response) => getJsonField(
        response,
        r'''$.data.reviews.ratingCounts.veryGood.count''',
      );
  dynamic locationtitle(dynamic response) => getJsonField(
        response,
        r'''$.data.location.title''',
      );
  dynamic locationaddress(dynamic response) => getJsonField(
        response,
        r'''$.data.location.address''',
      );
  dynamic locationneighborhood(dynamic response) => getJsonField(
        response,
        r'''$.data.location.neighborhood''',
      );
  dynamic gettingTheretitle(dynamic response) => getJsonField(
        response,
        r'''$.data.location.gettingThere.title''',
      );
  dynamic gettingTherecontent(dynamic response) => getJsonField(
        response,
        r'''$.data.location.gettingThere.content''',
        true,
      );
  dynamic geoPointlatitude(dynamic response) => getJsonField(
        response,
        r'''$.data.geoPoint.latitude''',
      );
  dynamic geoPointlongitude(dynamic response) => getJsonField(
        response,
        r'''$.data.geoPoint.longitude''',
      );
  dynamic restaurantsNearbysectionTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.restaurantsNearby.sectionTitle''',
      );
  dynamic restaurantsNearbytitle(dynamic response) => getJsonField(
        response,
        r'''$.data.restaurantsNearby.content[:].title''',
        true,
      );
  dynamic restaurantsNearbyrating(dynamic response) => getJsonField(
        response,
        r'''$.data.restaurantsNearby.content[:].bubbleRating.rating''',
        true,
      );
  dynamic restaurantsNearbynumberReviews(dynamic response) => getJsonField(
        response,
        r'''$.data.restaurantsNearby.content[:].bubbleRating.numberReviews''',
        true,
      );
  dynamic restaurantsNearbyprimaryInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.restaurantsNearby.content[:].primaryInfo''',
        true,
      );
  dynamic restaurantsNearbydistance(dynamic response) => getJsonField(
        response,
        r'''$.data.restaurantsNearby.content[:].distance''',
        true,
      );
  dynamic cardPhotomaxHeight(dynamic response) => getJsonField(
        response,
        r'''$.data.restaurantsNearby.content[:].cardPhoto.maxHeight''',
        true,
      );
  dynamic cardPhotomaxWidth(dynamic response) => getJsonField(
        response,
        r'''$.data.restaurantsNearby.content[:].cardPhoto.maxWidth''',
        true,
      );
  dynamic cardPhotourlTemplate(dynamic response) => getJsonField(
        response,
        r'''$.data.restaurantsNearby.content[:].cardPhoto.urlTemplate''',
        true,
      );
  dynamic attractionsNearbysectionTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.attractionsNearby.sectionTitle''',
      );
  dynamic attractionsNearbytitle(dynamic response) => getJsonField(
        response,
        r'''$.data.attractionsNearby.content[:].title''',
        true,
      );
  dynamic attractionsNearbyrating(dynamic response) => getJsonField(
        response,
        r'''$.data.attractionsNearby.content[:].bubbleRating.rating''',
        true,
      );
  dynamic attractionsNearbynumberReviews(dynamic response) => getJsonField(
        response,
        r'''$.data.attractionsNearby.content[:].bubbleRating.numberReviews''',
        true,
      );
  dynamic attractionsNearbyprimaryInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.attractionsNearby.content[:].primaryInfo''',
        true,
      );
  dynamic attractionsNearbydistance(dynamic response) => getJsonField(
        response,
        r'''$.data.attractionsNearby.content[:].distance''',
        true,
      );
  dynamic photomaxHeight(dynamic response) => getJsonField(
        response,
        r'''$.data.attractionsNearby.content[:].cardPhoto.maxHeight''',
        true,
      );
  dynamic photomaxWidth(dynamic response) => getJsonField(
        response,
        r'''$.data.attractionsNearby.content[:].cardPhoto.maxWidth''',
        true,
      );
  dynamic photourlTemplate(dynamic response) => getJsonField(
        response,
        r'''$.data.attractionsNearby.content[:].cardPhoto.urlTemplate''',
        true,
      );
  dynamic qAcontenttitle(dynamic response) => getJsonField(
        response,
        r'''$.data.qA.content[:].title''',
        true,
      );
  dynamic qAwrittenDate(dynamic response) => getJsonField(
        response,
        r'''$.data.qA.content[:].writtenDate''',
        true,
      );
  dynamic topAnswertext(dynamic response) => getJsonField(
        response,
        r'''$.data.qA.content[:].topAnswer.text''',
        true,
      );
  dynamic topAnswerwrittenDate(dynamic response) => getJsonField(
        response,
        r'''$.data.qA.content[:].topAnswer.writtenDate''',
        true,
      );
  dynamic thumbsUpCount(dynamic response) => getJsonField(
        response,
        r'''$.data.qA.content[:].topAnswer.thumbsUpCount''',
        true,
      );
  dynamic displayProfileName(dynamic response) => getJsonField(
        response,
        r'''$.data.qA.content[:].topAnswer.memberProfile.displayName''',
        true,
      );
  dynamic hometown(dynamic response) => getJsonField(
        response,
        r'''$.data.qA.content[:].topAnswer.memberProfile.hometown''',
        true,
      );
  dynamic profileImagemaxHeight(dynamic response) => getJsonField(
        response,
        r'''$.data.qA.content[:].topAnswer.memberProfile.profileImage.maxHeight''',
        true,
      );
  dynamic profileImagemaxWidth(dynamic response) => getJsonField(
        response,
        r'''$.data.qA.content[:].topAnswer.memberProfile.profileImage.maxWidth''',
        true,
      );
  dynamic profileImageurlTemplate(dynamic response) => getJsonField(
        response,
        r'''$.data.qA.content[:].topAnswer.memberProfile.profileImage.urlTemplate''',
        true,
      );
  dynamic contributionCounts(dynamic response) => getJsonField(
        response,
        r'''$.data.qA.content[:].topAnswer.memberProfile.contributionCounts''',
        true,
      );
  dynamic deprecatedContributionCount(dynamic response) => getJsonField(
        response,
        r'''$.data.qA.content[:].topAnswer.memberProfile.deprecatedContributionCount''',
      );
  dynamic amenitiesScreentitle(dynamic response) => getJsonField(
        response,
        r'''$.data.amenitiesScreen[:].title''',
        true,
      );
  dynamic amenitiesScreencontent(dynamic response) => getJsonField(
        response,
        r'''$.data.amenitiesScreen[:].content''',
        true,
      );
}

class SearchRestaurantLocationAPICall {
  Future<ApiCallResponse> call({
    String? place = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Restaurant Location API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/restaurant/searchLocation?query=$place',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic documentId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].documentId''',
        true,
      );
  dynamic propertyId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].propertyId''',
        true,
      );
  dynamic localizedName(dynamic response) => getJsonField(
        response,
        r'''$.data[:].localizedName''',
        true,
      );
  dynamic localizedAdditionalNames(dynamic response) => getJsonField(
        response,
        r'''$.data[:].localizedAdditionalNames.longOnlyHierarchy''',
        true,
      );
  dynamic streetAddress(dynamic response) => getJsonField(
        response,
        r'''$.data[:].streetAddress.street1''',
        true,
      );
  dynamic locationV2placeType(dynamic response) => getJsonField(
        response,
        r'''$.data[:].locationV2.placeType''',
        true,
      );
  dynamic longOnlyHierarchyTypeaheadV2(dynamic response) => getJsonField(
        response,
        r'''$.data[:].locationV2.names.longOnlyHierarchyTypeaheadV2''',
        true,
      );
  dynamic vacationRentalsRouteurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].locationV2.vacationRentalsRoute.url''',
        true,
      );
  dynamic placeType(dynamic response) => getJsonField(
        response,
        r'''$.data[:].placeType''',
        true,
      );
  dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.data[:].latitude''',
        true,
      );
  dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.data[:].longitude''',
        true,
      );
  dynamic isGeo(dynamic response) => getJsonField(
        response,
        r'''$.data[:].isGeo''',
        true,
      );
  dynamic maxWidth(dynamic response) => getJsonField(
        response,
        r'''$.data[:].thumbnail.photoSizeDynamic.maxWidth''',
        true,
      );
  dynamic maxHeight(dynamic response) => getJsonField(
        response,
        r'''$.data[:].thumbnail.photoSizeDynamic.maxHeight''',
        true,
      );
  dynamic urlTemplate(dynamic response) => getJsonField(
        response,
        r'''$.data[:].thumbnail.photoSizeDynamic.urlTemplate''',
        true,
      );
}

class SearchRestaurantsAPICall {
  Future<ApiCallResponse> call({
    String? locationId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Restaurants API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/restaurant/searchRestaurants?locationId=$locationId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  dynamic totalRecords(dynamic response) => getJsonField(
        response,
        r'''$.data.totalRecords''',
      );
  dynamic totalPages(dynamic response) => getJsonField(
        response,
        r'''$.data.totalPages''',
      );
  dynamic restaurantsId(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].restaurantsId''',
        true,
      );
  dynamic locationId(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].locationId''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].name''',
        true,
      );
  dynamic averageRating(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].averageRating''',
        true,
      );
  dynamic userReviewCount(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].userReviewCount''',
        true,
      );
  dynamic currentOpenStatusCategory(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].currentOpenStatusCategory''',
        true,
      );
  dynamic currentOpenStatusText(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].currentOpenStatusText''',
        true,
      );
  dynamic priceTag(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].priceTag''',
        true,
      );
  dynamic hasMenu(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].hasMenu''',
        true,
      );
  dynamic menuUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].menuUrl''',
        true,
      );
  dynamic isDifferentGeo(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].isDifferentGeo''',
        true,
      );
  dynamic parentGeoName(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].parentGeoName''',
        true,
      );
  dynamic distanceTo(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].distanceTo''',
        true,
      );
  dynamic awardInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].awardInfo''',
        true,
      );
  dynamic isLocalChefItem(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].isLocalChefItem''',
        true,
      );
  dynamic isPremium(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].isPremium''',
        true,
      );
  dynamic isStoryboardPublished(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].isStoryboardPublished''',
        true,
      );
  dynamic establishmentTypeAndCuisineTags(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].establishmentTypeAndCuisineTags''',
        true,
      );
  dynamic offers(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers''',
        true,
      );
  dynamic hasDelivery(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.hasDelivery''',
        true,
      );
  dynamic hasReservation(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.hasReservation''',
        true,
      );
  dynamic slot2Offer(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot2Offer''',
        true,
      );
  dynamic restaurantSpecialOffer(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.restaurantSpecialOffer''',
        true,
      );
  dynamic canProvideTimeslots(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.canProvideTimeslots''',
      );
  dynamic canLockTimeslots(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.canLockTimeslots''',
      );
  dynamic providerId(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.providerId''',
      );
  dynamic provider(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.provider''',
      );
  dynamic providerDisplayName(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.providerDisplayName''',
      );
  dynamic buttonText(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.buttonText''',
      );
  dynamic offerURL(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.offerURL''',
      );
  dynamic logoUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.logoUrl''',
      );
  dynamic trackingEvent(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.trackingEvent''',
      );
  dynamic timeSlotStatus(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.timeSlots[:].timeSlotStatus''',
        true,
      );
  dynamic promotion(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.timeSlots[:].promotion''',
        true,
      );
  dynamic dateTime(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.timeSlots[:].dateTime''',
        true,
      );
  dynamic offerId(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].offers.slot1Offer.timeSlots[:].offerId''',
        true,
      );
  dynamic heroImgUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].heroImgUrl''',
        true,
      );
  dynamic heroImgRawHeight(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].heroImgRawHeight''',
        true,
      );
  dynamic heroImgRawWidth(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].heroImgRawWidth''',
        true,
      );
  dynamic squareImgUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].squareImgUrl''',
        true,
      );
  dynamic squareImgRawLength(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].squareImgRawLength''',
        true,
      );
  dynamic photoSizeDynamicmaxHeight(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].thumbnail.photo.photoSizeDynamic.maxHeight''',
        true,
      );
  dynamic photoSizeDynamicmaxWidth(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].thumbnail.photo.photoSizeDynamic.maxWidth''',
        true,
      );
  dynamic photoSizeDynamicurlTemplate(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].thumbnail.photo.photoSizeDynamic.urlTemplate''',
        true,
      );
  dynamic photoSizeswidth(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].thumbnail.photo.photoSizes[:].width''',
        true,
      );
  dynamic photoSizesheight(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].thumbnail.photo.photoSizes[:].height''',
        true,
      );
  dynamic photoSizesurl(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].thumbnail.photo.photoSizes[:].url''',
        true,
      );
  dynamic reviewText(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].reviewSnippets.reviewSnippetsList[:].reviewText''',
        true,
      );
  dynamic reviewUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.data[:].reviewSnippets.reviewSnippetsList[:].reviewUrl''',
        true,
      );
  dynamic currentPage(dynamic response) => getJsonField(
        response,
        r'''$.data.currentPage''',
      );
}

class GetRestaurantDetailsAPICall {
  Future<ApiCallResponse> call({
    String? restaurantsId = '',
    String? currencyCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Restaurant Details API',
      apiUrl:
          '${TripadvisorGroup.baseUrl}/restaurant/getRestaurantDetails?restaurantsId=$restaurantsId&currencyCode=$currencyCode',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  dynamic locationid(dynamic response) => getJsonField(
        response,
        r'''$.data.location.location_id''',
      );
  dynamic locationname(dynamic response) => getJsonField(
        response,
        r'''$.data.location.name''',
      );
  dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.data.location.latitude''',
      );
  dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.data.location.longitude''',
      );
  dynamic numreviews(dynamic response) => getJsonField(
        response,
        r'''$.data.location.num_reviews''',
      );
  dynamic timezone(dynamic response) => getJsonField(
        response,
        r'''$.data.location.timezone''',
      );
  dynamic locationstring(dynamic response) => getJsonField(
        response,
        r'''$.data.location.location_string''',
      );
  dynamic doubleclickzone(dynamic response) => getJsonField(
        response,
        r'''$.data.location.doubleclick_zone''',
      );
  dynamic awards(dynamic response) => getJsonField(
        response,
        r'''$.data.location.awards''',
        true,
      );
  dynamic preferredmapengine(dynamic response) => getJsonField(
        response,
        r'''$.data.location.preferred_map_engine''',
      );
  dynamic rawranking(dynamic response) => getJsonField(
        response,
        r'''$.data.location.raw_ranking''',
      );
  dynamic rankinggeo(dynamic response) => getJsonField(
        response,
        r'''$.data.location.ranking_geo''',
      );
  dynamic rankinggeoid(dynamic response) => getJsonField(
        response,
        r'''$.data.location.ranking_geo_id''',
      );
  dynamic rankingposition(dynamic response) => getJsonField(
        response,
        r'''$.data.location.ranking_position''',
      );
  dynamic rankingdenominator(dynamic response) => getJsonField(
        response,
        r'''$.data.location.ranking_denominator''',
      );
  dynamic rankingcategory(dynamic response) => getJsonField(
        response,
        r'''$.data.location.ranking_category''',
      );
  dynamic locationranking(dynamic response) => getJsonField(
        response,
        r'''$.data.location.ranking''',
      );
  dynamic locationrating(dynamic response) => getJsonField(
        response,
        r'''$.data.location.rating''',
      );
  dynamic locationisclosed(dynamic response) => getJsonField(
        response,
        r'''$.data.location.is_closed''',
      );
  dynamic opennowtext(dynamic response) => getJsonField(
        response,
        r'''$.data.location.open_now_text''',
      );
  dynamic islongclosed(dynamic response) => getJsonField(
        response,
        r'''$.data.location.is_long_closed''',
      );
  dynamic pricelevel(dynamic response) => getJsonField(
        response,
        r'''$.data.location.price_level''',
      );
  dynamic locationprice(dynamic response) => getJsonField(
        response,
        r'''$.data.location.price''',
      );
  dynamic neighborhoodinfolocationid(dynamic response) => getJsonField(
        response,
        r'''$.data.location.neighborhood_info[:].location_id''',
        true,
      );
  dynamic neighborhoodinfoname(dynamic response) => getJsonField(
        response,
        r'''$.data.location.neighborhood_info[:].name''',
        true,
      );
  dynamic locationweburl(dynamic response) => getJsonField(
        response,
        r'''$.data.location.web_url''',
      );
  dynamic locationwritereview(dynamic response) => getJsonField(
        response,
        r'''$.data.location.write_review''',
      );
  dynamic ancestorssubcategorykey(dynamic response) => getJsonField(
        response,
        r'''$.data.location.ancestors[:].subcategory[:].key''',
        true,
      );
  dynamic ancestorssubcategoryname(dynamic response) => getJsonField(
        response,
        r'''$.data.location.ancestors[:].subcategory[:].name''',
        true,
      );
  dynamic ancestorsname(dynamic response) => getJsonField(
        response,
        r'''$.data.location.ancestors[:].name''',
        true,
      );
  dynamic abbrv(dynamic response) => getJsonField(
        response,
        r'''$.data.location.ancestors[:].abbrv''',
        true,
      );
  dynamic ancestorslocationid(dynamic response) => getJsonField(
        response,
        r'''$.data.location.ancestors[:].location_id''',
        true,
      );
  dynamic locationcategorykey(dynamic response) => getJsonField(
        response,
        r'''$.data.location.category.key''',
      );
  dynamic locationcategoryname(dynamic response) => getJsonField(
        response,
        r'''$.data.location.category.name''',
      );
  dynamic subcategorykey(dynamic response) => getJsonField(
        response,
        r'''$.data.location.subcategory[:].key''',
      );
  dynamic subcategoryname(dynamic response) => getJsonField(
        response,
        r'''$.data.location.subcategory[:].name''',
      );
  dynamic parentdisplayname(dynamic response) => getJsonField(
        response,
        r'''$.data.location.parent_display_name''',
      );
  dynamic isjfyenabled(dynamic response) => getJsonField(
        response,
        r'''$.data.location.is_jfy_enabled''',
      );
  dynamic nearestmetrostation(dynamic response) => getJsonField(
        response,
        r'''$.data.location.nearest_metro_station''',
        true,
      );
  dynamic locationphone(dynamic response) => getJsonField(
        response,
        r'''$.data.location.phone''',
      );
  dynamic addressobjstreet1(dynamic response) => getJsonField(
        response,
        r'''$.data.location.address_obj.street1''',
      );
  dynamic addressobjcity(dynamic response) => getJsonField(
        response,
        r'''$.data.location.address_obj.city''',
      );
  dynamic addressobjstate(dynamic response) => getJsonField(
        response,
        r'''$.data.location.address_obj.state''',
      );
  dynamic addressobjcountry(dynamic response) => getJsonField(
        response,
        r'''$.data.location.address_obj.country''',
      );
  dynamic addressobjpostalcode(dynamic response) => getJsonField(
        response,
        r'''$.data.location.address_obj.postalcode''',
      );
  dynamic locationaddress(dynamic response) => getJsonField(
        response,
        r'''$.data.location.address''',
      );
  dynamic weekrangesopentime(dynamic response) => getJsonField(
        response,
        r'''$.data.location.hours.week_ranges[:][:].open_time''',
        true,
      );
  dynamic weekrangesclosetime(dynamic response) => getJsonField(
        response,
        r'''$.data.location.hours.week_ranges[:][:].close_time''',
        true,
      );
  dynamic locationhourstimezone(dynamic response) => getJsonField(
        response,
        r'''$.data.location.hours.timezone''',
      );
  dynamic iscandidateforcontactinfosuppression(dynamic response) =>
      getJsonField(
        response,
        r'''$.data.location.is_candidate_for_contact_info_suppression''',
      );
  dynamic cuisinekey(dynamic response) => getJsonField(
        response,
        r'''$.data.location.cuisine[:].key''',
        true,
      );
  dynamic cuisinename(dynamic response) => getJsonField(
        response,
        r'''$.data.location.cuisine[:].name''',
        true,
      );
  dynamic dietaryrestrictionskey(dynamic response) => getJsonField(
        response,
        r'''$.data.location.dietary_restrictions[:].key''',
      );
  dynamic dietaryrestrictionsname(dynamic response) => getJsonField(
        response,
        r'''$.data.location.dietary_restrictions[:].name''',
      );
  dynamic locationphotoid(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.id''',
      );
  dynamic locationphotocaption(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.caption''',
      );
  dynamic locationphotopublisheddate(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.published_date''',
      );
  dynamic photohelpfulvotes(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.helpful_votes''',
      );
  dynamic photoisblessed(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.is_blessed''',
      );
  dynamic photouploadeddate(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.uploaded_date''',
      );
  dynamic photosmallurl(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.small.url''',
      );
  dynamic photosmallwidth(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.small.width''',
      );
  dynamic photosmallheight(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.small.height''',
      );
  dynamic photothumbnailurl(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.thumbnail.url''',
      );
  dynamic photothumbnailwidth(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.thumbnail.width''',
      );
  dynamic photothumbnailheight(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.thumbnail.height''',
      );
  dynamic photoimagesoriginalurl(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.original.url''',
      );
  dynamic photooriginalwidth(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.original.width''',
      );
  dynamic photooriginalheight(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.original.height''',
      );
  dynamic photolargeurl(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.large.url''',
      );
  dynamic photolargewidth(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.large.width''',
      );
  dynamic photolargeheight(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.large.height''',
      );
  dynamic photomediumurl(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.medium.url''',
      );
  dynamic photomediumwidth(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.medium.width''',
      );
  dynamic photomediumheight(dynamic response) => getJsonField(
        response,
        r'''$.data.location.photo.images.medium.height''',
      );
  dynamic displayhoursdays(dynamic response) => getJsonField(
        response,
        r'''$.data.location.display_hours[:].days''',
      );
  dynamic displayhourstimes(dynamic response) => getJsonField(
        response,
        r'''$.data.location.display_hours[:].times''',
        true,
      );
  dynamic hoursopenStatus(dynamic response) => getJsonField(
        response,
        r'''$.data.hours.openStatus''',
      );
  dynamic hoursopenStatusText(dynamic response) => getJsonField(
        response,
        r'''$.data.hours.openStatusText''',
      );
  dynamic hourshoursTodayText(dynamic response) => getJsonField(
        response,
        r'''$.data.hours.hoursTodayText''',
      );
  dynamic currentHoursText(dynamic response) => getJsonField(
        response,
        r'''$.data.hours.currentHoursText''',
      );
  dynamic allOpenHoursdays(dynamic response) => getJsonField(
        response,
        r'''$.data.hours.allOpenHours[:].days''',
      );
  dynamic allOpenHourstimes(dynamic response) => getJsonField(
        response,
        r'''$.data.hours.allOpenHours[:].times''',
        true,
      );
  dynamic addHoursLinkurl(dynamic response) => getJsonField(
        response,
        r'''$.data.hours.addHoursLink.url''',
      );
  dynamic addHoursLinktext(dynamic response) => getJsonField(
        response,
        r'''$.data.hours.addHoursLink.text''',
      );
  dynamic ownerStatusisVerified(dynamic response) => getJsonField(
        response,
        r'''$.data.ownerStatus.isVerified''',
      );
  dynamic isMemberOwner(dynamic response) => getJsonField(
        response,
        r'''$.data.ownerStatus.isMemberOwner''',
      );
  dynamic isUserInCountry(dynamic response) => getJsonField(
        response,
        r'''$.data.ownerStatus.isUserInCountry''',
      );
  dynamic ownerLikelihoodisOwner(dynamic response) => getJsonField(
        response,
        r'''$.data.ownerLikelihood.isOwner''',
      );
  dynamic ownerLikelihood(dynamic response) => getJsonField(
        response,
        r'''$.data.ownerLikelihood.likelihood''',
      );
  dynamic overviewname(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.name''',
      );
  dynamic overviewdetailId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailId''',
      );
  dynamic overviewgeo(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.geo''',
      );
  dynamic overviewgeoId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.geoId''',
      );
  dynamic overviewisOwner(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.isOwner''',
      );
  dynamic overviewwarUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.links.warUrl''',
      );
  dynamic overviewaddPhotoUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.links.addPhotoUrl''',
      );
  dynamic ownerAddPhotoUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.links.ownerAddPhotoUrl''',
      );
  dynamic overviewlatitude(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.location.latitude''',
      );
  dynamic overviewlongitude(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.location.longitude''',
      );
  dynamic overviewdirectionsUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.location.directionsUrl''',
      );
  dynamic overviewlandmark(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.location.landmark''',
      );
  dynamic overviewneighborhood(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.location.neighborhood''',
      );
  dynamic overviewcontactaddress(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.contact.address''',
      );
  dynamic overviewcontactphone(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.contact.phone''',
      );
  dynamic primaryRankingtotalCount(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.rating.primaryRanking.totalCount''',
      );
  dynamic primaryRankingcategory(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.rating.primaryRanking.category''',
      );
  dynamic primaryRankingrank(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.rating.primaryRanking.rank''',
      );
  dynamic primaryRankinggeo(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.rating.primaryRanking.geo''',
      );
  dynamic primaryRankingurl(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.rating.primaryRanking.url''',
      );
  dynamic overviewprimaryRating(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.rating.primaryRating''',
      );
  dynamic overviewreviewCount(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.rating.reviewCount''',
      );
  dynamic ratingQuestionsname(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.rating.ratingQuestions[:].name''',
        true,
      );
  dynamic ratingQuestionsrating(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.rating.ratingQuestions[:].rating''',
        true,
      );
  dynamic ratingQuestionsicon(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.rating.ratingQuestions[:].icon''',
        true,
      );
  dynamic overviewtags(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.tags''',
      );
  dynamic priceRangetagCategoryId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.priceRange.tagCategoryId''',
      );
  dynamic priceRangetagId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.priceRange.tags[:].tagId''',
      );
  dynamic priceRangetagValue(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.priceRange.tags[:].tagValue''',
      );
  dynamic cuisinestagCategoryId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.cuisines.tagCategoryId''',
      );
  dynamic cuisinestagId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.cuisines.tags[:].tagId''',
        true,
      );
  dynamic cuisinestagValue(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.cuisines.tags[:].tagValue''',
        true,
      );
  dynamic dietaryRestrictionsCategoryId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.dietaryRestrictions.tagCategoryId''',
      );
  dynamic dietaryRestrictionstagId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.dietaryRestrictions.tags[:].tagId''',
      );
  dynamic dietaryRestrictionstagValue(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.dietaryRestrictions.tags[:].tagValue''',
      );
  dynamic mealstagCategoryId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.meals.tagCategoryId''',
      );
  dynamic mealstagId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.meals.tags[:].tagId''',
        true,
      );
  dynamic mealstagValue(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.meals.tags[:].tagValue''',
        true,
      );
  dynamic featurestagCategoryId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.features.tagCategoryId''',
      );
  dynamic featurestagId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.features.tags[:].tagId''',
        true,
      );
  dynamic featurestagValue(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.features.tags[:].tagValue''',
        true,
      );
  dynamic establishmentTypeCategoryId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.establishmentType.tagCategoryId''',
      );
  dynamic establishmentTypetagId(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.establishmentType.tags[:].tagId''',
      );
  dynamic establishmentTypetagValue(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.tagTexts.establishmentType.tags[:].tagValue''',
      );
  dynamic detailCardnumericalPrice(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.numericalPrice''',
      );
  dynamic detailCardimproveListingUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.improveListingUrl''',
      );
  dynamic detailCardupdateListingUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.overview.detailCard.updateListingUrl''',
      );
}

class GetCurrencyAPICall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Currency API',
      apiUrl: '${TripadvisorGroup.baseUrl}/getCurrency',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  dynamic minorCurrenciesname(dynamic response) => getJsonField(
        response,
        r'''$.data.minorCurrencies[:].name''',
        true,
      );
  dynamic minorCurrenciessymbol(dynamic response) => getJsonField(
        response,
        r'''$.data.minorCurrencies[:].symbol''',
        true,
      );
  dynamic minorCurrenciesCode(dynamic response) => getJsonField(
        response,
        r'''$.data.minorCurrencies[:].currencyCode''',
        true,
      );
  dynamic majorCurrenciesname(dynamic response) => getJsonField(
        response,
        r'''$.data.majorCurrencies[:].name''',
        true,
      );
  dynamic majorCurrenciessymbol(dynamic response) => getJsonField(
        response,
        r'''$.data.majorCurrencies[:].symbol''',
        true,
      );
  dynamic majorCurrenciesCode(dynamic response) => getJsonField(
        response,
        r'''$.data.majorCurrencies[:].currencyCode''',
        true,
      );
}

/// End Tripadvisor Group Code

/// Start Travel Advisor API Group Code

class TravelAdvisorAPIGroup {
  static String baseUrl = 'https://travel-advisor.p.rapidapi.com';
  static Map<String, String> headers = {
    'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
    'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
  };
  static LocationsAutoCompleteAPICall locationsAutoCompleteAPICall =
      LocationsAutoCompleteAPICall();
  static LocationsSearchAPICall locationsSearchAPICall =
      LocationsSearchAPICall();
  static LocationsListNearbyAPICall locationsListNearbyAPICall =
      LocationsListNearbyAPICall();
  static LocationsAutoCompleteDeprecatedAPICall
      locationsAutoCompleteDeprecatedAPICall =
      LocationsAutoCompleteDeprecatedAPICall();
  static LocationsSearchDeprecatingAPICall locationsSearchDeprecatingAPICall =
      LocationsSearchDeprecatingAPICall();
  static HotelFilterListAPICall hotelFilterListAPICall =
      HotelFilterListAPICall();
  static HotelsListAPICall hotelsListAPICall = HotelsListAPICall();
  static HotelsGetDetailsAPICall hotelsGetDetailsAPICall =
      HotelsGetDetailsAPICall();
  static HotelsGetOffersAPICall hotelsGetOffersAPICall =
      HotelsGetOffersAPICall();
  static HotelsListByLatLngAPICall hotelsListByLatLngAPICall =
      HotelsListByLatLngAPICall();
  static HotelsListInBoundaryAPICall hotelsListInBoundaryAPICall =
      HotelsListInBoundaryAPICall();
  static HotelsListAPIDeprecatedCall hotelsListAPIDeprecatedCall =
      HotelsListAPIDeprecatedCall();
  static HotelFiltersListAPIDeprecatedCall hotelFiltersListAPIDeprecatedCall =
      HotelFiltersListAPIDeprecatedCall();
  static HotelsGetDetailsAPIDeprecatedCall hotelsGetDetailsAPIDeprecatedCall =
      HotelsGetDetailsAPIDeprecatedCall();
  static RestaurantFiltersListAPICall restaurantFiltersListAPICall =
      RestaurantFiltersListAPICall();
  static RestaurantsListAPICall restaurantsListAPICall =
      RestaurantsListAPICall();
  static RestaurantsGetDetailsAPICall restaurantsGetDetailsAPICall =
      RestaurantsGetDetailsAPICall();
  static RestaurantsListByLatLngAPICall restaurantsListByLatLngAPICall =
      RestaurantsListByLatLngAPICall();
  static RestaurantsListInBoundaryAPICall restaurantsListInBoundaryAPICall =
      RestaurantsListInBoundaryAPICall();
  static RestaurantsListAPIDeprecatedCall restaurantsListAPIDeprecatedCall =
      RestaurantsListAPIDeprecatedCall();
  static RestaurantsGetDetailsAPIDeprecatedCall
      restaurantsGetDetailsAPIDeprecatedCall =
      RestaurantsGetDetailsAPIDeprecatedCall();
  static AttractionFiltersListAPICall attractionFiltersListAPICall =
      AttractionFiltersListAPICall();
  static AttractionsListAPICall attractionsListAPICall =
      AttractionsListAPICall();
  static AttractionsGetDetailsAPICall attractionsGetDetailsAPICall =
      AttractionsGetDetailsAPICall();
  static AttractionsGetOptionsAPICall attractionsGetOptionsAPICall =
      AttractionsGetOptionsAPICall();
  static AttractionsListByLatLngAPICall attractionsListByLatLngAPICall =
      AttractionsListByLatLngAPICall();
  static AttractionsListInBoundaryAPICall attractionsListInBoundaryAPICall =
      AttractionsListInBoundaryAPICall();
  static AttractionsListAPIDepracatedCall attractionsListAPIDepracatedCall =
      AttractionsListAPIDepracatedCall();
  static AttractionsGetDetailsAPIDeprecatedCall
      attractionsGetDetailsAPIDeprecatedCall =
      AttractionsGetDetailsAPIDeprecatedCall();
  static ReviewsListAPICall reviewsListAPICall = ReviewsListAPICall();
  static PhotosListAPICall photosListAPICall = PhotosListAPICall();
  static QuestionsListAPICall questionsListAPICall = QuestionsListAPICall();
  static AnswersListAPICall answersListAPICall = AnswersListAPICall();
  static KeywordsListAPICall keywordsListAPICall = KeywordsListAPICall();
  static TipsListAPICall tipsListAPICall = TipsListAPICall();
  static ReviewsListDeprecatedCall reviewsListDeprecatedCall =
      ReviewsListDeprecatedCall();
  static PhotosListAPIDeprecatedCall photosListAPIDeprecatedCall =
      PhotosListAPIDeprecatedCall();
  static QuestionsListAPIDeprecatedCall questionsListAPIDeprecatedCall =
      QuestionsListAPIDeprecatedCall();
  static AnswersListDeprecatedAPICall answersListDeprecatedAPICall =
      AnswersListDeprecatedAPICall();
  static AirportsSearchAPICall airportsSearchAPICall = AirportsSearchAPICall();
  static FlightsCreateSessionAPICall flightsCreateSessionAPICall =
      FlightsCreateSessionAPICall();
  static FlightsPollAPICall flightsPollAPICall = FlightsPollAPICall();
  static FlightsGetBookingUrlAPICall flightsGetBookingUrlAPICall =
      FlightsGetBookingUrlAPICall();
  static AttractionProductListAPICall attractionProductListAPICall =
      AttractionProductListAPICall();
  static AttractionProductFiltersListAPICall
      attractionProductFiltersListAPICall =
      AttractionProductFiltersListAPICall();
  static AttractionProductsGetDetailsAPICall
      attractionProductsGetDetailsAPICall =
      AttractionProductsGetDetailsAPICall();
  static AttractionProductsCheckAvailabilityAPICall
      attractionProductsCheckAvailabilityAPICall =
      AttractionProductsCheckAvailabilityAPICall();
}

class LocationsAutoCompleteAPICall {
  Future<ApiCallResponse> call({
    String? place = '',
    String? language = '',
    String? distanceInKm = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Locations Auto Complete API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/locations/v2/auto-complete?query=$place&lang=$language&units=$distanceInKm',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic typename(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.__typename''',
      );
  dynamic resultsId(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.resultsId''',
      );
  dynamic resultstypename(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].__typename''',
        true,
      );
  dynamic resultsdocumentId(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].documentId''',
        true,
      );
  dynamic resultssuggestionType(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].suggestionType''',
        true,
      );
  dynamic resultsbuCategory(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].buCategory''',
        true,
      );
  dynamic resultstext(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].text''',
        true,
      );
  dynamic parentGeoDetails(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].parentGeoDetails.__typename''',
        true,
      );
  dynamic parentGeoDetailsnames(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].parentGeoDetails.names.__typename''',
        true,
      );
  dynamic longOnlyHierarchyTypeaheadV2(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].parentGeoDetails.names.longOnlyHierarchyTypeaheadV2''',
        true,
      );
  dynamic routetypename(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].route.__typename''',
        true,
      );
  dynamic resultsroutepage(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].route.page''',
        true,
      );
  dynamic resultsrouteurl(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].route.url''',
        true,
      );
  dynamic nonCanonicalUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].route.nonCanonicalUrl''',
        true,
      );
  dynamic typedParamstypename(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].route.typedParams.__typename''',
        true,
      );
  dynamic scopeType(dynamic response) => getJsonField(
        response,
        r'''$.data.Typeahead_autocomplete.results[:].scopeType''',
        true,
      );
}

class LocationsSearchAPICall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? updateToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "query": "$query",
  "updateToken": "$updateToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Locations  Search API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/locations/v2/search',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic typename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.__typename''',
      );
  dynamic containertypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.container.__typename''',
      );
  dynamic searchTitletypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.container.searchTitle.__typename''',
      );
  dynamic searchTitlestring(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.container.searchTitle.string''',
      );
  dynamic sectionstypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.sections[:].__typename''',
        true,
      );
  dynamic listTitletypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.sections[:].listTitle.__typename''',
        true,
      );
  dynamic listTitlestring(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.sections[:].listTitle.string''',
        true,
      );
  dynamic debugValueKey(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.sections[:].listTitle.debugValueKey''',
        true,
      );
  dynamic subTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.sections[:].subTitle''',
        true,
      );
  dynamic trackingTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.sections[:].trackingTitle''',
        true,
      );
  dynamic sectionstrackingKey(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.sections[:].trackingKey''',
        true,
      );
  dynamic stableDiffingType(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.sections[:].stableDiffingType''',
        true,
      );
  dynamic clusterId(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.sections[:].clusterId''',
        true,
      );
  dynamic tooltip(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.sections[:].tooltip''',
        true,
      );
  dynamic seeAll(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.sections[:].seeAll''',
        true,
      );
  dynamic label(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.sections[:].label''',
        true,
      );
  dynamic statusV2typename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.statusV2.__typename''',
      );
  dynamic statusV2partial(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.statusV2.partial''',
      );
  dynamic updatedClusterIds(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.updatedClusterIds''',
        true,
      );
  dynamic trackingKey(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppSearch.trackingKey''',
      );
}

class LocationsListNearbyAPICall {
  Future<ApiCallResponse> call({
    String? rating = '',
    String? restaurant = '',
    String? placetype = '',
    String? hotel = '',
    double? latitude,
    double? longitude,
    String? attraction = '',
  }) async {
    final ffApiRequestBody = '''
{
  "contentId": "cc8fc7b8-88ed-47d3-a70e-0de9991f6604",
  "contentType": "$placetype",
  "filters": [
    {
      "id": "$placetype",
      "value": [
        "$hotel",
        "$attraction",
        "$restaurant"
      ]
    },
    {
      "id": "$rating",
      "value": [
        "30"
      ]
    }
  ],
  "boundingBox": {
    "northEastCorner": {
      "latitude": $latitude,
      "longitude": $longitude
    },
    "southWestCorner": {
      "latitude": $latitude,
      "longitude": $longitude
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Locations List Nearby API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/locations/v2/list-nearby',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic typename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.__typename''',
      );
  dynamic filterstypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.__typename''',
      );
  dynamic showAllTexttypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.showAllText.__typename''',
      );
  dynamic showAllTextstring(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.showAllText.string''',
      );
  dynamic availableFilterGroups(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].__typename''',
      );
  dynamic availableFilterGroupsname(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].name''',
      );
  dynamic groupType(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].groupType''',
      );
  dynamic availableFilterGroupstypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].__typename''',
      );
  dynamic filterstrackingKey(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].trackingKey''',
      );
  dynamic filterstrackingTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].trackingTitle''',
      );
  dynamic filterstitle(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].title''',
      );
  dynamic filtersname(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].name''',
      );
  dynamic filterssurfaces(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].surfaces''',
        true,
      );
  dynamic filtersvaluestypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].values[:].__typename''',
        true,
      );
  dynamic filtersvalue(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].values[:].value''',
        true,
      );
  dynamic filtersvalueisDisabled(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].values[:].isDisabled''',
        true,
      );
  dynamic filtersvalueisSelected(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].values[:].isSelected''',
        true,
      );
  dynamic filtersobjecttypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].values[:].object.__typename''',
        true,
      );
  dynamic filtersobjectplaceType(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].values[:].object.placeType''',
        true,
      );
  dynamic filtersobjecttitle(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].values[:].object.title''',
        true,
      );
  dynamic selectedAccessibilityStringtypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].values[:].selectedAccessibilityString.__typename''',
        true,
      );
  dynamic selectedAccessibilityStringstring(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].values[:].selectedAccessibilityString.string''',
        true,
      );
  dynamic unselectedAccessibilityStringtypename(dynamic response) =>
      getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].values[:].unselectedAccessibilityString.__typename''',
        true,
      );
  dynamic unselectedAccessibilityStringstring(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].filters[:].values[:].unselectedAccessibilityString.string''',
        true,
      );
  dynamic availableFilterGroupstrackingKey(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].trackingKey''',
      );
  dynamic availableFilterGroupstrackingTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.filters.availableFilterGroups[:].trackingTitle''',
      );
  dynamic skippedSections(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.skippedSections''',
        true,
      );
  dynamic containertypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.container.__typename''',
      );
  dynamic containernavTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.container.navTitle''',
      );
  dynamic impressionstypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.impressions[:].__typename''',
      );
  dynamic impressionsdata(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.impressions[:].data''',
      );
  dynamic statusV2typename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.statusV2.__typename''',
      );
  dynamic statusV2partial(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.statusV2.partial''',
      );
  dynamic commercetypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.__typename''',
      );
  dynamic attractionCommercetypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.attractionCommerce.__typename''',
      );
  dynamic attractionCommercesetByUser(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.attractionCommerce.setByUser''',
      );
  dynamic attractionCommercestartDate(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.attractionCommerce.startDate''',
      );
  dynamic attractionCommerceendDate(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.attractionCommerce.endDate''',
      );
  dynamic paxtypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.attractionCommerce.pax[:].__typename''',
      );
  dynamic paxcount(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.attractionCommerce.pax[:].count''',
      );
  dynamic paxageBand(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.attractionCommerce.pax[:].ageBand''',
      );
  dynamic hotelCommercetypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.hotelCommerce.__typename''',
      );
  dynamic hotelCommercesetByUser(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.hotelCommerce.setByUser''',
      );
  dynamic hotelCommercecheckIn(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.hotelCommerce.checkIn''',
      );
  dynamic hotelCommercecheckOut(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.hotelCommerce.checkOut''',
      );
  dynamic roomstypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.hotelCommerce.rooms[:].__typename''',
      );
  dynamic roomsadults(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.hotelCommerce.rooms[:].adults''',
      );
  dynamic roomschildrenAges(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.hotelCommerce.rooms[:].childrenAges''',
        true,
      );
  dynamic restaurantCommercetypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.restaurantCommerce.__typename''',
      );
  dynamic restaurantCommercesetByUser(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.restaurantCommerce.setByUser''',
      );
  dynamic restaurantCommercepartySize(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.restaurantCommerce.partySize''',
      );
  dynamic restaurantCommercereservationTime(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.restaurantCommerce.reservationTime''',
      );
  dynamic commercelastUpdated(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.commerce.lastUpdated''',
      );
  dynamic updatedClusterIds(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryNearToALocation.updatedClusterIds''',
        true,
      );
}

class LocationsAutoCompleteDeprecatedAPICall {
  Future<ApiCallResponse> call({
    String? place = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Locations Auto Complete Deprecated API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/locations/auto-complete?query=$place',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic resulttype(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_type''',
        true,
      );
  dynamic locationid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.location_id''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.name''',
        true,
      );
  dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.latitude''',
        true,
      );
  dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.longitude''',
        true,
      );
  dynamic timezone(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.timezone''',
        true,
      );
  dynamic locationstring(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.location_string''',
        true,
      );
  dynamic imagessmallwidth(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.small.width''',
        true,
      );
  dynamic imagessmallurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.small.url''',
        true,
      );
  dynamic imagessmallheight(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.small.height''',
        true,
      );
  dynamic photothumbnailwidth(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.thumbnail.width''',
        true,
      );
  dynamic photothumbnailurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.thumbnail.url''',
        true,
      );
  dynamic photothumbnailheight(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.thumbnail.height''',
        true,
      );
  dynamic photooriginalwidth(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.original.width''',
        true,
      );
  dynamic photooriginalurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.original.url''',
        true,
      );
  dynamic photooriginalheight(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.original.height''',
        true,
      );
  dynamic photolargewidth(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.large.width''',
        true,
      );
  dynamic photolargeurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.large.url''',
        true,
      );
  dynamic photolargeheight(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.large.height''',
        true,
      );
  dynamic photomediumwidth(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.medium.width''',
        true,
      );
  dynamic photomediumurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.medium.url''',
        true,
      );
  dynamic photomediumheight(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.medium.height''',
        true,
      );
  dynamic photoisblessed(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.is_blessed''',
        true,
      );
  dynamic photouploadeddate(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.uploaded_date''',
        true,
      );
  dynamic photocaption(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.caption''',
        true,
      );
  dynamic photoid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.id''',
        true,
      );
  dynamic photohelpfulvotes(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.helpful_votes''',
        true,
      );
  dynamic photopublisheddate(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.published_date''',
        true,
      );
  dynamic photouserid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.user.user_id''',
        true,
      );
  dynamic photomemberid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.user.member_id''',
        true,
      );
  dynamic photousertype(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.user.type''',
        true,
      );
  dynamic defaultoptionskey(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.default_options[:].key''',
        true,
      );
  dynamic defaultoptionsnames(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.default_options[:].name''',
        true,
      );
  dynamic geotype(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.geo_type''',
        true,
      );
  dynamic locationsubtype(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.location_subtype''',
        true,
      );
  dynamic hasrestaurantcoverpage(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.has_restaurant_coverpage''',
        true,
      );
  dynamic hasattractioncoverpage(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.has_attraction_coverpage''',
        true,
      );
  dynamic hascuratedshoppinglist(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.has_curated_shopping_list''',
        true,
      );
  dynamic showaddress(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.show_address''',
        true,
      );
  dynamic preferredmapengine(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.preferred_map_engine''',
        true,
      );
  dynamic resultobjectdescription(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.description''',
        true,
      );
  dynamic subcategorykey(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.ancestors[:].subcategory[:].key''',
        true,
      );
  dynamic subcategoryname(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.ancestors[:].subcategory[:].name''',
        true,
      );
  dynamic ancestorsname(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.ancestors[:].name''',
        true,
      );
  dynamic ancestorsabbrv(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.ancestors[:].abbrv''',
        true,
      );
  dynamic ancestorslocationid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.ancestors[:].location_id''',
        true,
      );
  dynamic parentdisplayname(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.parent_display_name''',
        true,
      );
  dynamic guidecount(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.guide_count''',
        true,
      );
  dynamic scope(dynamic response) => getJsonField(
        response,
        r'''$.data[:].scope''',
        true,
      );
  dynamic partialcontent(dynamic response) => getJsonField(
        response,
        r'''$.partial_content''',
      );
}

class LocationsSearchDeprecatingAPICall {
  Future<ApiCallResponse> call({
    String? place = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Locations Search Deprecating API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/locations/search?query=$place',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.paging.results''',
      );
  dynamic pagingtotalresults(dynamic response) => getJsonField(
        response,
        r'''$.paging.total_results''',
      );
  dynamic searchid(dynamic response) => getJsonField(
        response,
        r'''$.tracking.search_id''',
      );
  dynamic partialcontent(dynamic response) => getJsonField(
        response,
        r'''$.partial_content''',
      );
  dynamic selected(dynamic response) => getJsonField(
        response,
        r'''$.sort[:].selected''',
        true,
      );
  dynamic localeindependentlabel(dynamic response) => getJsonField(
        response,
        r'''$.sort[:].locale_independent_label''',
        true,
      );
  dynamic label(dynamic response) => getJsonField(
        response,
        r'''$.sort[:].label''',
        true,
      );
  dynamic filterkey(dynamic response) => getJsonField(
        response,
        r'''$.sort[:].filter_key''',
        true,
      );
  dynamic metadatascope(dynamic response) => getJsonField(
        response,
        r'''$.metadata.scope''',
      );
  dynamic istopresult(dynamic response) => getJsonField(
        response,
        r'''$.data[:].is_top_result''',
      );
  dynamic datascope(dynamic response) => getJsonField(
        response,
        r'''$.data[:].scope''',
        true,
      );
  dynamic hascuratedshoppinglist(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.has_curated_shopping_list''',
        true,
      );
  dynamic hasrestaurantcoverpage(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.has_restaurant_coverpage''',
        true,
      );
  dynamic hasattractioncoverpage(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.has_attraction_coverpage''',
        true,
      );
  dynamic nearestmetrostation(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.nearest_metro_station''',
        true,
      );
  dynamic resultobjectsubcategorykey(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.subcategory[:].key''',
        true,
      );
  dynamic resultobjectsubcategoryname(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.subcategory[:].name''',
        true,
      );
  dynamic isjfyenabled(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.is_jfy_enabled''',
        true,
      );
  dynamic categorykey(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category.key''',
        true,
      );
  dynamic categoryname(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category.name''',
        true,
      );
  dynamic ancestorslocationid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.ancestors[:].location_id''',
        true,
      );
  dynamic ancestorssubcategorykey(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.ancestors[:].subcategory[:].key''',
        true,
      );
  dynamic ancestorssubcategoryname(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.ancestors[:].subcategory[:].name''',
        true,
      );
  dynamic ancestorsname(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.ancestors[:].name''',
        true,
      );
  dynamic resultobjectdescription(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.description''',
        true,
      );
  dynamic resultobjectweburl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.web_url''',
        true,
      );
  dynamic accommodationshotels(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category_counts.accommodations.hotels''',
        true,
      );
  dynamic bbsinns(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category_counts.accommodations.bbs_inns''',
        true,
      );
  dynamic accommodationsothers(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category_counts.accommodations.others''',
        true,
      );
  dynamic accommodationstotal(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category_counts.accommodations.total''',
        true,
      );
  dynamic neighborhoods(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category_counts.neighborhoods''',
        true,
      );
  dynamic airports(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category_counts.airports''',
        true,
      );
  dynamic restaurantstotal(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category_counts.restaurants.total''',
        true,
      );
  dynamic attractionsactivities(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category_counts.attractions.activities''',
        true,
      );
  dynamic categorycountsattractions(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category_counts.attractions.attractions''',
        true,
      );
  dynamic attractionsnightlife(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category_counts.attractions.nightlife''',
        true,
      );
  dynamic attractionsshopping(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category_counts.attractions.shopping''',
        true,
      );
  dynamic attractionstotal(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.category_counts.attractions.total''',
        true,
      );
  dynamic doubleclickzone(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.doubleclick_zone''',
        true,
      );
  dynamic preferredmapengine(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.preferred_map_engine''',
        true,
      );
  dynamic geotype(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.geo_type''',
        true,
      );
  dynamic photomemberid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.user.member_id''',
        true,
      );
  dynamic photousertype(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.user.type''',
        true,
      );
  dynamic photopublisheddate(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.published_date''',
        true,
      );
  dynamic photohelpfulvotes(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.helpful_votes''',
        true,
      );
  dynamic photoid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.id''',
        true,
      );
  dynamic photocaption(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.caption''',
        true,
      );
  dynamic photouploadeddate(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.uploaded_date''',
        true,
      );
  dynamic photoisblessed(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.is_blessed''',
        true,
      );
  dynamic photomediumheight(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.medium.height''',
        true,
      );
  dynamic photomediumurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.medium.url''',
        true,
      );
  dynamic photomediumwidth(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.medium.width''',
        true,
      );
  dynamic photolargeheight(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.large.height''',
        true,
      );
  dynamic photolargeurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.large.url''',
        true,
      );
  dynamic photolargewidth(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.large.width''',
        true,
      );
  dynamic photooriginalheight(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.original.height''',
        true,
      );
  dynamic photooriginalwidth(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.original.width''',
        true,
      );
  dynamic photooriginalurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.original.url''',
        true,
      );
  dynamic photothumbnailwidth(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.thumbnail.width''',
        true,
      );
  dynamic photothumbnailurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.thumbnail.url''',
        true,
      );
  dynamic photothumbnailheight(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.thumbnail.height''',
        true,
      );
  dynamic photosmallwidth(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.small.width''',
        true,
      );
  dynamic photosmallurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.small.url''',
        true,
      );
  dynamic photosmallheight(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.photo.images.small.height''',
        true,
      );
  dynamic resultobjectlocationid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.location_id''',
        true,
      );
  dynamic resultobjectlongitude(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.longitude''',
        true,
      );
  dynamic resultobjectnumreviews(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.num_reviews''',
        true,
      );
  dynamic resultobjecttimezone(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.timezone''',
        true,
      );
  dynamic resultobjectlocationstring(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.location_string''',
        true,
      );
  dynamic resultobjectlatitude(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.latitude''',
        true,
      );
  dynamic resultobjectname(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_object.name''',
        true,
      );
  dynamic dataresulttype(dynamic response) => getJsonField(
        response,
        r'''$.data[:].result_type''',
        true,
      );
}

class HotelFilterListAPICall {
  Future<ApiCallResponse> call({
    int? geoId,
    String? checkIn = '',
    String? checkOut = '',
    String? sort = '',
    String? sortOrder = '',
    int? noOfPersons,
  }) async {
    final ffApiRequestBody = '''
{
  "geoId": $geoId,
  "checkIn": "$checkIn",
  "checkOut": "$checkOut",
  "sort": "$sort",
  "sortOrder": "$sortOrder",
  "filters": [
    {
      "id": "deals",
      "value": [
        "1",
        "2",
        "3"
      ]
    },
    {
      "id": "price",
      "value": [
        "31",
        "122"
      ]
    },
    {
      "id": "type",
      "value": [
        "9189",
        "9201"
      ]
    },
    {
      "id": "amenity",
      "value": [
        "9156",
        "9658",
        "21778",
        "9176"
      ]
    },
    {
      "id": "distFrom",
      "value": [
        "2227712",
        "25.0"
      ]
    },
    {
      "id": "rating",
      "value": [
        "40"
      ]
    },
    {
      "id": "class",
      "value": [
        "9572"
      ]
    }
  ],
  "rooms": [
    {
      "adults": $noOfPersons,
      "childrenAges": [
        2
      ]
    },
    {
      "adults": $noOfPersons,
      "childrenAges": [
        3
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Hotel Filter List API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/hotel-filters/v2/list',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].name''',
      );
  dynamic groupType(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].groupType''',
      );
  dynamic typename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].__typename''',
        true,
      );
  dynamic trackingKey(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].trackingKey''',
        true,
      );
  dynamic filterstrackingTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].trackingTitle''',
        true,
      );
  dynamic filterstitle(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].title''',
        true,
      );
  dynamic filtersname(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].name''',
        true,
      );
  dynamic filterssurfaces(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].surfaces''',
        true,
      );
  dynamic filterstooltip(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].tooltip''',
        true,
      );
  dynamic filtersvaluestypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].values[:].__typename''',
        true,
      );
  dynamic filtersvaluescount(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].values[:].count''',
        true,
      );
  dynamic filtersvalue(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].values[:].value''',
        true,
      );
  dynamic valuesisDisabled(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].values[:].isDisabled''',
        true,
      );
  dynamic valuesisSelected(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].values[:].isSelected''',
        true,
      );
  dynamic objecttypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].values[:].object.__typename''',
        true,
      );
  dynamic objecttext(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].filters[:].values[:].object.text''',
        true,
      );
  dynamic availableFilterGroupstrackingKey(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].trackingKey''',
      );
  dynamic trackingTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].filters.availableFilterGroups[:].trackingTitle''',
      );
  dynamic availableSortstypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].availableSorts[:].__typename''',
        true,
      );
  dynamic availableSortsisAscending(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].availableSorts[:].isAscending''',
        true,
      );
  dynamic availableSortsisSelected(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].availableSorts[:].isSelected''',
        true,
      );
  dynamic availableSortsname(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].availableSorts[:].name''',
        true,
      );
  dynamic availableSortssurfaces(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].availableSorts[:].surfaces''',
        true,
      );
  dynamic availableSortstrackingKey(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].availableSorts[:].trackingKey''',
        true,
      );
  dynamic availableSortstrackingTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].availableSorts[:].trackingTitle''',
        true,
      );
  dynamic availableSortstitletypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].availableSorts[:].title.__typename''',
        true,
      );
  dynamic availableSortstitlestring(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].availableSorts[:].title.string''',
        true,
      );
  dynamic titledebugValueKey(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].availableSorts[:].title.debugValueKey''',
        true,
      );
  dynamic tooltipV2(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].availableSorts[:].tooltipV2''',
        true,
      );
  dynamic statusV2typename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].statusV2.__typename''',
      );
  dynamic statusV2partial(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].statusV2.partial''',
      );
  dynamic pollingStatustypename(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].statusV2.pollingStatus.__typename''',
      );
  dynamic delayForNextPollInMillis(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].statusV2.pollingStatus.delayForNextPollInMillis''',
      );
  dynamic pollingStatusupdateToken(dynamic response) => getJsonField(
        response,
        r'''$.data.AppPresentation_queryAppListV2[:].statusV2.pollingStatus.updateToken''',
      );
}

class HotelsListAPICall {
  Future<ApiCallResponse> call({
    int? geoId,
    String? checkIn = '',
    String? checkOut = '',
    String? sort = '',
    String? sortOrder = '',
    int? noOfPersons,
    double? latitude,
    double? longitude,
  }) async {
    final ffApiRequestBody = '''
{
  "geoId": $geoId,
  "checkIn": "$checkIn",
  "checkOut": "$checkOut",
  "sort": "$sort",
  "sortOrder": "$sortOrder",
  "filters": [
    {
      "id": "deals",
      "value": [
        "1",
        "2",
        "3"
      ]
    },
    {
      "id": "price",
      "value": [
        "31",
        "122"
      ]
    },
    {
      "id": "type",
      "value": [
        "9189",
        "9201"
      ]
    },
    {
      "id": "amenity",
      "value": [
        "9156",
        "9658",
        "21778",
        "9176"
      ]
    },
    {
      "id": "distFrom",
      "value": [
        "2227712",
        "25.0"
      ]
    },
    {
      "id": "rating",
      "value": [
        "40"
      ]
    },
    {
      "id": "class",
      "value": [
        "9572"
      ]
    }
  ],
  "rooms": [
    {
      "adults": $noOfPersons,
      "childrenAges": [
        2
      ]
    },
    {
      "adults": $noOfPersons,
      "childrenAges": [
        3
      ]
    }
  ],
  "boundingBox": {
    "northEastCorner": {
      "latitude": $latitude,
      "longitude": $longitude
    },
    "southWestCorner": {
      "latitude": $latitude,
      "longitude": $longitude
    }
  },
  "updateToken": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Hotels List API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/hotels/v2/list',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class HotelsGetDetailsAPICall {
  Future<ApiCallResponse> call({
    String? checkIn = '',
    String? checkOut = '',
    int? noOfPersons,
  }) async {
    final ffApiRequestBody = '''
{
  "contentId": "7307357",
  "checkIn": "$checkIn",
  "checkOut": "$checkOut",
  "rooms": [
    {
      "adults": $noOfPersons,
      "childrenAges": [
        2
      ]
    },
    {
      "adults": $noOfPersons,
      "childrenAges": [
        3
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Hotels Get Details API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/hotels/v2/get-details',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class HotelsGetOffersAPICall {
  Future<ApiCallResponse> call({
    String? checkIn = '',
    String? chechOut = '',
    int? noOfPersons,
  }) async {
    final ffApiRequestBody = '''
{
  "detailId": 181939,
  "checkIn": "$checkIn",
  "checkOut": "$chechOut",
  "rooms": [
    {
      "adults": $noOfPersons,
      "childrenAges": []
    }
  ],
  "updateToken": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Hotels Get Offers API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/hotels/v2/get-offers',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class HotelsListByLatLngAPICall {
  Future<ApiCallResponse> call({
    double? latitude,
    double? longitude,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Hotels List By LatLng API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/hotels/list-by-latlng?latitude=$latitude&longitude=$longitude',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class HotelsListInBoundaryAPICall {
  Future<ApiCallResponse> call({
    double? blLatitude,
    double? blLongitude,
    double? trLongitude,
    double? trLatitude,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Hotels List In Boundary API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/hotels/list-in-boundary?bl_latitude=$blLatitude&bl_longitude=$blLongitude&tr_longitude=$trLongitude&tr_latitude=$trLatitude',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class HotelsListAPIDeprecatedCall {
  Future<ApiCallResponse> call({
    int? locationId,
    int? adults,
    int? rooms,
    int? nights,
    String? lang = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Hotels List API Deprecated ',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/hotels/list?location_id=$locationId&adults=$adults&rooms=$rooms&nights=$nights&lang=$lang',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class HotelFiltersListAPIDeprecatedCall {
  Future<ApiCallResponse> call({
    int? locationId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Hotel Filters List API Deprecated',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/hotel-filters/list?location_id=$locationId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class HotelsGetDetailsAPIDeprecatedCall {
  Future<ApiCallResponse> call({
    int? locationId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Hotels Get Details API Deprecated',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/hotels/get-details?location_id=$locationId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic locationid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].location_id''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      );
  dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.data[:].latitude''',
        true,
      );
  dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.data[:].longitude''',
        true,
      );
  dynamic locationstring(dynamic response) => getJsonField(
        response,
        r'''$.data[:].location_string''',
        true,
      );
  dynamic imagesoriginalurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].photo.images.original.url''',
        true,
      );
  dynamic photoid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].photo.id''',
        true,
      );
  dynamic ranking(dynamic response) => getJsonField(
        response,
        r'''$.data[:].ranking''',
        true,
      );
  dynamic rating(dynamic response) => getJsonField(
        response,
        r'''$.data[:].rating''',
        true,
      );
  dynamic price(dynamic response) => getJsonField(
        response,
        r'''$.data[:].price''',
        true,
      );
  dynamic hotelclass(dynamic response) => getJsonField(
        response,
        r'''$.data[:].hotel_class''',
        true,
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      );
  dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.data[:].phone''',
        true,
      );
  dynamic website(dynamic response) => getJsonField(
        response,
        r'''$.data[:].website''',
        true,
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.data[:].email''',
        true,
      );
  dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address''',
        true,
      );
  dynamic roomtipstext(dynamic response) => getJsonField(
        response,
        r'''$.data[:].room_tips[:].text''',
        true,
      );
}

class RestaurantFiltersListAPICall {
  Future<ApiCallResponse> call({
    int? geoId,
  }) async {
    final ffApiRequestBody = '''
{
  "geoId": $geoId,
  "partySize": 2,
  "reservationTime": "2022-03-07T20:00",
  "sort": "RELEVANCE",
  "sortOrder": "asc",
  "filters": [
    {
      "id": "establishment",
      "value": [
        "10591",
        "9900"
      ]
    },
    {
      "id": "option",
      "value": [
        "10602",
        "10870",
        "16547"
      ]
    },
    {
      "id": "meal",
      "value": [
        "10597"
      ]
    },
    {
      "id": "price",
      "value": [
        "10955"
      ]
    },
    {
      "id": "minRating",
      "value": [
        "40"
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Restaurant Filters List API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/restaurant-filters/v2/list',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RestaurantsListAPICall {
  Future<ApiCallResponse> call({
    int? geoId,
  }) async {
    final ffApiRequestBody = '''
{
  "geoId": $geoId,
  "partySize": 2,
  "reservationTime": "2022-03-07T20:00",
  "sort": "POPULARITY",
  "sortOrder": "desc",
  "filters": [
    {
      "id": "establishment",
      "value": [
        "10591"
      ]
    }
  ],
  "boundingBox": {
    "northEastCorner": {
      "latitude": 12.248278039408776,
      "longitude": 109.1981618106365
    },
    "southWestCorner": {
      "latitude": 12.243407232845051,
      "longitude": 109.1921640560031
    }
  },
  "updateToken": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Restaurants List API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/restaurants/v2/list',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RestaurantsGetDetailsAPICall {
  Future<ApiCallResponse> call({
    String? contentId = '',
    int? partySize,
  }) async {
    final ffApiRequestBody = '''
{
  "contentId": "$contentId",
  "reservationTime": "2022-03-07T20:00",
  "partySize": $partySize
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Restaurants Get Details API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/restaurants/v2/get-details',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RestaurantsListByLatLngAPICall {
  Future<ApiCallResponse> call({
    double? latitude,
    double? longitude,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Restaurants List By LatLng API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/restaurants/list-by-latlng?latitude=$latitude&longitude=$longitude',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RestaurantsListInBoundaryAPICall {
  Future<ApiCallResponse> call({
    double? blLatitude,
    double? blLongitude,
    double? trLatitude,
    double? trLongitude,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Restaurants List In Boundary API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/restaurants/list-in-boundary?bl_latitude=$blLatitude&bl_longitude=$blLongitude&tr_latitude=$trLatitude&tr_longitude=$trLongitude',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RestaurantsListAPIDeprecatedCall {
  Future<ApiCallResponse> call({
    int? locationId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Restaurants List API Deprecated',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/restaurants/list?location_id=$locationId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RestaurantsGetDetailsAPIDeprecatedCall {
  Future<ApiCallResponse> call({
    int? locationId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Restaurants Get Details API Deprecated',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/restaurants/get-details?location_id=$locationId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AttractionFiltersListAPICall {
  Future<ApiCallResponse> call({
    int? geoId,
  }) async {
    final ffApiRequestBody = '''
{
  "geoId": $geoId,
  "startDate": "2022-03-10",
  "endDate": "2022-03-15",
  "pax": [
    {
      "ageBand": "ADULT",
      "count": 2
    }
  ],
  "sort": "TRAVELER_FAVORITE_V2",
  "sortOrder": "asc",
  "filters": [
    {
      "id": "category",
      "value": [
        "40"
      ]
    },
    {
      "id": "rating",
      "value": [
        "40"
      ]
    },
    {
      "id": "navbar",
      "value": [
        "ATTRACTIONOVERVIEW:-true"
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Attraction Filters List API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/attraction-filters/v2/list',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AttractionsListAPICall {
  Future<ApiCallResponse> call({
    int? geoId,
  }) async {
    final ffApiRequestBody = '''
{
  "geoId": $geoId,
  "startDate": "2022-03-10",
  "endDate": "2022-03-15",
  "pax": [
    {
      "ageBand": "ADULT",
      "count": 2
    }
  ],
  "sort": "TRAVELER_FAVORITE_V2",
  "sortOrder": "asc",
  "filters": [
    {
      "id": "category",
      "value": [
        "40"
      ]
    },
    {
      "id": "rating",
      "value": [
        "40"
      ]
    },
    {
      "id": "navbar",
      "value": [
        "ATTRACTIONOVERVIEW:-true"
      ]
    }
  ],
  "boundingBox": {
    "northEastCorner": {
      "latitude": 12.248278039408776,
      "longitude": 109.1981618106365
    },
    "southWestCorner": {
      "latitude": 12.243407232845051,
      "longitude": 109.1921640560031
    }
  },
  "updateToken": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Attractions List API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/attractions/v2/list',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AttractionsGetDetailsAPICall {
  Future<ApiCallResponse> call({
    String? contentId = '',
    String? startDate = '',
    String? endDate = '',
    String? pax = '',
  }) async {
    final ffApiRequestBody = '''
{
  "contentId": "$contentId",
  "startDate": "$startDate",
  "endDate": "$endDate",
  "pax": [
    {
      "ageBand": "ADULT",
      "count": 2
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Attractions Get Details API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/attractions/v2/get-details',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AttractionsGetOptionsAPICall {
  Future<ApiCallResponse> call({
    String? contentId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "contentId": "$contentId",
  "contentType": "attraction_product",
  "startDate": "2022-03-01",
  "endDate": "2022-03-02",
  "pax": [
    {
      "ageBand": "ADULT",
      "count": 2
    }
  ],
  "updateToken": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Attractions Get Options API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/attractions/v2/get-options',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AttractionsListByLatLngAPICall {
  Future<ApiCallResponse> call({
    double? longitude,
    double? latitude,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Attractions List By LatLng API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/attractions/list-by-latlng? longitude=$longitude& latitude=$latitude',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AttractionsListInBoundaryAPICall {
  Future<ApiCallResponse> call({
    double? blLatitude,
    double? blLongitude,
    double? trLatitude,
    double? trLongitude,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Attractions List In Boundary API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/attractions/list-in-boundary?bl_latitude=$blLatitude& bl_longitude=$blLongitude&tr_latitude=$trLatitude& tr_longitude=$trLongitude',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AttractionsListAPIDepracatedCall {
  Future<ApiCallResponse> call({
    int? locationId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Attractions List API Depracated',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/attractions/list?location_id=$locationId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic placesdata(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic placename(dynamic response) => getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      );
  dynamic placeimageurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].photo.images.original.url''',
        true,
      );
  dynamic placephoto(dynamic response) => getJsonField(
        response,
        r'''$.data[:].photo''',
        true,
      );
  dynamic photoimages(dynamic response) => getJsonField(
        response,
        r'''$.data[:].photo.images''',
        true,
      );
  dynamic opennowtext(dynamic response) => getJsonField(
        response,
        r'''$.data[:].open_now_text''',
        true,
      );
  dynamic streetaddress1(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address_obj.street1''',
        true,
      );
  dynamic streetaddress2(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address_obj.street2''',
        true,
      );
  dynamic city(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address_obj.city''',
        true,
      );
  dynamic state(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address_obj.state''',
        true,
      );
  dynamic country(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address_obj.country''',
        true,
      );
  dynamic postalcode(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address_obj.postalcode''',
        true,
      );
  dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address''',
        true,
      );
  dynamic opentimings(dynamic response) => getJsonField(
        response,
        r'''$.data[:].hours.week_ranges[:][:].open_time''',
        true,
      );
  dynamic closetimings(dynamic response) => getJsonField(
        response,
        r'''$.data[:].hours.week_ranges[:][:].close_time''',
        true,
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      );
  dynamic rating(dynamic response) => getJsonField(
        response,
        r'''$.data[:].rating''',
        true,
      );
  dynamic ranking(dynamic response) => getJsonField(
        response,
        r'''$.data[:].ranking''',
        true,
      );
  dynamic rankingcategory(dynamic response) => getJsonField(
        response,
        r'''$.data[:].ranking_category''',
        true,
      );
  dynamic locationid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].ancestors[:].location_id''',
        true,
      );
  dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.paging.results''',
      );
  dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.data[:].latitude''',
        true,
      );
  dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.data[:].longitude''',
        true,
      );
  dynamic datalocationid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].location_id''',
        true,
      );
  dynamic photoid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].photo.id''',
        true,
      );
  dynamic categoryname(dynamic response) => getJsonField(
        response,
        r'''$.data[:].category.name''',
        true,
      );
  dynamic subcategoryname(dynamic response) => getJsonField(
        response,
        r'''$.data[:].subcategory[:].name''',
        true,
      );
}

class AttractionsGetDetailsAPIDeprecatedCall {
  Future<ApiCallResponse> call({
    int? locationId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Attractions Get Details API Deprecated',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/attractions/get-details?location_id=$locationId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic locationid(dynamic response) => getJsonField(
        response,
        r'''$.location_id''',
      );
  dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.latitude''',
      );
  dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.longitude''',
      );
  dynamic locationstring(dynamic response) => getJsonField(
        response,
        r'''$.location_string''',
      );
  dynamic imagesurl(dynamic response) => getJsonField(
        response,
        r'''$.photo.images.original.url''',
      );
  dynamic photocaption(dynamic response) => getJsonField(
        response,
        r'''$.photo.caption''',
      );
}

class ReviewsListAPICall {
  Future<ApiCallResponse> call({
    String? contentType = '',
    int? detailId,
  }) async {
    final ffApiRequestBody = '''
{
  "contentType": "$contentType",
  "detailId": $detailId,
  "pagee": 0,
  "filters": [
    {
      "id": "rating",
      "value": [
        "4"
      ]
    },
    {
      "id": "months",
      "value": [
        "2"
      ]
    },
    {
      "id": "type",
      "value": [
        "Couples"
      ]
    }
  ],
  "updateToken": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reviews List API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/reviews/v2/list',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PhotosListAPICall {
  Future<ApiCallResponse> call({
    String? locationIdStr = '',
  }) async {
    final ffApiRequestBody = '''
{
  "albumId": "",
  "galleryConfig": "ar",
  "locationIdStr": "$locationIdStr",
  "offset": 0,
  "updateToken": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Photos List API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/photos/v2/list',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class QuestionsListAPICall {
  Future<ApiCallResponse> call({
    String? contentId = '',
    String? contentType = '',
  }) async {
    final ffApiRequestBody = '''
{
  "contentType": "$contentType",
  "contentId": "$contentType",
  "pagee": 0,
  "updateToken": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Questions List API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/questions/v2/list',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AnswersListAPICall {
  Future<ApiCallResponse> call({
    String? contentType = '',
    String? contentId = '',
    String? questionId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "contentType": "$contentType",
  "contentId": "$contentId",
  "questionId": "$questionId",
  "pagee": 0,
  "updateToken": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Answers List API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/answers/v2/list',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class KeywordsListAPICall {
  Future<ApiCallResponse> call({
    int? locationId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Keywords List API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/keywords/list?location_id=$locationId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TipsListAPICall {
  Future<ApiCallResponse> call({
    int? locationId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Tips List API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/tips/list?location_id=$locationId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReviewsListDeprecatedCall {
  Future<ApiCallResponse> call({
    int? locationId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Reviews List Deprecated',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/reviews/list?location_id=$locationId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PhotosListAPIDeprecatedCall {
  Future<ApiCallResponse> call({
    int? locationId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Photos List API Deprecated',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/photos/list?location_id=$locationId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class QuestionsListAPIDeprecatedCall {
  Future<ApiCallResponse> call({
    int? locationId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Questions List API Deprecated',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/questions/list?location_id=$locationId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AnswersListDeprecatedAPICall {
  Future<ApiCallResponse> call({
    int? questionId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Answers List Deprecated API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/answers/list?question_id=$questionId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AirportsSearchAPICall {
  Future<ApiCallResponse> call({
    String? query = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Airports Search API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/airports/search?query=$query',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FlightsCreateSessionAPICall {
  Future<ApiCallResponse> call({
    String? origination = '',
    String? destination = '',
    String? date = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Flights Create Session API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/flights/create-session?o1=$origination&d1=$destination&dd1=$date',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FlightsPollAPICall {
  Future<ApiCallResponse> call({
    String? sid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Flights Poll API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/flights/poll?sid=$sid',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FlightsGetBookingUrlAPICall {
  Future<ApiCallResponse> call({
    String? searchHash = '',
    String? dest = '',
    String? id = '',
    String? orig = '',
    String? searchId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Flights Get Booking Url API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/flights/get-booking-url?searchHash=$searchHash&Dest=$dest&id=$id&Orig=$orig&searchId=$searchId',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AttractionProductListAPICall {
  Future<ApiCallResponse> call({
    int? geoId,
  }) async {
    final ffApiRequestBody = '''
{
  "geoId": $geoId,
  "startDate": "2022-03-29",
  "endDate": "2022-03-30",
  "pax": [
    {
      "ageBand": "ADULT",
      "count": 2
    }
  ],
  "sort": "TRAVELER_FAVORITE_V2",
  "sortOrder": "asc",
  "filters": [
    {
      "id": "category",
      "value": [
        "11873"
      ]
    }
  ],
  "updateToken": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Attraction Product List API',
      apiUrl: '${TravelAdvisorAPIGroup.baseUrl}/attraction-products/v2/list',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AttractionProductFiltersListAPICall {
  Future<ApiCallResponse> call({
    int? geoId,
  }) async {
    final ffApiRequestBody = '''
{
  "geoId": $geoId,
  "startDate": "2022-03-29",
  "endDate": "2022-03-30",
  "pax": [
    {
      "ageBand": "ADULT",
      "count": 2
    }
  ],
  "sort": "TRAVELER_FAVORITE_V2",
  "sortOrder": "asc",
  "filters": [
    {
      "id": "category",
      "value": [
        "11873"
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Attraction Product Filters List API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/attraction-product-filters/v2/list',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AttractionProductsGetDetailsAPICall {
  Future<ApiCallResponse> call({
    String? contentId = '',
    String? startDate = '',
    String? endDate = '',
    String? pax = '',
  }) async {
    final ffApiRequestBody = '''
{
  "contentId": "$contentId",
  "startDate": "$startDate",
  "endDate": "$endDate",
  "pax": [
    {
      "ageBand": "ADULT",
      "count": 2
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Attraction Products Get Details API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/attraction-products/v2/get-details',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AttractionProductsCheckAvailabilityAPICall {
  Future<ApiCallResponse> call({
    String? contentId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "contentId": "$contentId",
  "contentType": "attraction_product",
  "startDate": "2022-03-29",
  "endDate": "2022-03-30",
  "pax": [
    {
      "ageBand": "ADULT",
      "count": 2
    }
  ],
  "updateToken": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Attraction Products Check Availability API',
      apiUrl:
          '${TravelAdvisorAPIGroup.baseUrl}/attraction-products/v2/check-availability',
      callType: ApiCallType.POST,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'travel-advisor.p.rapidapi.com',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Travel Advisor API Group Code

/// Start Geocoding API Group Code

class GeocodingAPIGroup {
  static String baseUrl = 'https://trueway-geocoding.p.rapidapi.com';
  static Map<String, String> headers = {
    'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
    'X-RapidAPI-Host': 'trueway-geocoding.p.rapidapi.com',
  };
  static GeocodingAPICall geocodingAPICall = GeocodingAPICall();
  static ReverseGeocodingAPICall reverseGeocodingAPICall =
      ReverseGeocodingAPICall();
}

class GeocodingAPICall {
  Future<ApiCallResponse> call({
    String? address = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Geocoding API',
      apiUrl: '${GeocodingAPIGroup.baseUrl}/Geocode?address=$address',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'trueway-geocoding.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReverseGeocodingAPICall {
  Future<ApiCallResponse> call({
    String? location = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ReverseGeocoding API',
      apiUrl:
          '${GeocodingAPIGroup.baseUrl}/ReverseGeocode?location=$location',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'trueway-geocoding.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Geocoding API Group Code

/// Start TrueWay Places API Group Code

class TrueWayPlacesAPIGroup {
  static String baseUrl = 'https://trueway-places.p.rapidapi.com';
  static Map<String, String> headers = {
    'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
    'X-RapidAPI-Host': 'trueway-places.p.rapidapi.com',
  };
  static PlacesNearbyAPICall placesNearbyAPICall = PlacesNearbyAPICall();
  static PlaceByTextAPICall placeByTextAPICall = PlaceByTextAPICall();
}

class PlacesNearbyAPICall {
  Future<ApiCallResponse> call({
    String? location = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PlacesNearby API',
      apiUrl:
          '${TrueWayPlacesAPIGroup.baseUrl}/FindPlacesNearby?location=$location',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'trueway-places.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PlaceByTextAPICall {
  Future<ApiCallResponse> call({
    String? text = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Place By Text API',
      apiUrl: '${TrueWayPlacesAPIGroup.baseUrl}/FindPlaceByText?text=$text',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '930c16ec5emsh155453517aa6d2dp1ef161jsn2a790a1b4772',
        'X-RapidAPI-Host': 'trueway-places.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End TrueWay Places API Group Code

/// Start Four Square API Group Code

class FourSquareAPIGroup {
  static String baseUrl = 'https://api.foursquare.com/v3/places';
  static Map<String, String> headers = {
    'Authorization': 'fsq3j328mzxgCT8PG98ydThuB3E1HHoodBIDOIeeo0pnq7U=',
    'accept': 'application/json',
  };
  static SearchAPICall searchAPICall = SearchAPICall();
  static GetDetailsAPICall getDetailsAPICall = GetDetailsAPICall();
  static PlaceMatchAPICall placeMatchAPICall = PlaceMatchAPICall();
}

class SearchAPICall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? lat = '',
    String? long = '',
    String? opennow = '',
    String? distance = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search API',
      apiUrl:
          '${FourSquareAPIGroup.baseUrl}/search?query=$query&ll=$lat,$long&open_now=$opennow&sort=$distance',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'fsq3j328mzxgCT8PG98ydThuB3E1HHoodBIDOIeeo0pnq7U=',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fsqid(dynamic response) => getJsonField(
        response,
        r'''$.results[:].fsq_id''',
      );
}

class GetDetailsAPICall {
  Future<ApiCallResponse> call({
    String? fsqid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Details API',
      apiUrl: '${FourSquareAPIGroup.baseUrl}/52f18036498e071bbb86adf8',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'fsq3j328mzxgCT8PG98ydThuB3E1HHoodBIDOIeeo0pnq7U=',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fsqid(dynamic response) => getJsonField(
        response,
        r'''$.fsq_id''',
      );
  dynamic categoriesid(dynamic response) => getJsonField(
        response,
        r'''$.categories[:].id''',
      );
  dynamic categoriesname(dynamic response) => getJsonField(
        response,
        r'''$.categories[:].name''',
      );
  dynamic categoriesiconprefix(dynamic response) => getJsonField(
        response,
        r'''$.categories[:].icon.prefix''',
      );
  dynamic categoriesiconsuffix(dynamic response) => getJsonField(
        response,
        r'''$.categories[:].icon.suffix''',
      );
  dynamic closedbucket(dynamic response) => getJsonField(
        response,
        r'''$.closed_bucket''',
      );
  dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.geocodes.main.latitude''',
      );
  dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.geocodes.main.longitude''',
      );
  dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.location.address''',
      );
  dynamic country(dynamic response) => getJsonField(
        response,
        r'''$.location.country''',
      );
  dynamic formattedaddress(dynamic response) => getJsonField(
        response,
        r'''$.location.formatted_address''',
      );
  dynamic locality(dynamic response) => getJsonField(
        response,
        r'''$.location.locality''',
      );
  dynamic region(dynamic response) => getJsonField(
        response,
        r'''$.location.region''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
  dynamic timezone(dynamic response) => getJsonField(
        response,
        r'''$.timezone''',
      );
}

class PlaceMatchAPICall {
  Future<ApiCallResponse> call({
    String? place = '',
    String? city = '',
    String? lat = '',
    String? long = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Place Match API',
      apiUrl:
          '${FourSquareAPIGroup.baseUrl}/match?name=$place&city=$city&ll=$lat,$long',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'fsq3j328mzxgCT8PG98ydThuB3E1HHoodBIDOIeeo0pnq7U=',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Four Square API Group Code

class GeoApifyAutocompleteAPICall {
  static Future<ApiCallResponse> call({
    String? placename = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GeoApify Autocomplete  API',
      apiUrl:
          'https://api.geoapify.com/v1/geocode/autocomplete?text=$placename',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'apiKey': "e7c3c93b46a542928e8aecba02a830d8",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GeoApifyPlacesAPICall {
  static Future<ApiCallResponse> call({
    double? long,
    double? lat,
    int? radiusMeters,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GeoApify Places API',
      apiUrl:
          'https://api.geoapify.com/v2/places?categories=tourism&filter=circle:$long,$lat,$radiusMeters&limit=20',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'apiKey': "aa75eba02ff748dca8c26a043ee2a977",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

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
