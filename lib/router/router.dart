import 'package:flutter/material.dart';
import 'package:my_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'alerta': (BuildContext context) => const Alertscreen(),
    'card': (BuildContext context) => const CardScreen(),
    'counter': (BuildContext context) => const CounterScreen(),
    'home': (BuildContext context) => const HomeScreen(),
    'listView1': (BuildContext context) => const Listview1Screen(),
    'listView2': (BuildContext context) => const Listview2Screen()
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Alertscreen(),
    );
  }
}
