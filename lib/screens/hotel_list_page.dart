import 'package:flutter/material.dart';
import '../models/hotel.dart';
import '../models/city.dart';
import '../data/dummy_data.dart';  // Ensure this includes your city and hotel data

class HotelListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final city = ModalRoute.of(context)!.settings.arguments as City;
    final hotels = cityHotels[city.id] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(city.name + ' Hotels'),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Theme.of(context).primaryColor, Colors.white],
          ),
        ),
        child: ListView.builder(
          itemCount: hotels.length,
          itemBuilder: (context, index) {
            return HotelCard(hotel: hotels[index]);
          },
        ),
      ),
    );
  }
}

class HotelCard extends StatelessWidget {
  final Hotel hotel;

  HotelCard({required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {
          // Assuming navigation to a 'hotel_detail_page' which would show more details about the hotel
          Navigator.pushNamed(
            context,
            '/hotel_detail_page',
            arguments: hotel,
          );
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
              child: Image.network(
                hotel.imageUrl,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotel.name,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Rp${hotel.price.toStringAsFixed(0)}',
                      style: TextStyle(fontSize: 16, color: Colors.green[700], fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      hotel.description,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
