import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page_list_film.dart';

class PageSearchFilm extends StatefulWidget {
  const PageSearchFilm({Key? key}) : super(key: key);

  @override
  _PageSearchFilmState createState() => _PageSearchFilmState();
}

class _PageSearchFilmState extends State<PageSearchFilm> {
  final _controller = TextEditingController();
  String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Film"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(1),
                child: Container(
                  child: TextField(
                    selectionHeightStyle: BoxHeightStyle.max,
                    style: GoogleFonts.nunitoSans(
                        textStyle:
                        TextStyle( fontSize: 15)),
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.nunitoSans(
                          fontSize: 15.0),
                      hintText: "Enter film title",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0)),

                      filled: true,
                      icon: Icon(
                        Icons.search,
                        size: 40.0,
                      ),
                    ),
                    controller: _controller,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.all(1),
              child: Container(
                  child: ElevatedButton(
                    child: Text(
                      "Search",
                      style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 20.0)),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return PageListFilms(text: _controller.text);
                          }));
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
