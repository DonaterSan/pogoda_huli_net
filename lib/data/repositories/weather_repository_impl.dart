import '../../domain/entities/weather.dart';
import '../../domain/repositories/weather_repository.dart';
import '../datasource/weather_remote_datasource.dart';

class WeatherRepositoryImpl implements WeatherRepository{
  final WeatherRemoteDatasource remoteDataSource;

  WeatherRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Weather> getWeatherByCity(String city) async {
    final weatherModel = await remoteDataSource.getWeatherByCity(city);

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