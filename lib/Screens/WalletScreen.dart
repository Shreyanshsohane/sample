import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sample/Screens/OrderScreen.dart';
import 'package:sample/Screens/SuccessScreen.dart';
import 'package:sample/Widgets/BottomNavigation.dart';
import 'package:sample/routes/routesName.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    double width = MediaQuery.of(context).size.width;
    print('Build');
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 70,
        // // titleSpacing: 0,
        // leading: Text('Wallet'),
        title: const Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Wallet',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Text(
              'Total Points',
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(108, 108, 108, 1)),
            ),
            SizedBox(width: 5),
            Text(
              '2000',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => OrderStatus())));
              },
              child: Container(
                width: double.infinity,
                height: 140,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 1,
                      // offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BALANCE',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        Text(
                          '₹845.75',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 25),
                        ),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 34,
                      backgroundColor: Color.fromRGBO(199, 66, 37, 1),
                      child: Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 34,
                      backgroundColor: Color.fromARGB(255, 246, 194, 181),
                      child: Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // color: Colors.limeAccent,
              width: double.infinity,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Color.fromRGBO(199, 66, 37, 1),
                controller: tabController,
                labelColor: Color.fromRGBO(199, 66, 37, 1),
                unselectedLabelColor: Color.fromRGBO(108, 112, 114, 1),
                // dividerColor: Color.fromRGBO(199, 66, 37, 1),
                labelStyle: TextStyle(fontSize: 20),

                tabs: [
                  Tab(text: 'Books'),
                  Tab(text: 'All Orders'),
                  Tab(text: 'Out of Box'),
                  Tab(text: 'Transactions'),
                ],
              ),
            ),
            Expanded(
              child: Container(
                // height: 200,
                padding: EdgeInsets.only(left: 1, right: 0),
                // width: width,
                // color: Colors.green,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    WalletStack(),
                    Text('YO'),
                    Text('hello'),
                    Text('Nu'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WalletStack extends StatefulWidget {
  const WalletStack({super.key});

  @override
  State<WalletStack> createState() => _WalletStackState();
}

class _WalletStackState extends State<WalletStack> {
  int c = 10;
  @override
  Widget build(BuildContext context) {
    double height = double.maxFinite;
    double width = MediaQuery.of(context).size.width;
    print(c);
    return SingleChildScrollView(
      child: Container(
        height: 600,
        // color: Colors.amber,
        // padding: EdgeInsets.only(right: 1),
        child: Stack(
          // alignment: Alignment.topCenter,
          children: [
            for (int i = 0; i < 5; i++) ...[
              Positioned(
                top: i >= c ? (i * 70 + 140) : i * 70 + 30,
                child: GestureDetector(
                  onTap: () {
                    print(i.toString() + ' kkkkkkkkk');
                    setState(() {
                      c = i + 1;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 2, right: 1220),
                    padding: EdgeInsets.only(left: 20, right: 20, top: 12),
                    height: 150,
                    width: width - 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 2,
                          blurRadius: 1,
                          // offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Relaxing sound 2',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Expires on sep 20',
                                    style: TextStyle(
                                        color: Color.fromRGBO(199, 66, 37, 1)),
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image(
                                    image: AssetImage(
                                        'assets/CircularBookButton.png')),
                              )
                            ],
                          ),
                        ),
                        // Spacer(),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Color.fromRGBO(199, 66, 37, 1),
                                    )),
                                child: Center(
                                  child: Text(
                                    'Return',
                                    style: TextStyle(
                                      color: Color.fromRGBO(199, 66, 37, 1),
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                size: 34,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Container(
              //   height: 40,
              //   color: Colors.orange,
              // )
            ]
          ],
        ),
      ),
    );
  }
}
