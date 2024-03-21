import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
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
}

// class UserDetailScreen extends StatefulWidget {
//   const UserDetailScreen({
//     super.key,
//     required this.userId,
//   });

//   final int userId;

//   @override
//   State<UserDetailScreen> createState() => _UserDetailScreenState();
// }

// class _UserDetailScreenState extends State<UserDetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('User Details'),
//       ),
//       body: Center(
//         child: Text('The user id number is: ${widget.userId}'),
//       ),
//     );
//   }
// }
