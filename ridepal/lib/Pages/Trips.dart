import 'package:flutter/material.dart';

class Trips extends StatefulWidget {
  const Trips({super.key});

  @override
  State<Trips> createState() => _TripsState();
}

class _TripsState extends State<Trips> {
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
        padding: const EdgeInsets.all(10),
        child: Expanded(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 420,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/map3.png',
                    fit: BoxFit
                        .fill, // Use BoxFit to control the image's fit within the container
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: [
                    ExpansionTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(
                              40), // Use half of width/height for circle
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              40), // Use half of width/height for circle
                          child: Image.asset(
                            "assets/bodiya.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text('Kalutara Bodhiya'),
                      subtitle: Text('20km'),
                      children: [
                        Text(
                            "The Kalutara Chaitya is a Stupa located immediately south of the Kalutara Bridge in the Kalutara District of Sri Lanka. It is one of only a few hollow Buddhist stupas in the world and its interior contains 74 murals, each depicting a different aspect of the Buddha's life.")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ExpansionTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(
                              40), // Use half of width/height for circle
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              40), // Use half of width/height for circle
                          child: Image.asset(
                            "assets/casel.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text('Richedman Casel'),
                      subtitle: Text('32km'),
                      children: [
                        Text(
                            "Richmond Castle is an Edwardian mansion, located near Kalutara. Built between 1900 and 1910, it was formally the country seat of Mudaliyar Don Arthur de Silva Wijesinghe Siriwardena. The building is currently owned by the Public Trustee and open to the public.")
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
