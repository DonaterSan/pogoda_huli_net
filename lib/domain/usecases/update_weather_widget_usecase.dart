import '../repositories/weather_widget_repository.dart';

class UpdateWeatherWidgetUsecase {
  final WeatherWidgetRepository repository;

  UpdateWeatherWidgetUsecase(this.repository);

  Future<void> call(String city, double temp){
    return repository.updateWidget(city, temp);
  }
}