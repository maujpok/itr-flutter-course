import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreenNico extends StatefulWidget {
  const HomeScreenNico({super.key});

  @override
  State<HomeScreenNico> createState() => _HomeScreenNico();
}

class _HomeScreenNico extends State<HomeScreenNico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 14, 53, 100),
        ),
        backgroundColor: const Color.fromARGB(251, 59, 126, 226),
        title: const Text(
          'El Home de Nicolás',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.50,
                child: Image.asset('assets/images/llama.jpg'),
              ),
              Container( padding: const EdgeInsets.all(10),child: const Text(style: TextStyle(fontSize: 18),
              """Nicolás Vidable, Android developer en ITR.\nBrindo soporte y desarrollo de nuevas features para la aplicación de clientes de Swiss Medical.\nTrabajo remoto desde la provincia de Córdoba de Lunes a Viernes de 9 a 18hs.""", textAlign: TextAlign.center),)
            ],
          ),
        ),
      ),
    );
  }
}