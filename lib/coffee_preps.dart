import 'package:flutter/material.dart';

class Coffee extends StatefulWidget {
  const Coffee({super.key});

  @override
  State<Coffee> createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  int strength = 1;
  int sugar = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
    
  }
   void increaseSugar() {
      setState(() {
        sugar = sugar < 5 ? sugar + 1 : 0;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('strength'),
            for (int i=0; i< strength; i++)
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
              onPressed: increaseStrength,
              child: const Text("+"),
            ),
          ],
        ),
        Row(
          children: [
            Text('sugar: '),
            if (sugar==0)
            const Text("No sugars...."),
            for(int i=0; i<sugar; i++)
            Image.asset('assets/img/2.jpg', width: 25),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseSugar,
              child: const Text("+"),
            ),
          ],
        ),
      ],
    );
  }
}
