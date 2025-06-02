import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/usecases/get_weather_by_city.dart';
import 'weather_state.dart';

class  weatherNotifier extends StateNotifier<WeatherState>{
  final GetWeatherByCity getWeatherByCity;

  weatherNotifier({required this.getWeatherByCity})
    : super(const WeatherState.initial());
  
  Future<void> fetchWeather(String city) async {
    state = const WeatherState.loading();
    try {
      final weather = await getWeatherByCity(city);
      state = WeatherState.loaded(weather);
    } catch (e) {
      state = WeatherState.error(e.toString());
    }
  }
}