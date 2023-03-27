import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screen/route_one_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Home Screen",
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => RooueOneScreen(),
              ),
            );
          },
          child: Text("Push"),
        )
      ],
    );
  }
}
