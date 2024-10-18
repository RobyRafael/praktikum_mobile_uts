import 'package:flutter/material.dart';
import 'screens/city_list_page.dart';
import 'screens/hotel_list_page.dart';
import 'screens/hotel_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Navigator',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CityListPage(),          // This is the landing page showing list of cities
        '/hotel_list_page': (context) => HotelListPage(), // Route for listing hotels in a selected city
        '/hotel_detail_page': (context) => HotelDetailPage(), // Route for showing detailed hotel information
      },
    );
  }
}
