import 'package:flutter/material.dart';

class AppBottomBar extends StatelessWidget {
  void Function(int)? onTap;

  AppBottomBar({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedFontSize: 20,
      unselectedItemColor: Colors.black,
      onTap: onTap,
      iconSize: 20,
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.forum,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'Chat',
                ),
              ),
            ],
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.forum,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'Chat',
                ),
              ),
            ],
          ),
          label: 'Chat',
        ),
        // BottomNavigationBarItem(
        //   icon: Column(
        //     children: [
        //       FaIcon(
        //         FontAwesomeIcons.gift,
        //         color: bottomNavigationController.currentIndex == 4 ? Get.theme.primaryColor : Colors.grey,
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.only(top: 5),
        //         child: CustomText(
        //           title: 'Rewards',
        //           style: Get.theme.textTheme.bodyText1,
        //         ),
        //       ),
        //     ],
        //   ),
        //   label: 'Rewards',
        // ),
      ],
    );
  }
}
