import 'dart:async';

import 'package:flutter/material.dart';

import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

class ThemeState {
  final ThemeData theme;
  final MaterialColor color;

  const ThemeState({@required this.theme, @required this.color})
      : assert(theme != null),
        assert(color != null);

  @override
  List<Object> get props => [theme, color];
}

abstract class ThemeEvent  {
  const ThemeEvent();
}

class WeatherChanged extends ThemeEvent {
  final int weatherId;
  final String icon;

  const WeatherChanged({@required this.weatherId, @required this.icon})
      : assert(weatherId != null),
        assert(icon != null);

  @override
  List<Object> get props => [weatherId, icon];
}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  @override
  ThemeState get initialState => ThemeState(
    theme: ThemeData.light(),
    color: Colors.lightBlue,
  );

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is WeatherChanged) {
      yield _mapWeatherConditionToThemeData(event.weatherId, event.icon);
    }
  }

  ThemeState _mapWeatherConditionToThemeData(int weatherId, String icon) {
    ThemeState theme;
    switch (weatherId) {
      case 800:
      case 801:
        if(icon=="01d" ||icon=="02d") {
          theme = ThemeState(
            theme: ThemeData(
              primaryColor: Colors.orange,
            ),
            color: Colors.orange,
          );
        }else
          {
            theme = ThemeState(
              theme: ThemeData(
                primaryColor: Colors.grey,
              ),
              color: Colors.blueGrey,
            );
          }
        break;
      case 511:
      case 600:
      case 601:
      case 602:
      case 611:
      case 612:
      case 613:
      case 615:
      case 616:
      case 620:
      case 621:
      case 622:
        theme = ThemeState(
          theme: ThemeData(
            primaryColor: Colors.lightBlueAccent,
          ),
          color: Colors.lightBlue,
        );
        break;
      case 701:
      case 711:
      case 721:
      case 731:
      case 741:
      case 751:
      case 761:
      case 762:
      case 771:
      case 781:
      case 802:
      case 803:
      case 804:
        theme = ThemeState(
          theme: ThemeData(
            primaryColor: Colors.blueGrey,
          ),
          color: Colors.grey,
        );
        break;
      case 500:
      case 501:
      case 502:
      case 503:
      case 504:
      case 520:
      case 521:
      case 522:
      case 531:
        theme = ThemeState(
          theme: ThemeData(
            primaryColor: Colors.indigoAccent,
          ),
          color: Colors.indigo,
        );
        break;
      case 200:
      case 201:
      case 202:
      case 210:
      case 211:
      case 212:
      case 221:
      case 230:
      case 231:
      case 232:
        theme = ThemeState(
          theme: ThemeData(
            primaryColor: Colors.deepPurpleAccent,
          ),
          color: Colors.deepPurple,
        );
        break;
      default:
        theme = ThemeState(
          theme: ThemeData.light(),
          color: Colors.lightBlue,
        );
        break;
    }
    return theme;
  }
}