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
      backgroundColor: Colors.white,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Gtext(
                      text: 'News in your area ',
                      tsize: 23,
                      tcolor: Colors.black,
                      fweight: FontWeight.w500),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add News'),
                      style: ButtonStyle(

                          // Customize button appearance
                          minimumSize: MaterialStateProperty.all(const Size(
                              100, 50)), // Set minimum size of the button
                          padding: MaterialStateProperty.all(EdgeInsets.all(
                              16)), // Set padding around the button text
                          backgroundColor: MaterialStateProperty.all(
                              Colors.amber), // Set button background color
                          foregroundColor: MaterialStateProperty.all(
                              Colors.black), // Set button text color
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Set border radius
                            ),
                          ))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              newscontainer(
                  username: 'Medonsa99',
                  location: 'Mirissa',
                  content:
                      'A new restaurant is opening today in Mirissa next to the Cargills food city',
                  imagepath: 'assets/p1.jpeg'),
              newscontainer(
                  username: 'Pathum00',
                  location: 'Unawatuna',
                  content:
                      'La foresta dj night is happening in surf deck misrissa from 7 pm onwards ',
                  imagepath: 'assets/p2.jpeg'),
              newscontainer(
                  username: 'Poorna01',
                  location: 'Hirikatiye ',
                  content: 'Surf season has began in hirikatiye. HURRY UP!!!',
                  imagepath: 'assets/p3.jpeg'),
              newscontainer(
                  username: 'Pathum00',
                  location: 'Ahangama',
                  content: 'Special offers are going on at “Petti Petti” ',
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
