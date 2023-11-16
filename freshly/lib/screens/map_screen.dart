// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
// ignore: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:freshly/test_data/locatins_and_price.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(
              30.827143, 36.665228), // Set the initial map center coordinates
          zoom: 7.0, // Set the initial zoom level
        ),
        children: [
          TileLayer(
            urlTemplate:
                'https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c', 'd'],
          ),
          MarkerLayer(
            markers: itemList
                .map(
                  (Item) => Marker(
                    point: Item.latLng,
                    builder: (ctx) => Icon(
                      Icons.location_pin,
                      color: Color(0xFFFE9B00),
                      size: 40,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
