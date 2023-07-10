import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:order_tracker/order_tracker.dart';
import 'package:sample/SuccessScreen.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<TextDto> orderList = [
      TextDto("Your order has been placed", ""),
    ];

    List<TextDto> shippedList = [
      TextDto("Your order has been shipped", ""),
    ];

    List<TextDto> outOfDeliveryList = [
      TextDto("Your order is out for delivery", ""),
    ];

    List<TextDto> deliveredList = [
      TextDto("Your order has been delivered", ""),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Order Details',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Expanded(
            child: Container(
              margin:const EdgeInsets.only(left: 25, right: 25, top: 30),
              width: width,
              // height: 900,
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Order ID : SF8438535',
                    style: TextStyle(
                        color: Color.fromRGBO(108, 112, 114, 1), fontSize: 20),
                  ),
                 const SizedBox(height: 5),
                  const Divider(
                    color: Color.fromRGBO(167, 171, 173, 1),
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        width: 80,
                        child: const Image(image: AssetImage('assets/BookImage.png')),
                      ),
                     const SizedBox(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Relaxing sound 2',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 22),
                          ),
                          Text(
                            'Book',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color.fromRGBO(108, 112, 114, 1)),
                          ),
                        ],
                      )
                    ],
                  ),
                 const  Divider(
                    color: Color.fromRGBO(167, 171, 172, 1),
                    thickness: 1,
                  ),
                 const Row(
                    children: [
                      Text(
                        'Seller : ',
                        style: TextStyle(
                            color: Color.fromRGBO(108, 112, 114, 1),
                            fontSize: 20),
                      ),
                      Text(
                        'Keagan Auer',
                        style: TextStyle(
                            color: Color.fromRGBO(44, 45, 45, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Image(
                        image: AssetImage('assets/CallButtons.png'),
                        width: 40,
                      )
                    ],
                  ),
                 const Divider(
                    color: Color.fromRGBO(167, 171, 172, 1),
                    thickness: 1,
                  ),
                const  SizedBox(height: 20),
                const  Text(
                    'Order Status',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Color.fromRGBO(199, 66, 37, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 13),
                    child: OrderTracker(
                      status: Status.shipped,
                      activeColor: Color.fromRGBO(199, 66, 37, 1),
                      inActiveColor: Colors.grey[300],
                      orderTitleAndDateList: orderList,
                      shippedTitleAndDateList: shippedList,
                      outOfDeliveryTitleAndDateList: outOfDeliveryList,
                      deliveredTitleAndDateList: deliveredList,
                    ),
                  ),
                 const Text(
                    'Shipping Details',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Color.fromRGBO(199, 66, 37, 1),
                    ),
                  ),
                 const SizedBox(height: 8),
                 const Text(
                    'Name',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                 const SizedBox(height: 4),
                  Container(
                    width: 300,
                    // color: Colors.amber,
                    child: const Text(
                      'Address nulla lacus, egestas a aliquet sit amet, pretium at ipsum. \nMobile: 9876543211',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        height: 1.1,
                        color: Color.fromRGBO(108, 112, 114, 1),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => SuccessScreen())));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 40, bottom: 40),
                      height: 40,
                      width: width,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 198, 185),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child:  Text(
                          'Cancel Order',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Color.fromRGBO(199, 66, 37, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
