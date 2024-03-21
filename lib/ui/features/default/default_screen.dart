import 'package:flutter/material.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Default Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.50,
              child: Image.asset('assets/images/login_example.png'),
            ),
            Image.network('https://www.shutterstock.com/image-vector/default-ui-image-placeholder-wireframes-600nw-1037719192.jpg'),
            const SizedBox(
              height: 20,
            ),
            const Text('This is the default screen')
          ],
        ),
      ),
    );
  }
}
