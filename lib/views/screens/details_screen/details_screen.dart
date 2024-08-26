
import 'package:assignment_task/views/screens/details_screen/details_screen_widget.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/img.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          const DetailsScreenWidget(),
        ],
      ),
    );
  }

  // Widget _buildAmenityItem(IconData icon, String text) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 4.0),
  //     child: Row(
  //       children: [
  //         Icon(icon, size: 16, color: Colors.green),
  //         SizedBox(width: 8),
  //         Text(text, style: TextStyle(fontSize: 14)),
  //       ],
  //     ),
  //   );
  // }
  //
  // Widget _buildSafetyItem(String text) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 4.0),
  //     child: Row(
  //       children: [
  //         Icon(Icons.check_circle, size: 16, color: Colors.blue),
  //         SizedBox(width: 8),
  //         Expanded(child: Text(text, style: TextStyle(fontSize: 14))),
  //       ],
  //     ),
  //   );
  // }
  //
  // Widget _buildSpecialNote(String text) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 4.0),
  //     child: Row(
  //       children: [
  //         Icon(Icons.info, size: 16, color: Colors.orange),
  //         SizedBox(width: 8),
  //         Expanded(child: Text(text, style: TextStyle(fontSize: 14))),
  //       ],
  //     ),
  //   );
  // }
}