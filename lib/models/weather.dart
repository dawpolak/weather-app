class Weather {
  int weatherId;
  String icon;
  String description;
  double temp;
  double minTemp;
  double maxTemp;
  int pressure;
  DateTime sunrise;
  DateTime sunset;
  DateTime lastUpdated;
  String location;

  Weather({
    this.weatherId,
    this.icon,
    this.description,
    this.temp,
    this.minTemp,
    this.maxTemp,
    this.pressure,
    this.sunset,
    this.sunrise,
    this.lastUpdated,
    this.location,
  });

  Weather.fromJson(Map<String,dynamic> json)
  {
    weatherId= json['weather'][0]['id'] as int;
    icon= json['weather'][0]['icon'];
    description= json['weather'][0]['description'];
    temp= json['main']['temp'].toDouble();
    minTemp= json['main']['temp_min'].toDouble();
    maxTemp= json['main']['temp_max'].toDouble();
    pressure= json['main']['pressure'] as int;
    sunrise= DateTime.fromMillisecondsSinceEpoch(json['sys']['sunrise']*1000).toUtc();

    sunset= DateTime.fromMillisecondsSinceEpoch(json['sys']['sunset']*1000).toUtc();
    lastUpdated= DateTime.now();
    location= json['name'];
  }
}