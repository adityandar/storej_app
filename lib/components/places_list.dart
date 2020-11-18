import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storej_app/models/places_data.dart';

class PlacesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PlacesData>(
      builder: (context, placesData, child) {
        if (placesData.placesCount != 0) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: (placesData.selectedIndex == index)
                        ? Colors.green
                        : Color(0xFFebebeb),
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(8.0)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        placesData.places[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  placesData.setIndex(index);
                },
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
            itemCount: placesData.placesCount,
          );
        } else {
          return Center(
              child: Text(
            'Add your first place.',
            style: TextStyle(fontSize: 18.0),
          ));
        }
      },
    );
  }
}
