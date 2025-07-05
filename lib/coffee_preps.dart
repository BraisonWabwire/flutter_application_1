import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  const Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('strength: '),
            const Text('3'),
            Image.asset('assets/img/1.jpg',
            width: 25,
            color: Colors.white,
            colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child:SizedBox()),
            FilledButton(onPressed: (){}, child: const Text("+")),
            
          ],
        ),
        Row(
            children: [
            Text('sugar: '),
            Text('3'),
            Image.asset('assets/img/2.jpg',
            width: 25,
            ),
            const Expanded(child:SizedBox()),
            TextButton(onPressed: (){}, child: const Text("+")),

          ],
        )
      ],
    );
  }
}