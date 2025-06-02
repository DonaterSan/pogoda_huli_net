import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/repositories/settings_repository.dart';

class SettingsRepositoryImpl implements SettingsRepository{
  final SharedPreferences prefs;

  SettingsRepositoryImpl(this.prefs);

  @override 
  WeatherSource getWeatherSource(){
    final source = prefs.getString('weather_source') ?? 'city';
    return source == 'location' ? WeatherSource.location : WeatherSource.city;
  }

  @override
  String getSavedCity(){
    return prefs.getString('saved_city') ?? 'Moscow';
  }
}