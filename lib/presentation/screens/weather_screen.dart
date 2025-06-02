import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/weather_state.dart';
import '../providers/weather_providers.dart';

class WeatherScreen extends ConsumerStatefulWidget{
  const WeatherScreen ({super.key});

  @override 
  ConsumerState<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends ConsumerState<WeatherScreen>{
  final _controller = TextEditingController();

  @override 
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _search() {
    final city = _controller.text.trim();
    if(city.isNotEmpty){
      ref.read(weatherNotifierProvider.notifier).fetchWeather(city);
    }
  }

  @override 
  Widget build(BuildContext context) {
    final state = ref.watch(weatherNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Погода'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Введите город',
              suffixIcon: IconButton(onPressed: _search, icon: Icon(Icons.search)
              ),
            ),
            onSubmitted: (_) => _search(),
          ),
          const SizedBox(height: 24,),
          Expanded(child: _buildState(state)),
          ],
        ),
      ),
    );
  }

  Widget _buildState(WeatherState state){
    return state.when(
      initial: () => const Center(child: Text('Введите город')),
      loading: () => const Center(child: CircularProgressIndicator()),
      loaded: (weather) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weather.cityName,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8,),
          Image.network(
            'https://openweathermap.org/img/wn/${weather.icon}@2x.png',
            width: 100,
            height: 100,
          ),
          Text(
            '${weather.temperature.toStringAsFixed(1)} °C',
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 8,),
          Text('Состояние: ${weather.main}'),
          Text('Описание: ${weather.description}'),
          Text('Ветер: ${weather.windSpeed} м/с'),
          Text('Влажность: ${weather.humidity} %'),
        ],
      ),
      error:(message) => Center(
        child: Text('Ошибка $message',
        style: const TextStyle(color: Colors.red),)
      ),
    );
  }
}