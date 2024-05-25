import 'package:flutter/material.dart';
import 'package:ridepal/Components/expandedtile.dart';

class VanPage extends StatefulWidget {
  const VanPage({Key? key}) : super(key: key);

  @override
  State<VanPage> createState() => _CarPageState();
}

class _CarPageState extends State<VanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Van',
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
                    imagepath: 'assets/v1.jpeg',
                    vehicletype: 'Toyota',
                    perdayprice: '40',
                    capacity: '4',
                  ),
                  vehiclerent(
                      username: 'Medonsa_00',
                      imagepath: 'assets/v3.jpeg',
                      vehicletype: 'Nisaan',
                      perdayprice: '25',
                      capacity: '4'),
                  vehiclerent(
                      username: 'Poorna_01',
                      imagepath: 'assets/v1.jpeg',
                      vehicletype: 'Mazda',
                      perdayprice: '70',
                      capacity: '6'),
                  vehiclerent(
                      username: 'Sahan_33',
                      imagepath: 'assets/v3.jpeg',
                      vehicletype: 'Toyota',
                      perdayprice: '30',
                      capacity: '4'),
                  vehiclerent(
                      username: 'Charindu_01',
                      imagepath: 'assets/v2.jpeg',
                      vehicletype: 'Nissan',
                      perdayprice: '40',
                      capacity: '4\5'),
                  vehiclerent(
                      username: 'Janidu_01',
                      imagepath: 'assets/v1.jpeg',
                      vehicletype: 'Toyota',
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
