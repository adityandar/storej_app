import 'package:flutter/material.dart';
import 'package:storej_app/screens/add_place_screen.dart';

class AddPlaceButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.add,
        size: 36,
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: AddPlaceScreen(),
            ),
          ),
        );
      },
    );
  }
}
