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
    return WillPopScope(
      //안드로이드 시스템 상에서 pop 키 눌렀을때
      onWillPop: () async {
        //false - pop 불가능
        //ture- pop 가능
        final canpop = Navigator.of(context).canPop();
        return canpop;
      },
      child: MainLayout(
        title: "Home Screen",
        children: [
          ElevatedButton(
            onPressed: () async {
              final result = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      RouteOneScreen(number: 123),
                ),
              );
              print(result);
            },
            child: Text("Push"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Pop"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            child: Text("Maybe Pop"),
          ),
          ElevatedButton(
            onPressed: () {
              print(Navigator.of(context).canPop());
            },
            child: Text("Can pop"),
          ),
        ],
      ),
    );
  }
}
