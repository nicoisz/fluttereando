import 'package:flutter/material.dart';
import 'package:my_app/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          const ListTile(
            title: Text("soy un titulo"),
            subtitle: Text(
                "Qui aliquip nisi deserunt dolore dolore nulla pariatur non. Quis dolore fugiat dolore ut occaecat enim sint esse laborum officia sit laborum eu. Excepteur magna laboris eiusmod."),
            leading: Icon(Icons.card_giftcard, color: AppTheme.primary),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("ok"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("cancel"),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
