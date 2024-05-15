import 'package:flutter/material.dart';
import 'package:ridepal/Components/Gtext.dart';

class vehiclerent extends StatefulWidget {
  final String username;
  final String vehicletype;
  final String imagepath;
  final String perdayprice;
  final String capacity;
  const vehiclerent(
      {super.key,
      required this.username,
      required this.imagepath,
      required this.vehicletype,
      required this.perdayprice,
      required this.capacity});

  @override
  State<vehiclerent> createState() => _vehiclerentState();
}

class _vehiclerentState extends State<vehiclerent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ExpansionTile(
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
              widget
                  .imagepath, // Replace 'assets/p1.jpeg' with your image asset path
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Gtext(
            text: '@' + widget.username,
            tsize: 18,
            tcolor: Colors.black,
            fweight: FontWeight.w500),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Gtext(
                text: widget.vehicletype,
                tsize: 14,
                tcolor: Colors.black,
                fweight: FontWeight.w400),
            Gtext(
                text: widget.perdayprice + "\$/day",
                tsize: 14,
                tcolor: Colors.black,
                fweight: FontWeight.w400),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Gtext(
                        text: 'Vehicle Type :',
                        tsize: 18,
                        tcolor: Colors.black,
                        fweight: FontWeight.w500),
                    Gtext(
                        text: widget.vehicletype,
                        tsize: 18,
                        tcolor: Colors.black,
                        fweight: FontWeight.w500),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Gtext(
                        text: 'Per day price :',
                        tsize: 18,
                        tcolor: Colors.black,
                        fweight: FontWeight.w500),
                    Gtext(
                        text: widget.perdayprice + "\$",
                        tsize: 16,
                        tcolor: Colors.black,
                        fweight: FontWeight.w500),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Gtext(
                        text: 'Capacity :',
                        tsize: 18,
                        tcolor: Colors.black,
                        fweight: FontWeight.w500),
                    Gtext(
                        text: widget.capacity,
                        tsize: 16,
                        tcolor: Colors.black,
                        fweight: FontWeight.w500),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Book now')),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
