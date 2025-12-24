import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/getWeatherCubit.dart';
import 'package:weather_app/cubit/statesogGetweathercubit/getWeatherCubitStates.dart';
import 'package:weather_app/models/bigData.dart';
import 'package:weather_app/views/search.dart';
import 'package:weather_app/widgets/no_weather_body.dart';

import '../widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Search()));
                },
                icon: const Icon(
                  Icons.search_rounded,
                  size: 26,
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
        title: const Text('Weather App'),
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (BuildContext context, state) {
          if(state is NoWeatherStates){
            return NoWeatherBody();
          }else if(state is WeatherLoadedStates){

            return WeatherInfoBody(weatherModel: state.weatherModel);
          }

          else{
            return Text("something went wrong");
          }
        },
      ),
    );

  }

}
