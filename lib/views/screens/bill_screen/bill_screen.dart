import 'package:flutter/material.dart';
import 'package:get/get.dart';



class BillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Add-Ons', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTravelInfoCard(),
              SizedBox(height: 10),
              Text('Additional services', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              _buildTransportationOptions(),
              SizedBox(height: 10),
              _buildMealSelection(),
              SizedBox(height: 10),
              _buildOtherRecommendations(),
              SizedBox(height: 10),
              _buildInsurance(),
              SizedBox(height: 10),
              _buildBillBreakdown(),
              SizedBox(height: 10),
              _buildContinueButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTravelInfoCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Assam Travel Service', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('7:00 AM', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('From', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Icon(Icons.directions_boat, color: Colors.blue),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('3:00 PM', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('To', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.person, color: Colors.grey),
                    SizedBox(width: 5),
                    Text('2 Seats'),
                  ],
                ),
                Text('₹ 2,500', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransportationOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Transportation Options', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('Cab service pickUp and dropOff at Station; driver details will be shared via WhatsApp.', style: TextStyle(color: Colors.grey)),
        SizedBox(height: 10),
        _buildAddOnItem('Private Car (4 Seater)', '₹ 500'),
        _buildAddOnItem('Private Car (7 Seater)', '₹ 500'),
        _buildAddOnItem('Shared rides', '₹ 500'),
      ],
    );
  }

  Widget _buildMealSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Meal Selection', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        _buildMealItem('Breakfast & Snacks', '₹ 500'),
        _buildMealItem('Pure Veg Lunch', '₹ 500'),
        _buildMealItem('Non Veg Lunch', '₹ 500'),
      ],
    );
  }

  Widget _buildOtherRecommendations() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Other Recommendations', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 9),
        _buildAddOnItem('Tour Guide', '₹ 1,500'),
      ],
    );
  }

  Widget _buildInsurance() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildAddOnItem('Insurance', ""),
        // SizedBox(height: -1),
        Text('At just ₹ 50 per passenger get:', style: TextStyle(color: Colors.grey)),
        Text('Insurance Coverage', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('Upto ₹ 70,000 on hospitalization &'),
        Text('Upto ₹ 5,00,000 in case of Death/PTD'),
        SizedBox(height: 10),
              ],
    );
  }

  Widget _buildBillBreakdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Bill Breakdown', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.person_outline, color: Colors.grey, size: 17),
            SizedBox(width: 5),
            Text('2 Passenger'),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Adult 1'),
                  Text('₹ 1,500'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Child 1 (age 3 - 10)'),
                  Text('₹ 1,000'),
                ],
              ),
            ],
          ),
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total (taxes included)', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('₹ 2,500', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }

  Widget _buildAddOnItem(String title, String price) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 0),
      title: Text(title),
      subtitle: Text(price),
      trailing: Container(
        margin: EdgeInsetsDirectional.all(09),
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: Icon(Icons.add, color: Colors.white),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _buildMealItem(String title, String price) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 4.0),
      title: Text(title),
      subtitle: Text(price),
      trailing: ElevatedButton(
        child: Text('Add',style: TextStyle(color: Colors.white),),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }

  Widget _buildContinueButton() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('Continue'),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
