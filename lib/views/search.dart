import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/bigData.dart';

import '../cubit/get_weather_cubit/getWeatherCubit.dart';
import '../webServices/webServicesClass.dart';
import 'home_view.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
                onFieldSubmitted: (value)async {
                 await BlocProvider.of<GetWeatherCubit>(context).getWeather(cityName: value);
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomeView()));
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 20),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search_rounded)),
                    label: const Text("Search"),
                    hint: const Text("enter city name "),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
          ],
        ),
      ),
    );
  }
}
