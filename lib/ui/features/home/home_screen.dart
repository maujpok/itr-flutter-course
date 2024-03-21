import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itr_course_app/ui/features/display_widgets/display_widgets.dart';
import 'package:itr_course_app/ui/features/home/bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get child => null;

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ITR Flutter'),
        backgroundColor: Colors.blueAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _index = value;
          });
          print(value);
        },
        currentIndex: _index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.logout,
            ),
            label: 'Default',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
            ),
            label: 'DisplayWidgets',
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DisplayWidgetScreens(),
                )),
            child: const Text('Go to Display Widget Screen'),
          ),
          ElevatedButton(
            onPressed: () => context.read<HomeBloc>().add(SetHomeIndexEvent(index: 0)),
            child: const Text('Go to BLoC with 0'),
          ),
          ElevatedButton(
            onPressed: () => context.read<HomeBloc>().add(SetHomeIndexEvent(index: 1)),
            child: const Text('Go to BLoC with 1'),
          ),
          ElevatedButton(
            onPressed: () => context.read<HomeBloc>().add(SetHomeIndexEvent(index: 2)),
            child: const Text('Go to BLoC with 2'),
          ),
          const SizedBox(
            height: 24,
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Center(
                child: Text(
                  'La pagina es: ${state.pageName ?? 'lo que yo quiera'}',
                  style: const TextStyle(fontSize: 24),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
