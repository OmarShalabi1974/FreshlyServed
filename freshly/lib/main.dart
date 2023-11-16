// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:freshly/screens/import.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Login(),
      'Create account': (context) => CreateAccount(),
      'Listings': (context) => ListingsScreen(),
      'Crop listings': (context) => CropScreen(),
      'Add crop': (context) => AddCrop(),
      'QR code scanner': (context) => QRScanner(),
      'Details': (context) => ViewMore(),
      'Ai': (context) => AiScreen(),
      'Map': (context) => MapScreen(),
    },
  ));
}
