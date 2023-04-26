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
    // MenuOptions(
    //     route: 'home',
    //     icon: Icons.home,
    //     name: 'home',
    //     screen: const HomeScreen()),
    MenuOptions(
        route: 'listView1',
        icon: Icons.list,
        name: 'listView1',
        screen: const Listview1Screen()),
    MenuOptions(
        route: 'listView2',
        icon: Icons.list_alt,
        name: 'listView2',
        screen: const Listview2Screen()),
    MenuOptions(
        route: 'animated',
        icon: Icons.play_arrow_outlined,
        name: 'animatedScreen',
        screen: const AnimatedScreen()),
    MenuOptions(
        route: 'input',
        icon: Icons.text_fields,
        name: 'inputScreen',
        screen: const InputForm()),
    MenuOptions(
        route: 'slider',
        icon: Icons.sledding_rounded,
        name: 'SliderScreen',
        screen: const SliderScreen()),
    MenuOptions(
        route: 'listViewBuilder',
        icon: Icons.build,
        name: 'listViewBuilderScreen',
        screen: const SliderScreen())
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
    'home': (BuildContext context) => const HomeScreen(),
    'listView1': (BuildContext context) => const Listview1Screen(),
    'listView2': (BuildContext context) => const Listview2Screen(),
    'animated': (BuildContext context) => const AnimatedScreen(),
    'input': (BuildContext context) => const InputForm(),
    'slider': (BuildContext context) => const SliderScreen(),
    'listViewBuilder': (BuildContext context) => const ListViewBuilderScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
