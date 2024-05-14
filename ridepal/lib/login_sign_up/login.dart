import 'package:flutter/material.dart';
import 'package:ridepal/Components/Gtext.dart';
import 'package:ridepal/login_sign_up/signup.dart';
import 'package:ridepal/navbar/app_navigation.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key, required navigationShell});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Ridepal',
              style: TextStyle(fontSize: 22),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text('List your own vehicle'),
                      style: ButtonStyle(

                          // Customize button appearance
                          minimumSize: MaterialStateProperty.all(const Size(
                              150, 50)), // Set minimum size of the button
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
              const SizedBox(
                height: 120,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    size: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12.0), // Adjust border radius as needed
                    ),
                    labelText: 'User name',

                    // You can customize other InputDecoration properties here
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12.0), // Adjust border radius as needed
                    ),
                    labelText: 'Password',

                    // You can customize other InputDecoration properties here
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Router.withConfig(
                                config: AppNavigation.router)));
                  },
                  child: Text('Login'),
                  style: ButtonStyle(
                      // Customize button appearance
                      minimumSize: MaterialStateProperty.all(
                          Size(150, 50)), // Set minimum size of the button
                      padding: MaterialStateProperty.all(EdgeInsets.all(
                          16)), // Set padding around the button text
                      backgroundColor: MaterialStateProperty.all(
                          Colors.blue), // Set button background color
                      foregroundColor: MaterialStateProperty.all(
                          Colors.white), // Set button text color
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8.0), // Set border radius
                        ),
                      ))),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Gtext(
                      text: "Don't have an account?",
                      tsize: 18,
                      tcolor: Colors.black,
                      fweight: FontWeight.w400),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: const Gtext(
                        text: "Sign Up",
                        tsize: 19,
                        tcolor: Colors.blue,
                        fweight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
