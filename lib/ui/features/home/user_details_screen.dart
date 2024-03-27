import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itr_course_app/ui/features/home/bloc/home_bloc.dart';

/*class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({
    super.key,
    required this.userId,
  });

  final int userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Center(
        child: Text('The user id number is: $userId'),
      ),
    );
  }
}*/

 class UserDetailsScreen extends StatefulWidget {
   const UserDetailsScreen({
     super.key,
     required this.userId,
   });

   final int userId;

   @override
   State<UserDetailsScreen> createState() => _UserDetailsScreenState();
 }

 class _UserDetailsScreenState extends State<UserDetailsScreen> {
   
  @override
  void initState() {
    context.read<HomeBloc>().add(FetchUserByIDEvent(id: widget.userId));
    super.initState();
  }
   
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text('User Details'),
       ),
       body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.selectedUser == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                color: Colors.green,
                child: Column(
                  children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text('id: ${state.selectedUser!.id.toString()}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Name: ${state.selectedUser?.firstname ?? "No name"}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Username: ${state.selectedUser?.lastname ?? "No username"}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                ]),
              ),
            );
          },
        )
     );
   }
 }
