// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomeScroll extends StatelessWidget {
  const HomeScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ITR - Flutter'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => const SizedBox(height: 30),
                itemCount: students.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                      color: Colors.red,
                      width: double.infinity,
                      height: 500,
                      child: Text(
                        students[index]['name'].toString(),
                      ),
                    )

                // ListView(
                //   padding: EdgeInsets.symmetric(
                //     vertical: 20,
                //     horizontal: 10,
                //   ),
                //   children: [
                //     ...students
                //         .map(
                //           (e) => Container(
                //             margin: EdgeInsets.only(bottom: 20),
                //             color: Colors.red,
                //             width: double.infinity,
                //             height: 50,
                //             child: Text(
                //               e['name'].toString(),
                //             ),
                //           ),
                //         )
                //         .toList(),
                //     Container(
                //       color: Colors.green,
                //       width: 100,
                //       height: 100,
                //     )
                //   ],
                // )
                // -----------
                // SingleChildScrollView(
                //   child: Column(
                //     children: [
                //       Container(
                //         color: Colors.blueAccent,
                //         width: double.infinity,
                //         height: 500,
                //       ),
                //       const SizedBox(
                //         height: 10,
                //       ),
                //       Container(
                //         color: Colors.blueAccent,
                //         width: double.infinity,
                //         height: 500,
                //       ),
                //     ],
                //   ),
                ),
            Container(
              color: Colors.green,
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}

const students = [
  {
    'name': 'jose',
    'age': 18,
    'status': true,
  },
  {
    'name': 'juana',
    'age': 22,
    'status': false,
  },
  {
    'name': 'martin',
    'age': 55,
    'status': true,
  },
];

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.buttonTitle,
  });

  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => print('Hola Mundo!'),
      child: Text(buttonTitle),
    );
  }
}
