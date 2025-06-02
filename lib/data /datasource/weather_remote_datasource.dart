import '../../core/network/weather_api_client.dart';
import '../models/weather_model.dart';

class WeatherRemoteDatasource {
  final WeatherApiClient apiClient;

  WeatherRemoteDatasource(this.apiClient);

  Future<WeatherModel> getWeatherByCity(String city) async {
    final json = await apiClient.fetchWeather(city);
    return WeatherModel.fromJson(json);
  }
}