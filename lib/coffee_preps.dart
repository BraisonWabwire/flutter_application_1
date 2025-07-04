import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  const Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text('strength: '),
            Text('3'),
            SizedBox(width: 50),
          ],
        ),
        Row(
            children: [
            Text('sugar: '),
            Text('3'),
            SizedBox(width: 50),
          ],
        )
      ],
    );
  }
}