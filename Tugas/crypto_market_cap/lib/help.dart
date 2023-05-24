import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  String _timeNowString = '';

  String _zoneString = 'WIB';

  Duration _getOffset(String zone) {
    switch (zone) {
      case 'WITA':
        return const Duration(hours: 8);
      case 'WIT':
        return const Duration(hours: 9);
      case 'GMT':
        return const Duration(hours: 0);
      default:
        return const Duration(hours: 7);
    }
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Indonesia - WIB"), value: "WIB"),
      DropdownMenuItem(child: Text("Indonesia - WITA"), value: "WITA"),
      DropdownMenuItem(child: Text("Indoensia - WIT"), value: "WIT"),
      DropdownMenuItem(child: Text("London - GMT"), value: "GMT"),
    ];
    return menuItems;
  }

  @override
  void initState() {
    super.initState();
    _timeNowString = _formatDateTime(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('HH:mm:ss').format(dateTime);
  }

  String _FormatTime(DateTime dateTime) {
    return DateFormat('HH:mm').format(dateTime);
  }

  void _getTime() {
    final DateTime utc = DateTime.now().toUtc();
    final DateTime localTime = utc.add(_getOffset(_zoneString));
    final DateTime wibTime = utc.add(_getOffset("WIB"));
    final DateTime witaTime = utc.add(_getOffset("WITA"));
    final DateTime witTime = utc.add(_getOffset("WIT"));
    final DateTime GMTTime = utc.add(_getOffset("GMT"));
    final String formattedLocalTime = _formatDateTime(localTime);
    if (this.mounted) {
      setState(() {
        _timeNowString = formattedLocalTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              "Help",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Saran Dan Pesan",
                  style: GoogleFonts.getFont(
                    'Montserrat',
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: Text(
                "Saran saya buat mata kuliah teknologi pemrograman mobile mungkin bisa diberikan materi-materi terbaru terkait bahasa pemrograman mobile sesuai dengan Praktikum. \n\n\nKesan saya untuk mata kuliah ini gila stress di hajar projact akhir.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  color: const Color.fromARGB(255, 212, 210, 210),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Server Time",
              style: GoogleFonts.getFont(
                'Montserrat',
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${_timeNowString} ${_zoneString}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black,
                  ),
                  child: DropdownButton(
                    style: TextStyle(color: Colors.white),
                    value: _zoneString,
                    items: dropdownItems,
                    dropdownColor: Colors.grey[800],
                    borderRadius: BorderRadius.circular(5),
                    onChanged: (String? value) {
                      setState(() {
                        _zoneString = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
