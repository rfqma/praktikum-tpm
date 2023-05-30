import 'package:flutter/material.dart';
import 'package:responsi_/screens/register_screen.dart';
import 'package:responsi_/utilities/auth_manager.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthManager _authManager = AuthManager();

  Future<void> _login(BuildContext context) async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    final success = await _authManager.login(username, password);
    if (success) {
      // Navigate to the authenticated screen
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Failed'),
          content: Text('Invalid username or password.'),
          actions: [
            ElevatedButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey[850])),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
              child: Text('Login'),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey[850])),
              onPressed: () => _login(context),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Register'),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey[850])),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
