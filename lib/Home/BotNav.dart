
import 'package:cleaneo_driver_app/Home/Delivery/Delivery.dart';
import 'package:cleaneo_driver_app/Home/Home_/Home.dart';
import 'package:cleaneo_driver_app/Home/MyEarnings/MyEarnings.dart';
import 'package:cleaneo_driver_app/Home/Notifications/Notifications.dart';
import 'package:cleaneo_driver_app/Home/Pickup/Pickup.dart';
import 'package:flutter/material.dart';

class BotNav extends StatefulWidget {
  const BotNav({Key? key}) : super(key: key);

  @override
  State<BotNav> createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: const [
          HomePage(),
          PickUp(),
          Delivery(),
          MyEarnings(),
          Notifications(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fire_truck_rounded),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: ' ',
            ),
          ],
          backgroundColor: Colors.white,
          iconSize: 31,
          selectedItemColor: const Color(0xff29B2FE),
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
