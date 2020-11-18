import 'dart:collection';

import 'package:flutter/material.dart';

class PlacesData extends ChangeNotifier {
  List<String> _places = [];

  int _selectedIndex = 0;

  int get selectedIndex {
    return _selectedIndex;
  }

  int get placesCount {
    return _places.length;
  }

  UnmodifiableListView<String> get places {
    return UnmodifiableListView(_places);
  }

  void setIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void addPlace(String newPlace) {
    bool duplicate = false;

    _places.forEach((e) {
      if (e == newPlace) {
        duplicate = true;
      }
    });
    if (duplicate == false) {
      _places.add(newPlace);
      notifyListeners();
    } else {
      throw ("Place is already exists.");
    }
  }
}
