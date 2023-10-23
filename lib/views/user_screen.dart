import 'package:flutter/material.dart';
import 'package:practice_7/model/user.dart';

class UserScreen extends StatelessWidget {
  final User user;
  const UserScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(
                user.name,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(user.story),
              leading: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              trailing: Text(user.country),
            ),
            ListTile(
              title: Text(
                user.phone,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.phone,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text(
                user.email.isEmpty ? 'Not specified' : user.email,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.mail,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
