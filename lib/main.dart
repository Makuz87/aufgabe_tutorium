// Gruppen aus Markus, Bastian, Melike, Simon, Davut
// Bastian hatte angefangen zu Coden, aber sein VS Code hat dann Probleme gemacht und 
// deswegen sind wir etwas hinten dran gewesen
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
}

class Group4Widget extends StatefulWidget {
  const Group4Widget({super.key});

  @override
  State<Group4Widget> createState() => _Group4WidgetState();
}

class _Group4WidgetState extends State<Group4Widget> {
  List<String> cars = ["BMW", "Mercedes", "Audi"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: cars.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.remove),
            )
          },
        ),
      ],
    );
  }
}
