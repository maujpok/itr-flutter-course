import 'package:flutter/material.dart';
import 'package:itr_course_app/domain/models/user_model.dart';
import 'package:itr_course_app/ui/features/home/user_details_screen.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({
    super.key,
    required this.curr,
  });

  final UserModel curr;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
      tileColor: Colors.green,
      leading: const Icon(Icons.account_circle_outlined),
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      textColor: Colors.white,
      iconColor: Colors.white,
      title: Text(
        '${curr.firstname!} ${curr.lastname!}',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text('Email: ${curr.email}'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserDetailsScreen(userId: curr.id!),
          ),
        );
      },
    );
  }
}
