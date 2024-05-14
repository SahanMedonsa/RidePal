import 'package:flutter/material.dart';
import 'package:ridepal/Components/Gtext.dart';
import 'package:ridepal/Components/newscontainer.dart';

class newsfeeds extends StatefulWidget {
  const newsfeeds({super.key});

  @override
  State<newsfeeds> createState() => _newsfeedsState();
}

class _newsfeedsState extends State<newsfeeds> {
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
        padding: const EdgeInsets.only(top: 25, left: 12, right: 12),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gtext(
                  text: 'News in your area ',
                  tsize: 23,
                  tcolor: Colors.black,
                  fweight: FontWeight.w500),
              SizedBox(
                height: 20,
              ),
              newscontainer(
                  username: 'Medonsa99',
                  location: 'Payagala',
                  content: 'This is a goog contenet for others and aslo me ',
                  imagepath: 'assets/p1.jpeg'),
              newscontainer(
                  username: 'Pathum00',
                  location: 'Kalutara',
                  content:
                      'This is a goog contenet for others and aslo me. You are the best for the night  ',
                  imagepath: 'assets/p2.jpeg'),
              newscontainer(
                  username: 'Poorna01',
                  location: 'Dodamgoda',
                  content: 'This is a goog contenet for others and aslo me ',
                  imagepath: 'assets/p3.jpeg'),
              newscontainer(
                  username: 'Pathum00',
                  location: 'Kalutara',
                  content:
                      'This is a goog contenet for others and aslo me. You are the best for the night  ',
                  imagepath: 'assets/p2.jpeg'),
              newscontainer(
                  username: 'Poorna01',
                  location: 'Dodamgoda',
                  content: 'This is a goog contenet for others and aslo me ',
                  imagepath: 'assets/p3.jpeg'),
            ],
          ),
        ),
      ),
    );
  }
}
