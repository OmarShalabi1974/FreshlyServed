// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freshly/test_data/fruits_data.dart';

class AddCrop extends StatelessWidget {
  const AddCrop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('Add Your Harvest',
                style: TextStyle(
                  color: Color.fromARGB(198, 0, 0, 0),
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                )),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: TextField(
                cursorColor: Color(0xFFFE9B00),
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFFE9B00),
                    )),
                    labelText: 'Crop Name...',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(118, 0, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                    ))),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: TextField(
                cursorColor: Color(0xFFFE9B00),
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFFE9B00),
                    )),
                    labelText: 'Crop Price...',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(118, 0, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                    ))),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: TextField(
                cursorColor: Color(0xFFFE9B00),
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFFE9B00),
                    )),
                    labelText: 'Crop Quantity...',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(118, 0, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                    ))),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: TextField(
                cursorColor: Color(0xFFFE9B00),
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xFFFE9B00),
                    )),
                    labelText: 'Harvest Time...',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(118, 0, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                    ))),
          ),
          Container(
            width: double.infinity,
            height: 150,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Image.asset(
              fruitList[0].imageSource,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50),
                    side: BorderSide(
                      color: Color.fromARGB(255, 238, 238, 238),
                      width: 2.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_rounded,
                  color: Color(0xFFFE9B00),
                  size: 40,
                ),
                label: Text(
                  'Upload Image',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFE9B00),
                    minimumSize: Size(double.infinity, 50),
                    side: BorderSide(
                      color: Color(0xFFFE9B00),
                      width: 2.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                onPressed: () {},
                icon: Icon(
                  Icons.receipt_long,
                  color: Colors.white,
                  size: 30,
                ),
                label: Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
          ),
        ]),
      ),
    );
  }
}
