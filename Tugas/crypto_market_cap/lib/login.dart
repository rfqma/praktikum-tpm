import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_tpm/homeScreen.dart';
import 'package:project_tpm/services/user_database_helper.dart';
import 'package:project_tpm/widgets/bottom_map.dart';
import 'package:project_tpm/register.dart';

class LoginPage extends StatefulWidget {
  // final String username;
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = true;
  bool hidePassword = true;

  // Toggle to show password
  void passwordToggle() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: size.height * 0.2,
            top: size.height * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Welcome, \nMarket Cap Cryptocurrency App",
                style: GoogleFonts.getFont(
                  'Montserrat',
                  textStyle: TextStyle(
                      fontSize: size.width * 0.050,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 25,
                  ),

                  //* Username Field
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      enabled: true,
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: "Username",
                        labelStyle: GoogleFonts.getFont(
                          'Montserrat',
                          textStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        isDense: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            color: (isLoginSuccess)
                                ? Colors.transparent
                                : Colors.red,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 24,
                        ),
                      ),
                      onChanged: (value) {
                        username = value;
                      },
                    ),
                  ),
                  //* End of Username Field

                  SizedBox(
                    height: 15,
                  ),

                  //* Password Field
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: TextField(
                      enabled: true,
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      obscureText: hidePassword,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: "Password",
                          labelStyle: GoogleFonts.getFont(
                            'Montserrat',
                            textStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          isDense: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            borderSide: BorderSide(
                              color: (isLoginSuccess)
                                  ? Colors.transparent
                                  : Colors.red,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            size: 24,
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 4, 0),
                            child: GestureDetector(
                              onTap: passwordToggle,
                              child: Icon(
                                hidePassword
                                    ? Icons.visibility_rounded
                                    : Icons.visibility_off_rounded,
                                size: 24,
                              ),
                            ),
                          )),
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                  ),
                  //* End of Password Field
                ],
              ),

              //* Login Button
              ElevatedButton(
                onPressed: () async {
                  try {
                    var listUser = await userDatabaseHelper
                        .getUserByUsernameAndPassword(username, password);
                    if (listUser.length > 0) {
                      final snackbar = SnackBar(
                        content: Text('Login Berhasil'),
                      );
                      // SharedPreferences pref =
                      //     await SharedPreferences.getInstance();
                      // pref.setString('username', listUser[0].username!);
                      // pref.setInt('userId', listUser[0].id!);
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      // Navigator.pushReplacementNamed(
                      //     context, RouterName.homepage);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BottomMap(),
                          ));
                    }
                  } catch (e) {
                    setState(() {
                      // error = 'Username or Password is wrong';
                      final snackbar = SnackBar(
                        content: Text('Login Gagal!'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    });
                  }
                },
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.all(16),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Register(),
                      ));
                },
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.all(16),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Register",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              )

              //* End of Login Button
            ],
          ),
        ),
      ),
    );
  }
}
