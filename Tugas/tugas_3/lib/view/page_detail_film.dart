import 'package:flutter/material.dart';
import './page_list_film.dart';
import 'package:tugas_3/model/list_film.dart';

// class PageDetailFilms extends StatefulWidget {
//   const PageDetailFilms({super.key, required this.film});
//   final Search film;

//   @override
//   State<PageDetailFilms> createState() => _PageDetailFilmsState();
// }

// class _PageDetailFilmsState extends State<PageDetailFilms> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(film.title),
//       ),
//     );
//   }
// }

class PageDetailFilms extends StatelessWidget {
  const PageDetailFilms({super.key, required this.film});
  final Search film;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((film.title).toString()),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Image.network(film.poster!),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(film.title!),
                SizedBox(
                  width: 5,
                ),
                Text('(${film.year!})'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(film.type!),
            SizedBox(
              height: 10,
            ),
            Text(film.imdbID!),
          ],
        ),
      ),
    );
  }
}
