
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/statesogGetweathercubit/getWeatherCubitStates.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:weather_app/webServices/webServicesClass.dart';

import 'cubit/get_weather_cubit/getWeatherCubit.dart';


void main() {

  runApp( const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        theme: ThemeData(

            appBarTheme: const AppBarThemeData(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  fontFamily: "cairo",
                  fontSize: 25,
                )),
            iconTheme: const IconThemeData(color: Colors.black54)),
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }

}
