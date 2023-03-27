import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;
  const RouteOneScreen({
    this.number,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Route one",
      children: [
        Text(
          number.toString(),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text("Pop"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => RouteTwoScreen(),
                settings: RouteSettings(arguments: 789),
              ),
            );
          },
          child: Text("Push"),
        ),
      ],
    );
  }
}
