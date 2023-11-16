// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freshly/test_data/ai_data.dart';

class AiScreen extends StatelessWidget {
  const AiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          width: double.maxFinite,
          child: Text(
            'AI Recommendation',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color(0xFF101213),
              fontSize: 25,
              fontWeight: FontWeight.w600,
              fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.9,
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.35,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Color(0xFFFE9B00),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.agriculture_outlined,
                              color: Colors.white,
                              size: 42,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                              child: Text(
                                'Apples',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Recommended Crop',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.35,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Color(0xFFFE9B00),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.agriculture_outlined,
                              color: Colors.white,
                              size: 42,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                              child: Text(
                                'Tomatos',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Recommended Crop',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F4F8),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.pie_chart_rounded,
                              color: Color(0xFF101213),
                              size: 32,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                              child: Text(
                                '\$5.6K',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF101213),
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Estimated Revenue',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF57636C),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F4F8),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.supervisor_account_rounded,
                              color: Color(0xFF101213),
                              size: 32,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                              child: Text(
                                '10.4k',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF101213),
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'EstimatedCustomers',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF57636C),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.05,
                    7,
                    MediaQuery.of(context).size.width * 0.05,
                    0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recommended Harvest Time',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color(0xFF57636C),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                alignment: Alignment.centerLeft,
                child: Text(
                  'And Estimated Revenue',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color(0xFF57636C),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                height: (MediaQuery.of(context).size.height) -
                    (MediaQuery.of(context).size.width * 1.2),
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: crops.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                      child: Container(
                        width: double.infinity,
                        constraints: BoxConstraints(
                          maxWidth: 570,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFFF1F4F8),
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      crops[index].cropName,
                                      style: TextStyle(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF101213),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        'Recomended Time ${crops[index].estimatedHarvestTime}',
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF57636C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '\$${crops[index].estimatedSellingPrice}',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF101213),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
