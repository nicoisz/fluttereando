import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({super.key});

  final options = const [
    'megaman',
    'final_fantasy',
    'mario bross',
    'killer instinct'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("list view 1"),
      ),
      body: ListView(
        children: [
          ...options.map((e) => ListTile(
                title: Text(e),
                trailing: const Icon(Icons.arrow_forward_ios),
              )),
          const Divider()
        ],
      ),
    );
  }
}
