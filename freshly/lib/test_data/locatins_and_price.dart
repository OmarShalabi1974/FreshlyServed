// ignore_for_file: prefer_const_constructors

import 'package:latlong2/latlong.dart';

class Item {
  double price;
  String location;
  LatLng latLng;

  Item({required this.price, required this.location, required this.latLng});
}

List<Item> itemList = [
  Item(price: 10.99, location: 'Irbid', latLng: LatLng(32.436665, 35.790271)),
  Item(price: 15.49, location: 'Mafraq', latLng: LatLng(32.391570, 36.259128)),
  Item(price: 7.99, location: 'Ajloun', latLng: LatLng(32.370046, 35.816034)),
  Item(price: 12.99, location: 'Irbid', latLng: LatLng(32.569743, 35.750429)),
  Item(price: 9.99, location: 'Mafraq', latLng: LatLng(32.253373, 36.275738)),
  Item(price: 14.99, location: 'Ajloun', latLng: LatLng(32.405200, 35.802454)),
  Item(price: 8.99, location: 'Irbid', latLng: LatLng(32.627915, 35.904295)),
  Item(price: 11.99, location: 'Mafraq', latLng: LatLng(32.404046, 36.122258)),
  Item(price: 6.99, location: 'Ajloun', latLng: LatLng(32.315584, 35.780498)),
  Item(price: 13.99, location: 'Irbid', latLng: LatLng(32.472246, 35.754819)),
];
