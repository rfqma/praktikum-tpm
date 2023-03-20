import 'package:flutter/material.dart';
import 'package:list_identitas/models/identity.dart';

class DetailIdentitas extends StatelessWidget {
  final Identity identity;

  const DetailIdentitas({
    required this.identity,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Praktikum Teknologi dan Pemrograman Mobile"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 250,
              child: Image.network(identity.fotoUrls),
            ),
            Text(
              identity.name,
              style: TextStyle(fontSize: 20),
            ),
            Text(identity.username),
            SizedBox(
              height: 10,
            ),
            Text(
              identity.email.join(' / '),
              textAlign: TextAlign.center,
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: identity.company.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(
                        identity.company[index][0],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        identity.company[index][1],
                        textAlign: TextAlign.center,
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Display String from List without Brackets Troubleshoot
// https://stackoverflow.com/questions/69749367/how-to-remove-brackets-from-list-when-going-to-display-as-a-string-and-add-i
// https://stackoverflow.com/questions/72422778/how-read-list-inside-list-on-dartflutter

