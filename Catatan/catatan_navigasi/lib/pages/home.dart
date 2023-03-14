import 'package:catatan_navigasi/pages/detail.dart';
import 'package:catatan_navigasi/pages/login.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String pesanKirim = "Pesan dari Home Page!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selamat Datang!"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Ini adalah Home Page",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
              child: Text('Kembali dengan Stack'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text('Pindah Screen tanpa Stack'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Colors.green),
              child: Text(
                'Kirim pesan ke Detail Page',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(pesan: pesanKirim);
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
