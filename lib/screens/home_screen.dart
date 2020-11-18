import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storej_app/components/heading_text.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> placesName = [
    'Parents\'s House',
    'Office',
    'Personal House',
    'School',
    'Parents\'s House',
    'Office',
    'Personal House',
    'School',
    'Parents\'s House',
    'Office',
    'Personal House',
    'ASWKAKWKSKDKWAKSKKWKSKWKS',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadingText('Places'),
              Expanded(
                child: Container(
                  height: 120,
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: (selectedIndex == index)
                                ? Colors.green
                                : Color(0xFFebebeb),
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(8.0)),
                          ),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                placesName[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 10);
                    },
                    itemCount: placesName.length,
                  ),
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
