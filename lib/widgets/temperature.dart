import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  final double temperature;
  final double low;
  final double high;
  final int pressure;

  Temperature({
    Key key,
    this.temperature,
    this.low,
    this.high,
    this.pressure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Text(
            '${_formattedTemperature(temperature)}°C',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              'max: ${_formattedTemperature(high)}°C',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
            ),
            Text(
              'min: ${_formattedTemperature(low)}°C',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    ),
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Text(
          '$pressure hPa',
          style: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          ),
        ),
      ),
    ],
    );
  }

  int _formattedTemperature(double t) => t.round();
}
