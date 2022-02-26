import 'package:flutter/material.dart';

import 'package:music_player_ui/colors.dart';

class AlbumArt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 260,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: ClipRect(
        child: Image.asset(
          'images/music-notes.png',
          fit: BoxFit.fill,
        ),
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: darkPrimaryColor,
              offset: Offset(20, 8),
              spreadRadius: 3,
              blurRadius: 25),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -4),
              spreadRadius: -2,
              blurRadius: 20),
        ],
        color: primaryColor,
        borderRadius: BorderRadius.circular(60),
      ),
    );
  }
}
