import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  const Coffee({super.key});

  void increaseStrength() {
    print("inc sterngth by 1");
  }

  void increaseSugar() {
    print("increase sugar by 1");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('strength: '),
            const Text('3'),
            Image.asset(
              'assets/img/1.jpg',
              width: 25,
              color: Colors.white,
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength, child: const Text("+")),
          ],
        ),
        Row(
          children: [
            Text('sugar: '),
            Text('3'),
            Image.asset('assets/img/2.jpg', width: 25),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseSugar, child: const Text("+")),
          ],
        ),
      ],
    );
  }
}
