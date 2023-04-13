import 'package:flutter/material.dart';
import 'package:my_app/models/models.dart';
import 'package:my_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'alerta',
        icon: Icons.abc,
        name: 'alerta',
        screen: const Alertscreen()),
    MenuOptions(
        route: 'card',
        icon: Icons.card_travel,
        name: 'card',
        screen: const CardScreen()),
    MenuOptions(
        route: 'counter',
        icon: Icons.countertops,
        name: 'counter',
        screen: const CounterScreen()),
    MenuOptions(
        route: 'home', icon: Icons.home, name: 'home', screen: HomeScreen()),
    MenuOptions(
        route: 'listView1',
        icon: Icons.list,
        name: 'listView1',
        screen: const Listview1Screen()),
    MenuOptions(
        route: 'listView2',
        icon: Icons.list_alt,
        name: 'listView2',
        screen: const Listview2Screen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({option.name: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    'alerta': (BuildContext context) => const Alertscreen(),
    'card': (BuildContext context) => const CardScreen(),
    'counter': (BuildContext context) => const CounterScreen(),
    'home': (BuildContext context) => HomeScreen(),
    'listView1': (BuildContext context) => const Listview1Screen(),
    'listView2': (BuildContext context) => const Listview2Screen()
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Alertscreen(),
    );
  }
}
