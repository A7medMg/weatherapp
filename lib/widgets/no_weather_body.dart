import 'package:flutter/material.dart';

import '../models/bigData.dart';

class NoWeatherBody extends StatelessWidget {

   NoWeatherBody({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'there is no weather 😔 start',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              'searching now 🔍',
              style: TextStyle(
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
