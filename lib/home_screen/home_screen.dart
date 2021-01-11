import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'package:weather_app/bloc/provider/location_bloc.dart';
import 'package:weather_app/weather.dart';
import '../city_screen/city_screen.dart';
import '../constants/constant.dart';
import '../bloc/provider/weather_bloc.dart';
import 'package:geocoder/geocoder.dart';

//
// Future<WeatherModel> getWeather(String lat, String lng) async {
//   final response = await http.get(
//       'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lng&appid=51663d3c484f2d7d48d8a3ab31715333&units=metric');
//
//   if (response.statusCode == 200) {
//     var result = json.decode(response.body);
//     var model = WeatherModel.fromJson(result);
//     return model;
//   } else
//     throw Exception('Failed to load Weather Information');
// }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, double> currentLocation = new Map();

  StreamSubscription<LocationData> locationSubscription;

  Location location = new Location();
  WeatherBloc weatherBloc;
  LocationBloc locationBloc;
  String error;
  String name;
  @override
  void initState() {
    //Default value
    weatherBloc = BlocProvider.of<WeatherBloc>(context);
    locationBloc = BlocProvider.of<LocationBloc>(context);
    initPlatformState();

  }
  Future<void> getCoordinatesFromCityName(String cityName) async {
// From a query
    final query = cityName;
    var addresses = await Geocoder.local.findAddressesFromQuery(query);
    var first = addresses.first;
    var latitude=first.coordinates.latitude.toString();
    var longitude=first.coordinates.longitude.toString();
    weatherBloc.add(FetchWeatherData(double.parse(latitude),double.parse(longitude)));
  }
  void CityChangeRequest(String query) {
   name=query;
    getCoordinatesFromCityName(query);
  }

  @override
  Widget build(BuildContext context) {
    String timenow = DateTime.now().toString();

    String mes;
    return Scaffold(
      appBar: AppBar(
        title: Text("WeatherApp"),
        brightness: Brightness.light,
        backgroundColor: Color.fromRGBO(61, 90, 254, 1.0),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: new BoxDecoration(
              color: Color.fromRGBO(61, 90, 254, 1.0),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  // Colors for gradients
                  Color.fromRGBO(31, 42, 255, 1.0),
                  Color.fromRGBO(230, 60, 167, 1.0),
                ],
              )),
          child: BlocBuilder<WeatherBloc, WeatherInfo>(
            bloc: weatherBloc,
            builder: (context, state) {
             // initPlatformState();
              WeatherModel model;
              //   _bloc.add(Events(currentLocation['latitude'],currentLocation['longitude']));
              // locationSubscription =
              //     location.onLocationChanged.listen((LocationData result) {
              //   weatherBloc.add(Events(result.latitude, result.longitude));
              // });
              // if (state is WeatherState) {
              //   currentLocation['latitude'] = state.lat;
              //   currentLocation['longitude'] = state.long;
              // }
              // weatherBloc.add(WeatherData(
              //     currentLocation['latitude'].toString(),
              //     currentLocation['longitude'].toString()));
              if (state is Fetchweatherdata) {
                print("Fetching");
                model = state.weatherModel;
                //Format date
                name=name??model.name;

                var fm = new DateFormat('MMMM dd, yyyy');
                var fm_hour = new DateFormat.Hm();
                print(model.weather[0].icon);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //Image.network(
                            //  'https://openweathermap.org/img/w/${model.weather[0].icon}.png',
                            //  width: 50,
                            //  height: 50,
                            //),
                            Image.asset(
                              'assets/images/weather/${model.weather[0].icon}.png',
                              width: 100,
                              fit: BoxFit.fitWidth,
                            ),
                            Text(
                              '${model.main.temp??21.2}°C',
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CityScreen(locationBloc,changeQuery: CityChangeRequest)));
                                  },
                                  child: Text(
                                    '${name}',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                IconButton(
                                    icon: Icon(Icons.arrow_drop_down),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CityScreen(locationBloc,changeQuery: CityChangeRequest)));
                                    }),
                              ],
                            ),
                            Text(
                              '${model.main.temp_max??21.3}/${model.main.temp_min??21.3}',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Roboto',
                                color: Colors.white70,
                              ),
                            ),
                            Text(
                              '${model.weather[0].description}'.toUpperCase(),
                              style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Roboto',
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 400,
                          width: double.infinity,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(30.0),
                                topRight: const Radius.circular(30.0)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Text(
                                    'TODAY',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        height: 1,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5,
                                        color: Color.fromRGBO(0, 33, 255, 1.0)),
                                  ),
                                  new Text(
                                    '${fm.format(new DateTime.fromMillisecondsSinceEpoch((model.dt * 1000), isUtc: true))}',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      height: 1,
                                      letterSpacing: 0.25,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(0, 33, 255, 1.0),
                                    ),
                                  ),
                                ],
                              ),
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        height: 1.5,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5,
                                        color:
                                            Color.fromRGBO(31, 42, 255, 1.0)),
                                  ),
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  Expanded(
                                    child: SizedBox(
                                      height: 150,
                                      child: new ListView(
                                        // This next line does the trick.
                                        scrollDirection: Axis.horizontal,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.all(5),
                                            padding: EdgeInsets.all(20),
                                            width: 160.0,
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Colors.white,
                                              boxShadow: [
                                                new BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 1.0,
                                                )
                                              ],
                                            ),
                                            child: new Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                new Icon(
                                                  Icons.wb_sunny,
                                                  color: Colors.orange,
                                                  size: 40,
                                                ),
                                                Text(
                                                  'Feels like',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    height: 1.5,
                                                    letterSpacing: 0.25,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                                Text(
                                                  '${model.main.temp}°C',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    height: 1.0,
                                                    letterSpacing: 0.25,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(5),
                                            padding: EdgeInsets.all(20),
                                            width: 160.0,
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Colors.white,
                                              boxShadow: [
                                                new BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 1.0,
                                                )
                                              ],
                                            ),
                                            child: new Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                new Icon(
                                                  Icons.toys,
                                                  color: Colors.blueGrey,
                                                  size: 40,
                                                ),
                                                Text(
                                                  'Wind',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    height: 1.5,
                                                    letterSpacing: 0.25,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                                Text(
                                                  '${model.wind.speed??43.4} m/s',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    height: 1.0,
                                                    letterSpacing: 0.25,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(5),
                                            padding: EdgeInsets.all(20),
                                            width: 160.0,
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Colors.white,
                                              boxShadow: [
                                                new BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 1.0,
                                                )
                                              ],
                                            ),
                                            child: new Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                new Icon(
                                                  Icons.opacity,
                                                  color: Colors.blueAccent,
                                                  size: 40,
                                                ),
                                                Text(
                                                  'Humidity',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    height: 1.5,
                                                    letterSpacing: 0.25,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                                Text(
                                                  '${model.main.humidity??90} %',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    height: 1.0,
                                                    letterSpacing: 0.25,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(20),
                                            margin: EdgeInsets.all(5),
                                            width: 160.0,
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Colors.white,
                                              boxShadow: [
                                                new BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 1.0,
                                                )
                                              ],
                                            ),
                                            child: new Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                new Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.redAccent,
                                                  size: 40,
                                                ),
                                                Text(
                                                  'Pressure',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    height: 1.5,
                                                    letterSpacing: 0.25,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                                Text(
                                                  '${model.main.pressure??21.3} hPa',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    height: 1.0,
                                                    letterSpacing: 0.25,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(20),
                                            margin: EdgeInsets.all(5),
                                            width: 160.0,
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Colors.white,
                                              boxShadow: [
                                                new BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 1.0,
                                                )
                                              ],
                                            ),
                                            child: new Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                new Icon(
                                                  Icons.visibility,
                                                  color: Colors.black54,
                                                  size: 40,
                                                ),
                                                Text(
                                                  'Visibility',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    height: 1.5,
                                                    letterSpacing: 0.25,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                                Text(
                                                  '${model.visibility / 1000} km',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    height: 1.0,
                                                    letterSpacing: 0.25,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              new Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    margin: EdgeInsets.all(5),
                                    width: double.infinity,
                                    decoration: new BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                      boxShadow: [
                                        new BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 1.0,
                                        )
                                      ],
                                    ),
                                    child: new Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        new Icon(
                                          Icons.cloud,
                                          color: Colors.black54,
                                          size: 40,
                                        ),
                                        Text(
                                          'Clouds',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            height: 1.5,
                                            letterSpacing: 0.25,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                        Text(
                                          '${model.clouds.all??5} %',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            height: 1.0,
                                            letterSpacing: 0.25,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }
              // } else if (snapshot.hasError)
              //   return Container(
              //     height: 500,
              //     margin: EdgeInsets.all(10),
              //     padding: EdgeInsets.all(10),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: <Widget>[
              //         Image.asset(
              //           'assets/images/bug_fixed.png',
              //           width: 250,
              //           fit: BoxFit.fitWidth,
              //         ),
              //         Text(
              //           ' ',
              //           style: TextStyle(
              //             height: 1.5,
              //           ),
              //         ),
              //         Text(
              //           'Oh Oh, Houston we have a problem!',
              //           style: TextStyle(
              //               fontSize: 20.0,
              //               height: 1.0,
              //               letterSpacing: 0.25,
              //               fontWeight: FontWeight.bold,
              //               color: Colors.white),
              //         ),
              //         Text(
              //           ' ',
              //           style: TextStyle(
              //             height: 1.0,
              //           ),
              //         ),
              //         Text(
              //           'Check your network or give the location permission to the app.',
              //           style: TextStyle(
              //               fontSize: 15.0,
              //               height: 1.0,
              //               letterSpacing: 0.25,
              //               fontWeight: FontWeight.normal,
              //               color: Colors.white),
              //         ),
              //Text(
              //  '${snapshot.error}',
              //  style: TextStyle(
              //      fontSize: 20.0,
              //      height: 1.5,
              //      letterSpacing: 0.25,
              //      color: Colors.red),
              //),
              else
                return Container(
                  child: CircularProgressIndicator(),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                );
            },
          ),
        ),
      ),
    );
  }

//        Center(
//
//
//
//              // RaisedButton(onPressed: () {
//              //   _bloc.add(MessageEvent(DateTime.now()));
//              // }),
//
//

  void initPlatformState() async {
    LocationData my_location;
    try {
      my_location = await location.getLocation();
      error = '';
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED')
        error = 'Permission Denied';
      else if (e.code == 'PERMISSION_DENIED_NEVER_ASK')
        error =
            'Permission Denied - Please ask the user to enable it from app settings';
      my_location = null;
    }
    currentLocation['latitude'] = my_location.latitude;
    currentLocation['longitude'] = my_location.longitude;
    weatherBloc.add(FetchWeatherData(
        currentLocation['latitude'],
        currentLocation['longitude']));
  }
}
