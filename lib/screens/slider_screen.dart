import 'package:flutter/material.dart';
import 'package:my_app/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider Screen')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                value: _sliderValue,
                activeColor: AppTheme.primary,
                min: 50,
                max: 700,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        print("slider value $_sliderValue");
                        setState(() {});
                      }
                    : null),
            // Checkbox(
            //     value: _sliderEnabled,
            //     onChanged: (value) {
            //       print(value);
            //       _sliderEnabled = value ?? true;
            //       setState(() {});
            //     }),
            // CheckboxListTile(
            //     activeColor: AppTheme.primary,
            //     title: const Text("Checkbox lis tile"),
            //     value: _sliderEnabled,
            //     onChanged: (value) => setState(() {
            //           _sliderEnabled = value ?? true;
            //         })),
            // Switch(
            //     activeColor: AppTheme.primary,
            //     value: _sliderEnabled,
            //     onChanged: (value) => setState(() {
            //           _sliderEnabled = value ?? true;
            //         })),
            SwitchListTile.adaptive(
                title: const Text("switch list tile"),
                activeColor: AppTheme.primary,
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value ?? true;
                    })),
            const AboutListTile(),
            Image(
              image: const NetworkImage(
                  'https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/e/e1/Tanjiro_anime.png/revision/latest?cb=20230117090856'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
