import 'dart:convert';

import 'package:weather/src/api/api_key.dart';
import 'package:weather/src/models/weather_data.dart';
import 'package:http/http.dart' as http;
import 'package:weather/src/models/weather_data_current.dart';

class FetchWeatherAPI {
  WeatherData? weatherData;

  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(
      Uri.parse(
        apiURL(lat, lon),
      ),
    );
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(WeatherDataCurrent)
  }
}

String apiURL(var lat, var lon) {
  String url;
  url =
      "https://api.openweathermap.org/data/3.0/onecall?$lat=lat&lon=$lon&appid=$apiKey&units=metric&exclude=minutely";
  return url;
}
