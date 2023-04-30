import 'dart:convert';

import 'package:weather/src/models/weather_data.dart';
import 'package:http/http.dart' as http;
import 'package:weather/src/models/weather_data_current.dart';
import 'package:weather/src/utils/api_url.dart';

class FetchWeatherAPI {
  WeatherData? weatherData;

  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(
      Uri.parse(
        apiURL(lat, lon),
      ),
    );
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(
      WeatherDataCurrent.formJson(
        jsonString,
      ),
    );
    return weatherData!;
  }
}
