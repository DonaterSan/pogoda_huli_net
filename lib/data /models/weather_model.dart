import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    required String cityName,
    required double temperature,
    required int humidity,
    required double windSpeed,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
    WeatherModel(
      cityName: json['name'], 
      temperature: (json['main']['temp'] as num).toDouble(), 
      humidity: (json['main']['humidity']), 
      windSpeed: (json['wind']['speed'] as num).toDouble(), 
      main: json['weather'][0]['main'], 
      description: json['weather'][0]['description'], 
      icon: json['weather'][0]['icon']
      );
}