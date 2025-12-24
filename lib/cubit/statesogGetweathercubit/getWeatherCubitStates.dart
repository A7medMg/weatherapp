
import 'package:weather_app/models/dataModel.dart';

import '../../models/bigData.dart';

class WeatherStates{}
class NoWeatherStates extends WeatherStates{}
class WeatherLoadedStates extends WeatherStates{
  WeatherModel ? weatherModel;
  WeatherLoadedStates({required this.weatherModel});

}
class WeatherFailureStates extends WeatherStates{}
