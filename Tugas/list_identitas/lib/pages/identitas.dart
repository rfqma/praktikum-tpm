import 'package:flutter/material.dart';
import 'dart:core';
import 'package:list_identitas/pages/identitasDetail.dart';

import '../models/identity.dart';

class Identitas extends StatefulWidget {
  const Identitas({super.key});

  @override
  State<Identitas> createState() => _IdentitasState();
}

class _IdentitasState extends State<Identitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Praktikum Teknologi dan Pemrograman Mobile"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Identity identity = listIdentity[index];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailIdentitas(
                              identityName: listIdentity[index].name,
                              identityFotoUrls: listIdentity[index].fotoUrls,
                              identityUsername: listIdentity[index].username,
                              identityEmail: listIdentity[index].email,
                              identityCompany: listIdentity[index].company,
                            )));
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(identity.fotoUrls),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        identity.name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: listIdentity.length,
      ),
    );
  }
}
