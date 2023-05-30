import 'package:flutter/material.dart';
import 'package:responsi_/utilities/auth_manager.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthManager _authManager = AuthManager();

  Future<void> _register(BuildContext context) async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    await _authManager.register(username, password);

    // Show success message and navigate back to login screen
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Success'),
        content: Text('Registration successful.'),
        actions: [
          ElevatedButton(
            child: Text('OK'),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.grey[850])),
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/login'));
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Register'),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey[850])),
              onPressed: () => _register(context),
            ),
          ],
        ),
      ),
    );
  }
}
