import 'package:flutter/material.dart';

class HomeLuis extends StatelessWidget {
  const HomeLuis({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    void prevPage() {
      Navigator.pop(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: prevPage,
        ),
      ),
      body: const Center(
        child: Text(
          '¡New Screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}