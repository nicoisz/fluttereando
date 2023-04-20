import 'package:flutter/material.dart';
import 'package:my_app/theme/app_theme.dart';

class CustomCardTye2 extends StatelessWidget {
  final String imageUrl;
  final String? name;
  const CustomCardTye2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: AppTheme.primary.withOpacity(0.6),
      elevation: 15,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 20, left: 20),
              alignment: AlignmentDirectional.centerEnd,
              child: Text(name ?? 'no name'),
            )
        ],
      ),
    );
  }
}
