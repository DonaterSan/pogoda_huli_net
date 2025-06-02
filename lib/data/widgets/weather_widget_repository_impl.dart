import 'package:home_widget/home_widget.dart';
import '../../domain/repositories/weather_widget_repository.dart';

class WeatherWidgetRepositoryImpl implements WeatherWidgetRepository{
  @override
  Future<void> updateWidget(String city, double temp) async {
    await HomeWidget.setAppGroupId('group.com.example.weather');
    await HomeWidget.saveWidgetData<String>('city', city);
    await HomeWidget.saveWidgetData<double>('temprature', temp);
    await HomeWidget.updateWidget(
      androidName: 'WeatherWidgetProvider',
      iOSName: 'WeatherWidget'
    );
  }
}