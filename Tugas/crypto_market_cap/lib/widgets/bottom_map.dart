import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_tpm/homeScreen.dart';
import 'package:project_tpm/help.dart';
import 'package:project_tpm/login.dart';
import 'package:project_tpm/profile.dart';

class BottomMap extends StatefulWidget {
  const BottomMap({super.key});

  @override
  State<BottomMap> createState() => _BottomMapState();
}

class _BottomMapState extends State<BottomMap> {
  int index = 0;
  List list = [HomeScreen(), Help(), Profile()];

  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Akhir TPM',
      home: Scaffold(
        body: list[index],
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = HomeScreen();
                          index = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: index == 0 ? Colors.blue : Colors.white,
                          ),
                          Text(
                            "Home",
                            style: GoogleFonts.getFont(
                              "Montserrat",
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  color:
                                      index == 0 ? Colors.blue : Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Help();
                          index = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.help,
                            color: index == 1 ? Colors.blue : Colors.white,
                          ),
                          Text(
                            "Help",
                            style: GoogleFonts.getFont(
                              "Montserrat",
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  color:
                                      index == 1 ? Colors.blue : Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Profile();
                          index = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: index == 2 ? Colors.blue : Colors.white,
                          ),
                          Text(
                            "Profile",
                            style: GoogleFonts.getFont(
                              "Montserrat",
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  color:
                                      index == 2 ? Colors.blue : Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.logout,
                            color: index == 3 ? Colors.blue : Colors.white,
                          ),
                          Text(
                            "Logout",
                            style: GoogleFonts.getFont(
                              "Montserrat",
                              textStyle:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
