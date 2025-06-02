class Weather {
  final String cityName;
  final double temperature;
  final int humidity;
  final double windSpeed;
  final String main;
  final String description;
  final String icon;

  const Weather({
    required this.cityName,
    required this.temperature,
    required this.humidity,
    required this.windSpeed,
    required this.main,
    required this.description,
    required this.icon,
  });
}