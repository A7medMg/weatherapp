import 'package:flutter/material.dart';

import '../models/bigData.dart';

class WeatherInfoBody extends StatelessWidget {
  WeatherModel ? weatherModel;
   WeatherInfoBody({Key? key,required this.weatherModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blueAccent,Colors.white],begin:Alignment.topCenter,end: Alignment.bottomCenter )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              weatherModel?.location?.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
             Text(
               'Last Updated:${weatherModel?.current?.lastUpdated.hour}:${weatherModel?.current?.lastUpdated.minute}'
              ,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https:${weatherModel?.current?.condition?.icon}',
                ),
                 Text(
                   "${weatherModel?.forecast!.forecastday?[0].day!.avgtempC}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                 Column(
                  children: [
                    Text(
                      'Maxtemp: ${weatherModel?.forecast!.forecastday?[0].day?.maxtempC.round()}',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Mintemp:${weatherModel?.forecast!.forecastday?[0].day?.mintempC.round()}',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
             Text(
             weatherModel?.current?.condition?.text ,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


