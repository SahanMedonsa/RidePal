import 'package:flutter/material.dart';
import 'package:ridepal/Components/Gtext.dart';
import 'package:ridepal/Components/expandedtile.dart';

class Scooter extends StatefulWidget {
  const Scooter({Key? key}) : super(key: key);

  @override
  State<Scooter> createState() => _CarPageState();
}

class _CarPageState extends State<Scooter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Scooter',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: [
                  vehiclerent(
                    username: 'Pathum_99',
                    imagepath: 'assets/s3.jpeg',
                    vehicletype: 'Honda',
                    perdayprice: '40',
                    capacity: '4',
                  ),
                  vehiclerent(
                      username: 'Medonsa_00',
                      imagepath: 'assets/s2.jpeg',
                      vehicletype: 'TVS',
                      perdayprice: '25',
                      capacity: '4'),
                  vehiclerent(
                      username: 'Poorna_01',
                      imagepath: 'assets/s1.jpeg',
                      vehicletype: 'Yamaha',
                      perdayprice: '70',
                      capacity: '6'),
                  vehiclerent(
                      username: 'Sahan_33',
                      imagepath: 'assets/s5.jpeg',
                      vehicletype: 'Honda',
                      perdayprice: '30',
                      capacity: '4'),
                  vehiclerent(
                      username: 'Charindu_01',
                      imagepath: 'assets/s4.jpeg',
                      vehicletype: 'Yamaha',
                      perdayprice: '40',
                      capacity: '4\5'),
                  vehiclerent(
                      username: 'Janidu_01',
                      imagepath: 'assets/s1.jpeg',
                      vehicletype: 'TVS',
                      perdayprice: '40',
                      capacity: '3'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
