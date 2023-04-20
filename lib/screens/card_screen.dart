import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Scren"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          CustomCardTye2(
            imageUrl:
                'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg',
            name: 'LandScape',
          ),
          SizedBox(height: 20),
          CustomCardTye2(
              name: "Isagi",
              imageUrl:
                  'https://phantom-marca.unidadeditorial.es/fe71ab69fa05e056a767f573c1cd0e6e/resize/1320/f/jpg/assets/multimedia/imagenes/2022/10/03/16648202656055.jpg'),
          SizedBox(height: 20),
          CustomCardTye2(
              imageUrl:
                  'https://phantom-marca.unidadeditorial.es/276f14b789c51440a8a40a3a7b7b989b/resize/1320/f/jpg/assets/multimedia/imagenes/2022/10/21/16663654874199.jpg')
        ],
      ),
    );
  }
}
