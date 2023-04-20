import 'package:flutter/material.dart';
import 'package:my_app/router/router.dart';
import 'package:my_app/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //int _count = 0;
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Scren"),
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                leading: Icon(
                  menuOptions[i].icon,
                  color: AppTheme.primary,
                ),
                title: Text(menuOptions[i].name),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}
