import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final name = _nameController.text;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Hello, $name!')),
                );
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
