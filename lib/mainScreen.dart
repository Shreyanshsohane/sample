import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/Provider/mainScreenProvider.dart';
import 'package:sample/Screens/AppScreen.dart';
import 'package:sample/Screens/HomeScreen.dart';
import 'package:sample/Screens/ProfileScreen.dart';
import 'package:sample/Screens/SuccessScreen.dart';
import 'package:sample/Screens/WalletScreen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List screens = [
      const HomeScreen(),
      HomeScreen(),
      WalletScreen(),
      ProfileScreen()
    ];

    final mainScreenProvider = Provider.of<MainScreenProvider>(context);
    return Scaffold(
      body: screens[mainScreenProvider.selectedIndex.index],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8.0),
        height: 75,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 244, 242, 242),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: GNav(
            // backgroundColor: Color.fromARGB(255, 231, 228, 228),
            gap: 8,
            iconSize: 28,
            activeColor: Color.fromRGBO(199, 66, 37, 1),
            duration: Duration(microseconds: 500000),
            tabBackgroundColor: Color.fromARGB(255, 246, 194, 181),
            padding: EdgeInsets.all(12),
            onTabChange: (value) {
              mainScreenProvider.changeSelectedIndex(value);
            },
            tabs: [
              GButton(icon: Icons.home, text: "Home"),
              GButton(icon: Icons.notifications, text: "Notification"),
              GButton(icon: Icons.wallet, text: 'Wallet'),
              GButton(icon: Icons.menu, text: "Menu")
            ]),
      ),
    );
  }
}
