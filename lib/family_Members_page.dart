import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class FamilyMemberScreen extends StatefulWidget {
  const FamilyMemberScreen({super.key});

  @override
  State<FamilyMemberScreen> createState() => _FamilyMemberScreenState();
}

class _FamilyMemberScreenState extends State<FamilyMemberScreen> {
  Color gr = Colors.green;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FamilyMembers"),
        backgroundColor: Colors.brown,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FamilyMember("assets/images/family_members/family_daughter.png",
                'Musume', 'Daughter', () {
              player.play(AssetSource("sounds/family_members/daughter.wav"));
            }),
            FamilyMember("assets/images/family_members/family_father.png",
                'Chichioya', 'Father', () {
              player.play(AssetSource("sounds/family_members/father.wav"));
            }),
            FamilyMember("assets/images/family_members/family_grandfather.png",
                'Ojīsan', 'Grandfather', () {
              player.play(AssetSource("sounds/family_members/grandfather.wav"));
            }),
            FamilyMember("assets/images/family_members/family_grandmother.png",
                'O bāchan', 'Grandmother', () {
              player.play(AssetSource("sounds/family_members/grandmother.wav"));
            }),
            FamilyMember("assets/images/family_members/family_mother.png",
                'Hahaoya', 'Mother', () {
              player.play(AssetSource("sounds/family_members/mother.wav"));
            }),
            FamilyMember(
                "assets/images/family_members/family_older_brother.png",
                'Ani',
                'Older Brother', () {
              player
                  .play(AssetSource("sounds/family_members/olderbrother.wav"));
            }),
            FamilyMember("assets/images/family_members/family_older_sister.png",
                'Ane', 'Older Sister', () {
              player.play(AssetSource("sounds/family_members/oldersister.wav"));
            }),
            FamilyMember(
                "assets/images/family_members/family_son.png", 'Musuko', 'Son',
                () {
              player.play(AssetSource("ssounds/family_members/son.wav"));
            }),
            FamilyMember(
                "assets/images/family_members/family_younger_brother.png",
                'Otōto',
                'Younger Brother', () {
              player.play(
                  AssetSource("sounds/family_members/youngerbrother.wav"));
            }),
            FamilyMember(
                "assets/images/family_members/family_younger_sister.png",
                'Imōto',
                'Younger Sister', () {
              player
                  .play(AssetSource("sounds/family_members/youngersister.wav"));
            }),
          ],
        ),
      ),
    );
  }

  Container FamilyMember(img, eng, jap, audiofun) {
    return Container(
      color: gr,
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(eng,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
