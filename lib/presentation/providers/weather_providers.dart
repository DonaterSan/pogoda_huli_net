import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/network/weather_api_client.dart';
import '../../data/datasource/weather_remote_datasource.dart';
import '../../data/repositories/weather_repository_impl.dart';
import '../../../domain/repositories/weather_repository.dart';
import '../../../domain/usecases/get_weather_by_city.dart';
import '../state/weather_notifier.dart';
import '../state/weather_state.dart';
import 'package:http/http.dart' as http;

final HttpClientProvider = Provider((ref) => http.Client());
final apiKeyProvider = Provider((ref) => 'https://api.openweathermap.org/data/2.5/weather?q=\$city&appid=1aa5b647d599912ba4e5b76500a58d7b&units=metric');

final apiClientProvider = Provider((ref) {
  final client = ref.watch(HttpClientProvider);
  final apiKey = ref.watch(apiKeyProvider);
  return WeatherApiClient(client: client, apiKey: apiKey);
});

final remoteDataSourceProvider = Provider((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return WeatherRemoteDatasource(apiClient);
});

final WeatherRepositoryProvider = Provider((ref) {
  final remoteDataSource = ref.watch(remoteDataSourceProvider);
  return WeatherRepositoryImpl(remoteDataSource: remoteDataSource);
});

final getWeatherByCityProvider = Provider((ref) {
  final repo = ref.watch(WeatherRepositoryProvider);
  return GetWeatherByCity(repo);
});

final weatherNotifierProvider = StateNotifierProvider<weatherNotifier, WeatherState>((ref) {
  final useCase = ref.watch(getWeatherByCityProvider);
  return weatherNotifier(getWeatherByCity: useCase);
});