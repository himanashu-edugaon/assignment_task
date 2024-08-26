import 'package:assignment_task/views/screens/bill_screen/bill_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PassengerScreenWidget extends StatelessWidget {
  const PassengerScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTravelInfoCard(),
            SizedBox(height: 16),
            _buildTicketInfoCard(),
            SizedBox(height: 16),
            Text('Passenger Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            _buildPassengerForm('Passenger 1'),
            SizedBox(height: 16),
            _buildPassengerForm('Passenger 2'),
            SizedBox(height: 24),
            _buildContinueButton(),
          ],
        ),
      ),
    );
  }
  Widget _buildTravelInfoCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Assam Travel Service', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('7:00 AM', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('From', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Icon(Icons.directions_boat, color: Colors.blue),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('3:00 PM', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('To', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Icon(Icons.person, color: Colors.grey),
                SizedBox(width: 8),
                Text('2 Seats', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTicketInfoCard() {
    return Card(
      color: Colors.redAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your ticket information will be sent on this number',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.person, color: Colors.white),
                      SizedBox(width: 8),
                      Text('9191234589', style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
            TextButton(
              child: Text('Edit', style: TextStyle(color: Colors.white)),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPassengerForm(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your name',
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(height: 4),
        Text('Enter name as per Aadhar', style: TextStyle(color: Colors.grey, fontSize: 12)),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your age',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'Gender',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                items: ['Male', 'Female', 'Other']
                    .map((label) => DropdownMenuItem(
                  child: Text(label),
                  value: label,
                ))
                    .toList(),
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildContinueButton() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('Continue'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          Get.to(BillScreen());
        },
      ),
    );
  }
}
