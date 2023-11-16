// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freshly/screens/import.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 30,
      //   backgroundColor: ,
      //   title: Text("Login"),
      // ),
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            const Color.fromARGB(255, 255, 156, 7),
            Colors.white
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: screenWidth,
              height: screenHeight * 0.075,
              margin: EdgeInsets.fromLTRB(
                  0, screenHeight * 0.075, 0, screenHeight * 0),
              child: Text(
                "Freshly",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontFamily: GoogleFonts.courgette().fontFamily,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(
                  left: screenWidth * 0.05, right: screenWidth * 0.05),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 35),
              width: double.maxFinite,
              height: screenHeight * 0.70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 223, 222, 220),
              ),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text('Welcome Back!',
                      style: TextStyle(
                        color: Color.fromARGB(198, 0, 0, 0),
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.courgette().fontFamily,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                      'Fill out the information below to access your account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15,
                        fontFamily: GoogleFonts.courgette().fontFamily,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                          color: Colors.grey[700], fontWeight: FontWeight.w500),
                      hintText: 'Enter your username',
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 255, 156, 7)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: _usernameController,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: Colors.grey[700], fontWeight: FontWeight.w500),
                      hintText: 'Enter your password',
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 255, 156, 7)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    obscureText: true,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 156, 7),
                      fixedSize:
                          Size(screenWidth * 0.85 - 100, screenHeight * 0.05),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    String username = _usernameController.text;
                    String password = _passwordController.text;
                    Navigator.popAndPushNamed(context, "Listings");

                    // Perform login logic with the username and password values here
                  },
                  child: Text(
                    'login',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: GoogleFonts.courgette().fontFamily,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  height: 30,
                  width: double.maxFinite,
                  child: TextButton(
                      onPressed: () {},
                      child: Text('forgot password?',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 12,
                            fontFamily: GoogleFonts.courgette().fontFamily,
                          ))),
                ),
                Text(
                  'or sign in with',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                    fontSize: 14.5,
                    fontFamily: GoogleFonts.courgette().fontFamily,
                  ),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 223, 222, 220),
                    side: BorderSide(
                        color: Color.fromARGB(111, 255, 255, 255), width: 2),
                  ),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, 'Listings');
                  },
                  icon: Icon(Ionicons.logo_google,
                      color: Color.fromARGB(255, 94, 94, 94)),
                  label: Text(
                    'Continue with Google',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: GoogleFonts.courgette().fontFamily,
                      color: Color.fromARGB(255, 94, 94, 94),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: GoogleFonts.courgette().fontFamily,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, 'Create account');
                        },
                        child: Text(
                          'Sign up here',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 156, 7),
                            fontSize: 15,
                            fontFamily: GoogleFonts.courgette().fontFamily,
                          ),
                        )),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ]),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FarmerPage();
                }));
              },
              child: Text(
                'jefjefjefjefjefjefjef',
                style: TextStyle(fontSize: 1, color: Colors.transparent),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                fixedSize: Size(100, 2),
                elevation: 0,
              ),
            )
          ],
        ),
      ]),
    );
  }
}
