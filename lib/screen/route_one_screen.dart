import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';

class RooueOneScreen extends StatelessWidget {
  const RooueOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Route one",
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Pop"),
        )
      ],
    );
  }
}
