import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              const Text('Home Screen', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: ListView(children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: ClipOval(
              child: Image.network(
                  'https://media.licdn.com/dms/image/D4D03AQFLTR9oDuF87Q/profile-displayphoto-shrink_800_800/0/1678310022067?e=1716422400&v=beta&t=bSJjlo25x01cblaFt4tcD8kCaYQWaQi7LaBgQmJacGQ',
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: const Column(
              children: [
                Text('Andres Conde', style: TextStyle(fontSize: 40)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                      'Desarrollador Front-End con conocimietos en Back-End también. Actualmente me encuentro trabajando en ITR y he trabajado para clientes como comafi, Transportes Rio De La PLata y Carrefour desarrollando en tecnologias como react, react-native, angular y node.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify),
                )
              ],
            ),
          ),
        ]));
  }
}

/* [
          Container(
            alignment: Alignment.center,
            height: 200,
            child: ClipOval(
              child: Image.network(
                  'https://media.licdn.com/dms/image/D4D03AQFLTR9oDuF87Q/profile-displayphoto-shrink_800_800/0/1678310022067?e=1716422400&v=beta&t=bSJjlo25x01cblaFt4tcD8kCaYQWaQi7LaBgQmJacGQ',
                  fit: BoxFit.fill),
            ),
          ),
          const Text('holaaaaaaaaa')
        ] */