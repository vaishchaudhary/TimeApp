
import 'package:weather_app/repository/provider/weather_repository.dart';

import 'repository/provider/city_repo.dart';
import 'home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/provider/location_bloc.dart';
import 'bloc/provider/weather_bloc.dart';
import 'home_screen/home_screen.dart';
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
          create: (BuildContext context) => WeatherBloc(WeatherRepository()),
        ),
      ], child: HomeScreen(),

      ),
    );
  }
}
