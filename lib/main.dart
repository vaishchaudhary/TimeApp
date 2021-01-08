import 'package:weather_app/weather_repo.dart';

import 'city_repo.dart';
import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'location_bloc.dart';
import 'weather_bloc.dart';
import 'home_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MultiBlocProvider(providers: [
        BlocProvider<LocationBloc>(
          create: (BuildContext context) => LocationBloc(CityRepo()),
        ),
        BlocProvider<WeatherBloc>(
          create: (BuildContext context) => WeatherBloc(WeatherRepo()),
        ),
      ], child: HomeScreen(),

      ),
    );
  }
}
