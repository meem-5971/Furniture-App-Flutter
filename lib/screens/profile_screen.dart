import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController(text: "John Doe");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "Full Name"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Update profile logic
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Profile updated!")),
                );
              },
              child: Text("Update Profile"),
            )
          ],
        ),
      ),
    );
  }
}
