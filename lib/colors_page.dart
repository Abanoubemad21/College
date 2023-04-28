import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Colors_screen extends StatefulWidget {
  const Colors_screen({super.key});

  @override
  State<Colors_screen> createState() => _Colors_screenState();
}

class _Colors_screenState extends State<Colors_screen> {
  Color Pr = Colors.purple;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("colors_funs"),
        backgroundColor: Colors.brown,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            colors_fun("assets/images/colors/color_black.png", 'Kuro', 'Black',
                () {
              player.play(AssetSource("sounds/colors/black.wav"));
            }),
            colors_fun(
                "assets/images/colors/color_brown.png", 'Chairo', 'Brown', () {
              player.play(AssetSource("sounds/colors/brown.wav"));
            }),
            colors_fun("assets/images/colors/color_dusty_yellow.png",
                'Dasutiierō', 'Dusty Yellow', () {
              player.play(AssetSource("sounds/colors/dusty yellow.wav"));
            }),
            colors_fun("assets/images/colors/color_gray.png", 'Gurē', 'Grey',
                () {
              player.play(AssetSource("sounds/colors/gray.wav"));
            }),
            colors_fun(
                "assets/images/colors/color_green.png", 'Midori', 'Green', () {
              player.play(AssetSource("sounds/colors/green.wav"));
            }),
            colors_fun("assets/images/colors/color_red.png", 'Aka', 'Red', () {
              player.play(AssetSource("sounds/colors/red.wav"));
            }),
            colors_fun("assets/images/colors/color_white.png", 'Shiro', 'White',
                () {
              player.play(AssetSource("sounds/colors/white.wav"));
            }),
            colors_fun("assets/images/colors/yellow.png", 'Kiiro', 'Yellow',
                () {
              player.play(AssetSource("sounds/colors/yellow.wav"));
            }),
          ],
        ),
      ),
    );
  }

  Container colors_fun(img, eng, jap, audiofun) {
    return Container(
      color: Pr,
      child: Row(
        children: [
          Container(
              height: 100,
              color: Color.fromARGB(255, 244, 216, 206),
              child: Image(
                image: AssetImage(img),
              )),
          Expanded(
            child: Column(
              children: [
                Text(
                  jap,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(eng,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          InkWell(
              onTap: audiofun,
              child: Container(child: Icon(Icons.play_arrow_rounded)))
        ],
      ),
    );
  }
}
