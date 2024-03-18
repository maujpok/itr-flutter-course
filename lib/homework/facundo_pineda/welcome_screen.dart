import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itr_course_app/homework/facundo_pineda/user_class.dart';
import 'package:flutter_text_viewer/flutter_text_viewer.dart';
//credits: https://pub.dev/packages/flutter_text_viewer

class WelcomeScreen extends StatefulWidget {
  final UserFacu user;
  const WelcomeScreen({super.key, required this.user});
  //SecondScreen({Key key, @required this.text}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState(user);
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final UserFacu user;
  //final String description;
  //OnbordingSliderTile? title = OnbordingSliderTile();

  _WelcomeScreenState(this.user);

  Future<String> getDescription() async {
    String description = await rootBundle
        .loadString('assets/facundo_pineda/home_description.txt');
    return description;
  }

  String _fileContents = 'Cargando?';

  @override
  void initState() {
    super.initState();
    loadAsset();
  }

  Future<void> loadAsset() async {
    String fileText = await rootBundle
        .loadString('assets/facundo_pineda/home_description.txt');
    setState(() {
      _fileContents = fileText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home de ${user.email}'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const PhotoFace(),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const Text('Ver Descripcion en Nueva Page'),
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return TextViewerPage(
                      textViewer: TextViewer.asset(
                        'assets/facundo_pineda/home_description.txt',
                        highLightColor: Colors.yellow,
                        focusColor: Colors.orange,
                        ignoreCase: true,
                        onErrorCallback: (error) {
                          // show error in your UI
                          /*if (kDebugMode) {
                        print("Error: $error");
                      }*/
                        },
                      ),
                      showSearchAppBar: true,
                    );
                  },
                ));
              },
            ),
            const Text(
              "Aqui abajo se carga un asset directamente:",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 250,
              child: loadStaticText(),
            )
          ],
        ));
    //
  }

  Container loadStaticText() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Text(_fileContents),
    );
  }
}

///Static Widget with my face.
///Testing comments before a class.
class PhotoFace extends StatelessWidget {
  const PhotoFace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 250,
          child: Column(
            children: [
              Image.asset('assets/facundo_pineda/home_face.jpg'),
              /*const Image(
                image: AssetImage('assets/facundo_pineda/home_face.jpg'),
                fit: BoxFit.fitHeight,
              ),*/
              //Image.network('https://avatars.githubusercontent.com/u/7298012?v=4')
            ],
          ),
        ),
      ],
    ));
  }
}
