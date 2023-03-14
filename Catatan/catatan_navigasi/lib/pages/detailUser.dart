import 'package:flutter/material.dart';
import 'detail.dart';

class DetailUserPage extends StatelessWidget {
  final String identitasNama;
  final String identitasUsername;

  const DetailUserPage(
      {required this.identitasNama, required this.identitasUsername});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail User Page"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Nama: $identitasNama",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Username: $identitasUsername",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

// Passing Data Troubleshoot
// https://stackoverflow.com/questions/56678416/flutter-passing-multiple-data-between-screens
