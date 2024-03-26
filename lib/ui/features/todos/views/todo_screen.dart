import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:itr_course_app/ui/features/todos/bloc/todos_bloc.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({super.key});

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDos Screen'),
      ),
      body: BlocBuilder<TodosBloc, TodosState>(
        builder: (context, state) {
          if (state.loading || state.toDos == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.separated(
              shrinkWrap: true,
              itemCount: state.toDos!.length,
              separatorBuilder: (context, index) => const Divider(
                    height: 20,
                    color: Colors.blueAccent,
                  ),
              itemBuilder: (context, hola) {
                final curr = state.toDos![hola];
                return Row(
                  children: [
                    Text('User ID: ${curr.userId}'),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Title: ${curr.title}',
                        style: TextStyle(
                          color: (curr.completed ?? false) ? Colors.green : Colors.red,
                          fontWeight: (curr.completed ?? false) ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}
