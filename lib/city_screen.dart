import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'city_card.dart';
import 'location_bloc.dart';
import 'location_event.dart';
import 'location_state.dart';

class CityScreen extends StatefulWidget {
  LocationBloc locationBloc;
  final Function changeQuery;
  CityScreen(this.locationBloc,{this.changeQuery});
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  TextEditingController _textEditingController = new TextEditingController();
  var litems;
  //CityModel cityModel = CityModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // changed background color here
          decoration: BoxDecoration(
            //  Rcolor: Colors.white,
            // color: Colors.teal,
          ),
          //change 1
          //added padding
          padding: const EdgeInsets.all(15),
          //change 2
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //added closeButton widget here to style the CLOSE Button
              closeButton(context),
              //change 3
              TextField(
                //styling the text field here
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(hintText:'City', ),
                  //change 4
                  controller: _textEditingController,
                  onChanged: (text) {
                    //todo call cityrepo
                    widget.locationBloc.add(FetchCity(text));
                  }),
              Expanded(
                  child: BlocBuilder<LocationBloc, LocationState>(
                      bloc: widget.locationBloc,
                      builder: (context, state) {
                        if (state is LocationIsLoading) {
                          return ListView.builder(
                            itemCount:
                            state.cityModel.predictions == null ? 0 : state.cityModel.predictions.length,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return CityCard(cityName: state.cityModel.predictions[index].title,changeQuery:widget.changeQuery)
                                  .myCityCard(context);
                            },
                          );
                        } else {
                          return Container();
                        }
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
Widget closeButton(BuildContext context) {
  return Container(

    padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        TextButton(
          onPressed: () {Navigator.pop(context);},
          child: Text(
            "CLOSE",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  );
}
