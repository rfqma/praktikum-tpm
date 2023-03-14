import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/common_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Callback'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: "Password"),
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            SizedBox(height: 24),
            CommonButton(
              label: "Login",
              callback: (value) {
                var text = _password == "12345678"
                    ? "$value: Login Berhasil"
                    : "$value: Login Gagal";
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(text),
                ));
              },
            ),
            SizedBox(height: 12),
            CommonButton(
              label: "Register",
              callback: (value) {
                var text = "$value: Password Tersimpan";
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(text),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
