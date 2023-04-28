import 'package:flutter/material.dart';
import 'package:flutter_application_1/Family_Members_page.dart';
import 'package:flutter_application_1/colors_page.dart';
import 'package:flutter_application_1/numbers_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Color br = Colors.brown;
  Color am = Colors.amber;
  Color gr = Colors.green;
  Color pr = Colors.purple;
  Color bl = Colors.white;
  Color wh = Colors.black;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Language Learning App",
        ),
        backgroundColor: br,
      ),
      body: Container(
        width: double.infinity,
        // color: Color.fromARGB(255, 158, 155, 155),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 35),
                child: Text(
                  "Your way to learn japanese",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  minVerticalPadding: 15,
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  textColor: wh,
                  title: Text(
                    "Numbers",
                    style: TextStyle(fontSize: 23),
                  ),
                  tileColor: am,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => NumberScreen())));
                  },
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  minVerticalPadding: 15,
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  textColor: wh,
                  title: Text(
                    "Family Members",
                    style: TextStyle(fontSize: 23, color: wh),
                  ),
                  tileColor: gr,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => FamilyMemberScreen())));
                  },
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  minVerticalPadding: 15,
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  textColor: wh,
                  title: Text(
                    "Colors",
                    style: TextStyle(fontSize: 23, color: wh),
                  ),
                  tileColor: pr,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Colors_screen())));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
