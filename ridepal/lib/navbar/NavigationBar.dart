import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:ridepal/Pages/Home.dart';
import 'package:ridepal/Pages/Trips.dart';
import 'package:ridepal/Pages/newsfeed.dart';
import 'package:ridepal/Pages/weather.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key, required this.navigationShell})
      : super(
          key: key,
        );

  final StatefulNavigationShell navigationShell;
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [Home(), Trips(), newsfeeds(), weather()];

  int selectedIndex = 0;

  void _goToBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: widget.navigationShell,
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.white,
        selectedIndex: selectedIndex,
        onButtonPressed: (int index) {
          setState(() {
            selectedIndex = index;
          });
          _goToBranch(selectedIndex);
        },
        inactiveColor: Colors.black,
        activeColor: Colors.black,
        iconSize: 30,
        barItems: [
          BarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          BarItem(
            icon: Icons.luggage,
            title: 'Trips',
          ),
          BarItem(
            icon: Icons.newspaper,
            title: 'News',
          ),
          BarItem(
            icon: Icons.cloud,
            title: 'Weather',
          ),
        ],
      ),
    );
  }
}
