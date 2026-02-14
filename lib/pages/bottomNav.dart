import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'home.dart';
import 'chat.dart';
import 'profile.dart';
import 'order.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomNavState();
}

class _BottomNavState extends State<Bottomnav> {
  late List<Widget> pages;
  late Home home;
  late ChatPage chat;
  late ProfilePage profile;
  late Order order;
  int currentTabIndex = 0;

  @override
  void initState() {
    home = Home();
    chat = ChatPage();
    profile = ProfilePage();
    order = Order();
    pages = [home, chat, profile, order];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentTabIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.grey[900]!,
        buttonBackgroundColor: Colors.blueAccent,
        height: 60,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        index: currentTabIndex,
        onTap: (index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
          Icon(Icons.home_outlined, size: 30, color: Colors.white),
          Icon(Icons.chat_outlined, size: 30, color: Colors.white),
          Icon(Icons.person_outline, size: 30, color: Colors.white),
          Icon(Icons.shopping_bag_outlined, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}
