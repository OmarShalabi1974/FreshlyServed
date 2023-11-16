// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freshly/test_data/fruits_data.dart';

class ViewMore extends StatelessWidget {
  const ViewMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: Column(
                children: [
                  Container(
                    height: 175,
                    width: 175,
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color.fromARGB(67, 29, 36, 41),
                          offset: Offset(0, 1),
                        )
                      ],
                    ),
                    child: ClipRRect(
                      child: Image.network(
                        fruitList[0].imageSource,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(children: [
                      Text(
                        fruitList[0].fruitName,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500,
                          fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Expanded(
                        child: Text(
                          '0.99 JOD',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFFFE9B00),
                            fontWeight: FontWeight.w600,
                            fontFamily:
                                GoogleFonts.plusJakartaSans().fontFamily,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.people_outline_rounded,
                          size: 35,
                          color: Colors.grey[600],
                        ),
                        Text(
                          '[ Provider Username]',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500,
                            fontFamily:
                                GoogleFonts.plusJakartaSans().fontFamily,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 190, 59),
                          size: 30,
                        ),
                        Icon(Icons.star,
                            color: Color.fromARGB(255, 255, 190, 59)),
                        Icon(Icons.star,
                            color: const Color.fromARGB(255, 255, 190, 59),
                            size: 30),
                        Icon(Icons.star,
                            color: Color.fromARGB(255, 255, 190, 59), size: 30),
                        Icon(Icons.star_half,
                            color: Color.fromARGB(255, 255, 190, 59), size: 30),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            fontFamily:
                                GoogleFonts.plusJakartaSans().fontFamily,
                          ),
                        ),
                        Text(
                          'Harvest Date : [ Harvest Date]\nHarvest location : [ Harvest location]\n'
                          'Delight in the crisp sweetness of Irbid\'s apples, hand-picked from our fertile orchards, a taste of nature\'s bounty from the heart of Jordan.',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily:
                                GoogleFonts.plusJakartaSans().fontFamily,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.grey[300],
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.remove_circle,
                          color: Colors.grey[400],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '02',
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              fontFamily: GoogleFonts.courgette().fontFamily,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.add_circle_rounded,
                          color: Color(0xFFFE9B00),
                        ),
                        Expanded(
                            child: Text(
                                textAlign: TextAlign.end,
                                'Total: 1.98 JOD',
                                style: TextStyle(
                                  color: Colors.grey[900],
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  fontFamily:
                                      GoogleFonts.plusJakartaSans().fontFamily,
                                )))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 300,
                      child: TextButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xFFFE9B00),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Item Added'),
                                content: Text(
                                    'The item has been added to your cart.'),
                                actions: [
                                  TextButton(
                                    child: Text('Okay'),
                                    onPressed: () {
                                      Navigator.pop(
                                          context); // Close the dialog
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 35,
                        ),
                        label: Text(
                          'Add to Cart',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily:
                                  GoogleFonts.plusJakartaSans().fontFamily),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
