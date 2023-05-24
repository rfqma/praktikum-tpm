import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_tpm/models/user_model.dart';
import 'package:project_tpm/services/user_database_helper.dart';
import 'package:project_tpm/widgets/bottom_map.dart';
import 'package:project_tpm/login.dart';

class Register extends StatefulWidget {
  // final String username;
  const Register({
    super.key,
  });

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 200,
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
                  UserModel user =
                      UserModel(username: username, password: password);
                  try {
                    await userDatabaseHelper.createUser(user);
                  } catch (e) {
                    final snackBar = SnackBar(content: Text('Register Gagal!'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    return;
                  }
                  final snackBar =
                      SnackBar(content: Text('Register Berhasil!'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
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
              ),
              SizedBox(
                height: 80,
              ),
              //* End of Login Button
            ],
          ),
        ),
      ),
    );
  }
}
