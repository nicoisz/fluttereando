import 'package:flutter/material.dart';

class Alertscreen extends StatelessWidget {
  const Alertscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("alert Scren"),
      ),
      body: const Center(
        child: Text('Alertscreen'),
      ),
    );
  }
}
