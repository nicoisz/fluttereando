// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  //int _count = 0;
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
        elevation: 1.0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("número de clicks", style: fontSize30),
            Text("30", style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("asdasdasd");
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
