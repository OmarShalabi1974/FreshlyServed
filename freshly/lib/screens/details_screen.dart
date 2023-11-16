// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:freshly/test_data/fruits_data.dart';
import 'package:freshly/test_data/locatins_and_price.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freshly/screens/import.dart';

class CropScreen extends StatelessWidget {
  const CropScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F4F8),
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 170,
                  height: 170,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x34090F13),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: ClipRRect(
                    child: Image.network(
                      fruitList[0].imageSource,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Available Crops ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                      color: Colors.grey[600],
                    ),
                  )),
              Container(
                height: 310,
                padding: EdgeInsets.all(9),
                child: ListView.builder(
                    itemCount: fruitList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x411D2429),
                              offset: Offset(0, 1),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[100],
                        ),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.all(8),
                        child: Row(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(itemList[index].location,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.grey[800],
                                      fontFamily: GoogleFonts.plusJakartaSans()
                                          .fontFamily,
                                    )),
                              ),
                              Container(
                                  // alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(itemList[index].price.toString(),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[800],
                                        fontFamily:
                                            GoogleFonts.plusJakartaSans()
                                                .fontFamily,
                                      ))),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'Details');
                                  },
                                  child: Text('Details',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily:
                                              GoogleFonts.plusJakartaSans()
                                                  .fontFamily,
                                          color: Colors.white)),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFFE9B00),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      );
                    }),
              ),
              Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'Map');
                    },
                    child: Text('View map',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily:
                                GoogleFonts.plusJakartaSans().fontFamily,
                            color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFE9B00),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
