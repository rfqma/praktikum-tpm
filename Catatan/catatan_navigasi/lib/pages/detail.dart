import 'package:catatan_navigasi/pages/detailUser.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

import 'package:catatan_navigasi/identitas.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required String this.pesan});
  final String pesan;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Identitas dataIdentitas = listIdentitas[index];
          return Card(
            color: Colors.black,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return DetailUserPage(
                    identitasNama: listIdentitas[index].nama,
                    identitasUsername: listIdentitas[index].username,
                  );
                })));
              },
              child: Column(
                children: [
                  Text(
                    dataIdentitas.nama,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    dataIdentitas.username,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    widget.pesan,
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: listIdentitas.length,
      ),

      // Center(
      //   child: Column(
      //     children: [
      //       // Text(pesan),
      //       // ElevatedButton(
      //       //   onPressed: () {
      //       //     // _launchURL("https://google.com");
      //       //   },
      //       //   child: Text("Go to Google.com"),
      //       // ),
      //     ],
      //   ),
      // ),
    );
  }
  // Future<void> _launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}
