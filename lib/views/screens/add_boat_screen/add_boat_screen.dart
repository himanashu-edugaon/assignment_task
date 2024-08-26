import 'package:assignment_task/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){runApp(MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: AddBoatScreen(),
    );
  }
}


class AddBoatScreen extends StatefulWidget {
  @override
  _AddBoatScreenState createState() => _AddBoatScreenState();
}

class _AddBoatScreenState extends State<AddBoatScreen> {
  final _formKey = GlobalKey<FormState>();
  List<String> selectedAmenities = [];
  List<String> selectedSafetyFeatures = [];
  List<String> selectedMeals = [];

  Widget _buildCheckboxWithLabel(String label, List<String> selectedList) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Checkbox(
            value: selectedList.contains(label),
            onChanged: (bool? value) {
              setState(() {
                if (value!) {
                  selectedList.add(label);
                } else {
                  selectedList.remove(label);
                }
              });
            },
          ),
          Expanded(child: Text(label)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 200,
            color: Colors.white,
            child: ListView(

              children: [
                ListTile(title: Center(child: Text('Dashboard'))),
                const ListTile(title: Center(child: Text('    Manage Bookings'))),
                Container(
                  // color: Colors.blueAccent,
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blueAccent.withOpacity(0.6)),
                      ),
                  child: ListTile(

                    style: ListTileStyle.values.first,
                    title: Center(child: Text('Manage Boats',)),
                    tileColor: Colors.blue,
                    textColor: Colors.white,
                  ),
                ),
                ListTile(title: Center(child: Text('Manage meals'))),
                ListTile(title: Center(child: Text('Manage pricing'))),
              ],
            ),
          ),
          // Main content
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('GTM', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    Divider(),
                    SizedBox(height: 20),
                    Text('Add boat', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: 'Enter the name of the boat',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Capacity',
                        hintText: 'Enter number of seats on the boat',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 20),
                    Text('Photos', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Upload photos of your boat'),
                    SizedBox(height: 10),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.cloud_upload, size: 50, color: Colors.grey),
                            Text('Drag & drop files here, or click to select files'),
                            Text('Supports JPG, PNG, and GIF files up to 5MB', style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Amenities', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Select the amenities available on your boat to enhance passenger comfort and experience.'),
                    _buildCheckboxWithLabel('Clean Restrooms', selectedAmenities),
                    _buildCheckboxWithLabel('Comfortable Seating arrangements', selectedAmenities),
                    _buildCheckboxWithLabel('Onboard Dining', selectedAmenities),
                    _buildCheckboxWithLabel('Wi-Fi Access', selectedAmenities),
                    _buildCheckboxWithLabel('Entertainment System', selectedAmenities),
                    _buildCheckboxWithLabel('Air Conditioning/Climate Control', selectedAmenities),
                    SizedBox(height: 20),
                    Text('Safety Features', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Select the safety features available on your boat to enhance passenger safety.'),
                    _buildCheckboxWithLabel('Life vest provided to all passengers', selectedSafetyFeatures),
                    _buildCheckboxWithLabel('Emergency Kit onboard', selectedSafetyFeatures),
                    SizedBox(height: 20),
                    Text('Meals', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Select the available meals on your boat.'),
                    _buildCheckboxWithLabel('Veg/Non-veg', selectedMeals),
                    _buildCheckboxWithLabel('Pure Veg', selectedMeals),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          child: Text('Save',style: TextStyle(color: Colors.white),),
                          // style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Save logic here
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}