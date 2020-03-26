import 'dart:async';

import 'package:meta/meta.dart';

import 'package:testflutterapp/repositories/weather_api_client.dart';
import 'package:testflutterapp/models/models.dart';

class WeatherRepository {
  final WeatherApiClient weatherApiClient;

  WeatherRepository({@required this.weatherApiClient})
      : assert(weatherApiClient != null);

  Future<Weather> getWeather(String city) async {
    return weatherApiClient.fetchWeather(city);
  }
}