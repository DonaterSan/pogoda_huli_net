import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  final http.Client client;
  final String apiKey;

  WeatherApiClient({required this.client, required this.apiKey});

  Future<Map<String, dynamic>> fetchWeather(String city) async {
    final url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=1aa5b647d599912ba4e5b76500a58d7b&units=metric');

    final response = await client.get(url);

    if (response.statusCode != 200){
      throw Exception('Ошибка при получении погоды');
    }

    return json.decode(response.body) as Map<String, dynamic>;
  }
}