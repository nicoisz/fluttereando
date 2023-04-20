import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alertscreen extends StatelessWidget {
  const Alertscreen({super.key});

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            elevation: 5,
            title: const Text("titulo"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("contenido"),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("cancelar"))
            ],
          );
        });
  }

  void displayDialogiOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text("titulo"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("contenido"),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "Cancelar",
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Ok"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("alert Scren"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Text(
                "Mostrar Alerta",
                style: TextStyle(fontSize: 16),
              ),
            ),
            onPressed: () {
              Platform.isIOS
                  ? displayDialogiOS(context)
                  : displayDialogAndroid(context);
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 5,
        child: const Icon(Icons.close),
      ),
    );
  }
}
