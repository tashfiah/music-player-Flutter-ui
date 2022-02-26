import 'package:flutter/material.dart';
import 'package:music_player_ui/colors.dart';

class PlayerControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Control(
            icon: Icons.repeat,
          ),
          Control(
            icon: Icons.skip_previous,
          ),
          PlayControl(),
          Control(
            icon: Icons.skip_next,
          ),
          Control(
            icon: Icons.shuffle,
          ),
        ],
      ),
    );
  }
}

class PlayControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: Offset(5, 10),
              spreadRadius: 3,
              blurRadius: 14,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -5),
              spreadRadius: -2,
              blurRadius: 20,
            )
          ]),
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: darkPrimaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.play_arrow,
                size: 50,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Control extends StatelessWidget {
  final IconData icon;
  const Control({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: Offset(5, 10),
              spreadRadius: 3,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -5),
              spreadRadius: -2,
              blurRadius: 20,
            )
          ]),
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: darkPrimaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(icon),
            ),
          )
        ],
      ),
    );
  }
}
