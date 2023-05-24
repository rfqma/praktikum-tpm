import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileRifqi extends StatefulWidget {
  const ProfileRifqi({super.key});

  @override
  State<ProfileRifqi> createState() => _ProfileRifqiState();
}

class _ProfileRifqiState extends State<ProfileRifqi> {
  String src =
      'https://lh3.googleusercontent.com/a/AAcHTteLlSJnFp4L_P3z_kP9B2sbTmp3BJXYbfvGfgPy=s360-c-no';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              "Profile",
              style: GoogleFonts.getFont(
                'Montserrat',
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 2.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 239, 238, 238).withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(src),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: Text(
                  "Rifqi Maulana",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: Text(
                  "a 20yo Minimalist, Digital Native, Photography and Videography Enthusiast. Undergraduate student majoring on Informatics Engineering.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 212, 210, 210),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
