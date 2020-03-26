import 'package:flutter/material.dart';

import 'package:testflutterapp/models/models.dart' as model;
import 'package:testflutterapp/widgets/widgets.dart';

class CombinedWeatherTemperature extends StatelessWidget {
  final model.Weather weather;

  CombinedWeatherTemperature({
    Key key,
    @required this.weather,
  })  : assert(weather != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              weather.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle,
              ),
                  child: WeatherConditions(icon: weather.icon))
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Temperature(
                temperature: weather.temp,
                high: weather.maxTemp,
                low: weather.minTemp,
                pressure: weather.pressure,
              ),
            ),
          ],
        ),
        Center(
          child:
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Details(
                sunrise: weather.sunrise,
                sunset: weather.sunset,
            ),
          ),
        ),
    ]
    );
  }
}
