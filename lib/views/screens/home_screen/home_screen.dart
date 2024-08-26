import 'package:assignment_task/views/screens/details_screen/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white,size: 20,),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Boarding point', style: TextStyle(color: Colors.white,fontSize: 19,)),
          Text('Wed, Jun 20 - 2 passengers', style: TextStyle(color: Colors.white,fontSize: 13))
        ],),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(19 ),
                border: Border.all(color: Colors.white.withOpacity(0.9)),
            ),
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: TextButton(
                  child: const Text('Modify', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Get.to(const DetailsScreen());
                  },
                )
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Showing available boats',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 40, // Number of boat listings
              itemBuilder: (context, index) {
                return BoatListingCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}

