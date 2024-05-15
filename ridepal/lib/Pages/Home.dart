import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ridepal/Components/Gtext.dart';
import 'package:ridepal/vehicle/Threewheel.dart';
import 'package:ridepal/vehicle/car.dart';
import 'package:ridepal/vehicle/van.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
        padding: const EdgeInsets.only(top: 25, right: 15, left: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gtext(
                  text: 'Need a vehicle for your next trip?',
                  tsize: 20,
                  tcolor: Colors.black,
                  fweight: FontWeight.w600),
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CarPage()));
                      },
                      child: Container(
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.car,
                              size: 90,
                              color: Colors.purple.shade400,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => VanPage()));
                      },
                      child: Container(
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.amber.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.vanShuttle,
                              size: 90,
                              color: Colors.amber.shade400,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CarPage()));
                      },
                      child: Container(
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.motorcycle,
                              size: 90,
                              color: Colors.green.shade400,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => tuktuk()));
                      },
                      child: Container(
                          width: 150,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/tuktuk.png'),
                                fit: BoxFit
                                    .contain, // Adjust the image fit as needed
                              ),
                              borderRadius: BorderRadius.circular(
                                  12), // Apply border radius
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Gtext(
                  text: 'You are at',
                  tsize: 20,
                  tcolor: Colors.black,
                  fweight: FontWeight.w600),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 600,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/map1.jpeg'),
                    fit: BoxFit.cover, // Adjust the image fit as needed
                  ),
                  borderRadius:
                      BorderRadius.circular(12), // Apply border radius
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
