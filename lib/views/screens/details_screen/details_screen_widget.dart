import 'package:assignment_task/views/screens/passenger_screen/passenger_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsScreenWidget extends StatelessWidget {
  const DetailsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset("assets/images/img.png",fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(Icons.share, color: Colors.black),
                      onPressed: () {/* Implement share functionality */},
                    ),
                  ),
                ],
              ),
            ),

            Spacer(),
            // Bottom card
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Assam Travel Service',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'This hotel features air-conditioned cabins, great seating, and onboard dining plus entertainment options.',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.event_seat, size: 16, color: Colors.grey),
                        SizedBox(width: 4),
                        Text('Wed, Jun 20 · 2 Passengers', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text('Amenities', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    _buildAmenityItem(Icons.wc, 'Clean Restrooms'),
                    _buildAmenityItem(Icons.chair, 'Comfortable Seating arrangements'),
                    _buildAmenityItem(Icons.restaurant, 'Onboard Dining'),
                    SizedBox(height: 16),
                    Text('Safety Features', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    _buildSafetyItem('Life jackets provided to all passengers'),
                    _buildSafetyItem('Emergency medical kit available'),
                    SizedBox(height: 16),
                    Text('Special notes', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    _buildSpecialNote('Please arrive 30 minutes before departure'),
                    _buildSpecialNote('Carry a valid ID for verification'),
                    SizedBox(height: 24),
                    ElevatedButton(
                      child: Text('Go to passenger details'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Get.to(PassengerDetailsScreen());
                        /* Navigate to passenger details */},
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
  Widget _buildAmenityItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.green),
          SizedBox(width: 8),
          Text(text, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  Widget _buildSafetyItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, size: 16, color: Colors.blue),
          SizedBox(width: 8),
          Expanded(child: Text(text, style: TextStyle(fontSize: 14))),
        ],
      ),
    );
  }

  Widget _buildSpecialNote(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.info, size: 16, color: Colors.orange),
          SizedBox(width: 8),
          Expanded(child: Text(text, style: TextStyle(fontSize: 14))),
        ],
      ),
    );
  }
}
