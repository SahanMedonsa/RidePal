import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Ridepal',
              style: TextStyle(fontSize: 22),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
