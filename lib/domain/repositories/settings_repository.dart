enum WeatherSource { location, city }

abstract class SettingsRepository {
  WeatherSource getWeatherSource();
  String getSavedCity();
}