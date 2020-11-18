import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storej_app/models/places_data.dart';

class AddPlaceScreen extends StatefulWidget {
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final myController = TextEditingController();
  String errorMsg = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      // gabisa langsung dibikin border radius gitu.
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 700.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add New Place',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: myController,
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                errorMsg,
                style: TextStyle(fontSize: 12, color: Colors.red),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 70.0),
              color: Colors.green,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                try {
                  Provider.of<PlacesData>(context, listen: false)
                      .addPlace(myController.text);
                  Navigator.pop(context);
                } catch (e) {
                  setState(() {
                    errorMsg = e;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
