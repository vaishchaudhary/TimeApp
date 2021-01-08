

import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class CityCard {
  String cityName;
  final Function changeQuery;
  CityCard({this.cityName, this.changeQuery});

  Widget myCityCard(context) {
    return Container(
      height: 50,
      child: GestureDetector(
        onTap: (){
        //  cityNameToDisplay=cityName;
      //    print("changes");

          print("Done");
          print(lat);
         print(long);
          changeQuery(cityName);
           print(lat);
           print(long);
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
