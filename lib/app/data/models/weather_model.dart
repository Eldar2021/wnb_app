import 'dart:convert';

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));

class Weather {
  const Weather({
    required this.weather,
    required this.main,
    required this.sys,
    required this.name,
    required this.cod,
  });

  final List<WeatherElement> weather;
  final Main main;
  final Sys sys;
  final String name;
  final int cod;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        weather: List<WeatherElement>.from(json["weather"].map((x) => WeatherElement.fromJson(x))),
        main: Main.fromJson(json["main"]),
        sys: Sys.fromJson(json["sys"]),
        name: json["name"],
        cod: json["cod"],
      );
}

class Main {
  const Main({
    required this.temp,
    required this.feelsLike,
  });

  final double temp;
  final double feelsLike;

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        temp: json["temp"].toDouble(),
        feelsLike: json["feels_like"].toDouble(),
      );
}

class Sys {
  const Sys({
    required this.id,
    required this.country,
  });

  final int id;
  final String country;

  factory Sys.fromJson(Map<String, dynamic> json) => Sys(
        id: json["id"],
        country: json["country"],
      );
}

class WeatherElement {
  const WeatherElement({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  final int id;
  final String main;
  final String description;
  final String icon;

  factory WeatherElement.fromJson(Map<String, dynamic> json) => WeatherElement(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
      );
}
