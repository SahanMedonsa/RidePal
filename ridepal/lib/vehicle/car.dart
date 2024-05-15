import 'package:flutter/material.dart';
import 'package:ridepal/Components/Gtext.dart';
import 'package:ridepal/Components/expandedtile.dart';

class CarPage extends StatefulWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Car',
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
                    imagepath: 'assets/p1.jpeg',
                    vehicletype: 'Suzuki Alto',
                    perdayprice: '40',
                    capacity: '4',
                  ),
                  vehiclerent(
                      username: 'Medonsa_00',
                      imagepath: 'assets/p3.jpeg',
                      vehicletype: 'Toyota Vitz ',
                      perdayprice: '25',
                      capacity: '4'),
                  vehiclerent(
                      username: 'Poorna_01',
                      imagepath: 'assets/p1.jpeg',
                      vehicletype: 'Waggon R ',
                      perdayprice: '70',
                      capacity: '6'),
                  vehiclerent(
                      username: 'Sahan_33',
                      imagepath: 'assets/p3.jpeg',
                      vehicletype: 'Toyota Grace',
                      perdayprice: '30',
                      capacity: '4'),
                  vehiclerent(
                      username: 'Charindu_01',
                      imagepath: 'assets/p2.jpeg',
                      vehicletype: 'Toyota Prius',
                      perdayprice: '40',
                      capacity: '4\5'),
                  vehiclerent(
                      username: 'Janidu_01',
                      imagepath: 'assets/p1.jpeg',
                      vehicletype: 'Toyota Corrolla',
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
