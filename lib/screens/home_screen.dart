import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storej_app/components/add_place_button.dart';
import 'package:storej_app/components/heading_text.dart';
import 'package:storej_app/components/places_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeadingText('Places'),
                    AddPlaceButton(),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 120,
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: PlacesList(),
                ),
                flex: 1,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                flex: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
