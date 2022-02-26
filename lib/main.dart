import 'package:flutter/material.dart';
import 'package:music_player_ui/colors.dart';
import 'package:music_player_ui/navbar.dart';
import 'package:music_player_ui/player_control.dart';

import 'album.dart';

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(fontFamily: 'Circular'),
        debugShowCheckedModeBanner: false,
        home: HomePage()),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 2;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          NavBar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return AlbumArt();
              },
              itemCount: 1,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
            'Memories',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: darkPrimaryColor,
            ),
          ),
          Text(
            'Free To Listen',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: darkPrimaryColor,
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 5,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
            ),
            child: Slider(
              value: sliderValue,
              activeColor: darkPrimaryColor,
              inactiveColor: darkPrimaryColor.withOpacity(0.3),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              min: 0,
              max: 20,
            ),
          ),
          PlayerControl(),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
