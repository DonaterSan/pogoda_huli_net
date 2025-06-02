import '../../domain/entities/weather.dart';
import '../../domain/repositories/weather_repository.dart';
import '../datasource/weather_remote_datasource.dart';

class WeatherRepositoryImpl implements WeatherRepository{
  final WeatherRemoteDatasource remoteDatasource;

  WeatherRepositoryImpl({required this.remoteDatasource});

  @override
  Future<Weather> getWeatherByCity(String city) async {
    final weatherModel = await remoteDatasource.getWeatherByCity(city);

    return Weather(
      cityName: weatherModel.cityName, 
      temperature: weatherModel.temperature, 
      humidity: weatherModel.humidity, 
      windSpeed: weatherModel.windSpeed, 
      main: weatherModel.main, 
      description: weatherModel.description, 
      icon: weatherModel.icon
      );
  }
}