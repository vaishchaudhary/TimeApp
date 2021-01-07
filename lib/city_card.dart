import 'package:flutter/material.dart';

import 'constant.dart';

class CityCard {
  String cityName;
  double longitude;
  double latitude;
  final Function changeQuery;
  CityCard(this.longitude, this.latitude, {this.cityName, this.changeQuery});

  Widget myCityCard(context) {
    return Container(
      height: 50,
      child: GestureDetector(
        onTap: () {
          cityNameToDisplay = cityName;
          print("changes");
          lat = latitude;
          long = longitude;
          print(lat);
          print(long);
          changeQuery();

          Navigator.pop(context);
        },
        child: Card(
          color: Colors.transparent,
          elevation: 0,
          child: Text(this.cityName),
        ),
      ),
    );
  }
}
