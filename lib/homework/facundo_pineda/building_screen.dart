import 'package:flutter/material.dart';

class BuildingScreen extends StatelessWidget {
  const BuildingScreen({super.key});
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Building Page'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text('En Contruccion'),
          )
        ],
      ),
    );
  }
}
