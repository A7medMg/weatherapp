import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/bigData.dart';
import 'package:weather_app/models/dataModel.dart';

import '../../webServices/webServicesClass.dart';
import '../statesogGetweathercubit/getWeatherCubitStates.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {


  GetWeatherCubit() : super(NoWeatherStates());
  getWeather({required String cityName})async{
   try{

    WeatherModel ? weatherModel=await Webservicesclass(dio: Dio()).getAllData(cityName: cityName);
     emit(WeatherLoadedStates(weatherModel: weatherModel));
   }catch(e){
     emit(WeatherFailureStates());
   }
  }

}