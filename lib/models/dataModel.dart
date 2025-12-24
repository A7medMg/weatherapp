class DataModel {
  final String cityName;
  final String image;
  final String date;
  final double temp;
  final double max_temp;
  final double min_temp;
  final String weatherCondition;
  DataModel({
    required this.cityName,
    required this.image,
    required this.date,
    required this.temp,
    required this.max_temp,
    required this.min_temp,
    required this.weatherCondition,

});
  factory DataModel.fromJson (json) {
    return DataModel(
      cityName: json['location']['name'],
      date: json['current']['last_updated'],
      image: json['current']['condition']['icon'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      max_temp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      min_temp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherCondition: json['current']['condition']['text'],
    );
  }

}