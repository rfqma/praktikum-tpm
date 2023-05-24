import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileRae extends StatefulWidget {
  const ProfileRae({super.key});

  @override
  State<ProfileRae> createState() => _ProfileRaeState();
}

class _ProfileRaeState extends State<ProfileRae> {
  String src =
      'https://media.licdn.com/dms/image/C5603AQFUYrn4d309zQ/profile-displayphoto-shrink_800_800/0/1661243198316?e=1690416000&v=beta&t=UJ9_HsDvxKK8vvnQDMw4Wp72xw_DEelTbFemMZuX4A4';
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
                  "Muhammad Raehan Parikesit",
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
                  "Hai, saya Muhammad Raehan Parikesit, biasa dipanggil Rae. Saya seorang mahasiswa sarjana informatika tahun ketiga yang antusias yang tertarik dengan IT, dan suka mempelajari hal-hal baru, terutama jaringan komputer. Senang mengerjakan beberapa proyek. Senang bekerja dalam tim, mudah beradaptasi dengan tanggung jawab dan lingkungan baru, bermotivasi tinggi, menekankan logika dan pemikiran kritis.",
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
