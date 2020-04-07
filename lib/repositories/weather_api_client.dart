import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:testflutterapp/models/models.dart';

class WeatherApiClient {
  static const baseUrl = 'http://api.openweathermap.org/data/2.5/weather?q=';
  final http.Client httpClient;

  WeatherApiClient({
    @required this.httpClient,
  }) : assert(httpClient != null);

  Future<Weather> fetchWeather(String city) async {
    final weatherUrl = '$baseUrl$city&lang=pl&units=metric&APPID=087806f34f72f60b5fb4cdfa4b885ce6';
    print(weatherUrl);
    final weatherResponse = await this.httpClient.get(weatherUrl);
    print(weatherUrl);
    if (weatherResponse.statusCode != 200) {
      throw Exception('error getting weather for location');
    }

    final weatherJson = jsonDecode(weatherResponse.body);
    return Weather.fromJson(weatherJson);
  }
}