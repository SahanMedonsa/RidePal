import 'package:flutter/material.dart';

import 'package:ridepal/Components/Gtext.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

String _selectedVehicleType = 'Car'; // Default vehicle type

Widget _buildTextField({
  required String labelText,
  bool? obscureText,
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

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        padding: EdgeInsets.only(top: 70, left: 15, right: 15),
        child: ListView(
          children: [
            const Gtext(
                text: 'Sign up',
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
              labelText: 'Email',
            ),
            SizedBox(height: 16.0),
            _buildTextField(labelText: 'Password', obscureText: true),
            SizedBox(height: 16.0),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                // Implement form submission
              },
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
