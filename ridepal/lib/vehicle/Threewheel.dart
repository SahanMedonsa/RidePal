import 'package:flutter/material.dart';
import 'package:ridepal/Components/Gtext.dart';
import 'package:ridepal/Components/expandedtile.dart';

class tuktuk extends StatefulWidget {
  const tuktuk({Key? key}) : super(key: key);

  @override
  State<tuktuk> createState() => _CarPageState();
}

class _CarPageState extends State<tuktuk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tuk Tuk',
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
                    imagepath: 'assets/t1.jpeg',
                    vehicletype: 'Bajaj 4stock',
                    perdayprice: '40',
                    capacity: '4',
                  ),
                  vehiclerent(
                      username: 'Medonsa_00',
                      imagepath: 'assets/t3.jpeg',
                      vehicletype: 'TVS king',
                      perdayprice: '25',
                      capacity: '4'),
                  vehiclerent(
                      username: 'Poorna_01',
                      imagepath: 'assets/t2.jpeg',
                      vehicletype: 'TVS king',
                      perdayprice: '70',
                      capacity: '6'),
                  vehiclerent(
                      username: 'Sahan_33',
                      imagepath: 'assets/t3.jpeg',
                      vehicletype: 'Bajaj 4stock',
                      perdayprice: '30',
                      capacity: '4'),
                  vehiclerent(
                      username: 'Charindu_01',
                      imagepath: 'assets/t2.jpeg',
                      vehicletype: 'TVS king',
                      perdayprice: '40',
                      capacity: '4\5'),
                  vehiclerent(
                      username: 'Janidu_01',
                      imagepath: 'assets/t1.jpeg',
                      vehicletype: 'Bajaj 4stock',
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
