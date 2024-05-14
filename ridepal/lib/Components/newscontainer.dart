import 'package:flutter/material.dart';
import 'package:ridepal/Components/Gtext.dart';

class newscontainer extends StatelessWidget {
  final String username;
  final String location;
  final String content;
  final String imagepath;
  const newscontainer(
      {super.key,
      required this.username,
      required this.location,
      required this.content,
      required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        width: double.infinity,
        height: 120,
        // color: Colors.amber,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(
                    40), // Use half of width/height for circle
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    40), // Use half of width/height for circle
                child: Image.asset(
                  imagepath, // Replace 'assets/p1.jpeg' with your image asset path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //username
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 130,
                      child: Gtext(
                          text: '@' + username,
                          tsize: 15,
                          tcolor: Colors.black,
                          fweight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Gtext(
                            text: location,
                            tsize: 15,
                            tcolor: Colors.black,
                            fweight: FontWeight.w500),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  width: 270,
                  child: Text(
                    content,
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.visible,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
