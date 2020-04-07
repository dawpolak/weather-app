import 'package:flutter/material.dart';

class WeatherConditions extends StatelessWidget {
  final String icon;


  WeatherConditions({Key key, @required this.icon})
      : assert(icon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) => _mapConditionToImage(icon);

  Image _mapConditionToImage(String icon) {
    Image image;
    image = Image.network('http://openweathermap.org/img/wn/$icon@2x.png',scale: 0.9,);
    return image;
  }
}
