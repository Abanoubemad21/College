import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: non_constant_identifier_names
  int _PointsA = 0;
  // ignore: non_constant_identifier_names
  int _PointsB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 79, 56, 172),
        title: const Text("Basketball Score Counter"),
        shadowColor: Colors.grey,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 450,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text("Team A", style: TextStyle(fontSize: 28)),
                    const SizedBox(
                      height: 50,
                    ),
                    Text('$_PointsA', style: const TextStyle(fontSize: 80)),
                    const SizedBox(
                      height: 50,
                    ),
                    newElevatedButton(() {
                      setState(() {
                        _PointsA++;
                      });
                    }, "+1 POINT"),
                    const SizedBox(
                      height: 10,
                    ),
                    newElevatedButton(() {
                      setState(() {
                        _PointsA += 2;
                      });
                    }, "+2 POINT"),
                    const SizedBox(
                      height: 10,
                    ),
                    newElevatedButton(() {
                      setState(() {
                        _PointsA += 3;
                      });
                    }, "+3 POINT"),
                  ],
                ),
              ),
              Container(
                height: 450,
                color: Colors.grey,
                width: 2,
                alignment: Alignment.topCenter,
              ),
              SizedBox(
                height: 450,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text("Team B", style: TextStyle(fontSize: 28)),
                    const SizedBox(
                      height: 50,
                    ),
                    Text('$_PointsB', style: const TextStyle(fontSize: 80)),
                    const SizedBox(
                      height: 50,
                    ),
                    newElevatedButton(() {
                      setState(() {
                        _PointsB++;
                      });
                    }, "+1 POINT"),
                    const SizedBox(
                      height: 10,
                    ),
                    newElevatedButton(() {
                      setState(() {
                        _PointsB += 2;
                      });
                    }, "+2 POINT"),
                    const SizedBox(
                      height: 10,
                    ),
                    newElevatedButton(() {
                      setState(() {
                        _PointsB += 3;
                      });
                    }, "+3 POINT"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 70),
          Container(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _PointsB = 0;
                  _PointsA = 0;
                });
              },
              child: Text("reset"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                  fixedSize: MaterialStateProperty.all(const Size(160, 50))),
            ),
          )
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }

  ElevatedButton newElevatedButton(fun, text) => ElevatedButton(
        onPressed: fun,
        child: Text(text),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            fixedSize: MaterialStateProperty.all(const Size(210, 50))),
      );

  // addPoint(team, pCounter) {
  //   setState(() {
  //     if (team == 0) {
  //       if (pCounter == 1) {
  //         _PointsA++;
  //       } else if (pCounter == 2) {
  //         _PointsA += 2;
  //       } else if (pCounter == 3) {
  //         _PointsA += 3;
  //       }
  //     } else {
  //       if (pCounter == 1) {
  //         _PointsB++;
  //       } else if (pCounter == 2) {
  //         _PointsB += 2;
  //       } else if (pCounter == 3) {
  //         _PointsB += 3;
  //       }
  //     }
  //   });
  // }

}
