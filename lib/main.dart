import 'package:flutter/material.dart';
import 'package:namer_app/home.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sandbox"),
        backgroundColor: Colors.grey,
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            color: Colors.red,
            child: const Text("one"),
          ),
          Container(
            width: 200,
            color: const Color.fromARGB(255, 54, 244, 67),
            child: const Text("one"),
          ),
          Container(
            width: 300,
            color: const Color.fromARGB(255, 108, 54, 244),
            child: const Text("one"),
          )
        ],
      ),
    );
  }
}
