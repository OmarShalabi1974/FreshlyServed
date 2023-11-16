// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:freshly/test_data/fruits_data.dart';
import 'package:google_fonts/google_fonts.dart';

class ListingsScreen extends StatelessWidget {
  const ListingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    final appBarHeight = AppBar().preferredSize.height;
    final screenHeight = MediaQuery.of(context).size.height;
    final availableHeight = screenHeight - appBarHeight;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  border: InputBorder.none,
                ),
              ),
            )),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[100],
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.filter_alt,
                  color: Colors.grey[800],
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Our Available Crops below',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                    color: Colors.grey[600],
                  ),
                ),
              )
            ]),
            Container(
              padding: EdgeInsets.all(9),
              height: availableHeight,
              child: ListView.builder(
                  itemCount: fruitList.length,
                  itemBuilder: (context, index) {
                    return Container(
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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.network(
                            fruitList[index].imageSource,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(fruitList[index].fruitName,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.grey[800],
                                  )),
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(fruitList[index].priceRange,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey[800],
                                    ))),
                          ],
                        ),
                        Expanded(
                          child: IconButton(
                              alignment: Alignment.centerRight,
                              onPressed: () {
                                Navigator.pushNamed(context, 'Crop listings');
                              },
                              icon: Icon(Icons.arrow_forward_ios_rounded)),
                        )
                      ]),
                    );
                  }),
            ),
          ],
        )),
      ),
    );
  }
}
