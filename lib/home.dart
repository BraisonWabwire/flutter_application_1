import 'package:flutter/material.dart';
import 'package:namer_app/coffee_preps.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Braison coffee ID" ,style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,

        ),),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: const Text('How i like my coffee'),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const Coffee(),
          ),
        ],
      ),
    );
  }
}
