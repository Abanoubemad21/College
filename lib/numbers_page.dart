import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// import 'package:assets_audio_player/assets_audio_player.dart';
class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  Color am = Colors.amber;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
        backgroundColor: Colors.brown,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Number("assets/images/numbers/number_one.png", 'one', 'Ichi', () {
              player.play(AssetSource("sounds/numbers/number_one_sound.mp3"));
            }),
            Number("assets/images/numbers/number_two.png", 'two', 'Ni', () {
              player.play(AssetSource("sounds/numbers/number_two_sound.mp3"));
            }),
            Number("assets/images/numbers/number_three.png", 'three', 'Mittsu',
                () {
              player.play(AssetSource("sounds/numbers/number_three_sound.mp3"));
            }),
            Number("assets/images/numbers/number_four.png", 'four', 'Shi', () {
              player.play(AssetSource("sounds/numbers/number_four_sound.mp3"));
            }),
            Number("assets/images/numbers/number_five.png", 'five', 'Go', () {
              player.play(AssetSource("sounds/numbers/number_five_sound.mp3"));
            }),
            Number("assets/images/numbers/number_six.png", 'six', 'Roku', () {
              player.play(AssetSource("sounds/numbers/number_six_sound.mp3"));
            }),
            Number("assets/images/numbers/number_seven.png", 'seven', 'Sebun',
                () {
              player.play(AssetSource("sounds/numbers/number_seven_sound.mp3"));
            }),
            Number("assets/images/numbers/number_eight.png", 'eight', 'Hachi',
                () {
              player.play(AssetSource("sounds/numbers/number_eight_sound.mp3"));
            }),
            Number("assets/images/numbers/number_nine.png", 'nine', 'Kyū', () {
              player.play(AssetSource("sounds/numbers/number_nine_sound.mp3"));
            }),
            Number("assets/images/numbers/number_ten.png", 'ten', 'Jū', () {
              player.play(AssetSource("sounds/numbers/number_ten_sound.mp3"));
            }),
          ],
        ),
      ),
    );
  }

  Container Number(img, eng, jap, audiofun) {
    return Container(
      color: am,
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
                Text(eng,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Text(jap,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
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
