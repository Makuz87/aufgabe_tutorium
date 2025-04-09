import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
// Gruppe 4:  Davut, Melike, Markus, Somin, Bastian

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<String> cars = [
    "BMW",
    "Mercedes",
    "Audi",
    "Skoda",
    "VW",
    "Ford",
    "KIA",
    "Porsche",
    "Honda",
    "Opel",
  ];

  void iDeleteTheLastPosition() {
    setState(() {
      cars.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: cars.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.amber,
                        child: ListTile(
                          leading: Icon(Icons.car_crash_outlined),
                          title: Text(cars[index]),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      iDeleteTheLastPosition();
                    },
                    child: Text("Delete last Car!"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
