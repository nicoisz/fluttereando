import 'package:flutter/material.dart';
import 'package:my_app/router/router.dart';

import 'package:my_app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: const Listview2Screen(),
        initialRoute: 'home',
        routes: AppRoutes.routes,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: AppTheme.lighTheme);
  }
}
