import 'package:flutter/material.dart';
import 'package:ridepal/Components/Gtext.dart';

class listownvehi extends StatefulWidget {
  const listownvehi({super.key});

  @override
  State<listownvehi> createState() => _listownvehiState();
}

String _selectedVehicleType = 'Car';
Widget _buildTextField({
  required String labelText,
}) {
  return TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      labelText: labelText,
    ),
  );
}

class _listownvehiState extends State<listownvehi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ridepal',
              style: TextStyle(fontSize: 22),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.circle_sharp,
                  size: 16,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.circle_sharp,
                  size: 16,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.circle_sharp,
                  size: 16,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.circle_sharp,
                  size: 16,
                  color: Colors.purple,
                ),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 45, left: 15, right: 15),
        child: ListView(
          children: [
            const Gtext(
                text: 'Login For Vehicle Owner',
                tsize: 23,
                tcolor: Colors.black,
                fweight: FontWeight.w600),
            const SizedBox(height: 30.0),
            Row(
              children: [
                Expanded(
                  child: _buildTextField(
                    labelText: 'First Name',
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: _buildTextField(
                    labelText: 'Last Name',
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            _buildTextField(
              labelText: 'NIC Number',
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: DropdownButtonFormField<String>(
                    value: _selectedVehicleType,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedVehicleType = newValue!;
                      });
                    },
                    items: ['Car', 'Van', 'Tuktuk', 'Scooter']
                        .map<DropdownMenuItem<String>>(
                          (value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ),
                        )
                        .toList(),
                    decoration: InputDecoration(
                      labelText: 'Vehicle Type',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  flex: 2,
                  child: _buildTextField(
                    labelText: 'Price per Day',
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              height: 120,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey)),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_a_photo_rounded,
                      color: Colors.grey,
                    ),
                    const Gtext(
                        text: 'Add your vehicle photos',
                        tsize: 18,
                        tcolor: Colors.grey,
                        fweight: FontWeight.w400),
                  ],
                )),
              ),
            ),
            SizedBox(height: 16.0),
            _buildTextField(
              labelText: 'Description',
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implement upload document functionality
              },
              child: Text('Upload Vehicle Document'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implement form submission
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
