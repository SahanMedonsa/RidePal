import 'package:flutter/material.dart';

class weather extends StatelessWidget {
  const weather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.account_circle_rounded),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/Screenshot 2024-05-15 at 20.13.47.png',
                    fit: BoxFit
                        .fill, // Use BoxFit to control the image's fit within the container
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
