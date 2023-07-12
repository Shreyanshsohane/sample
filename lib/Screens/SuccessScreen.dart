import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  SuccessScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    right: 0,
                    // top: height * .1,
                    child: Container(
                      width: 220,
                      // color: Colors.amber,
                      child: Image(
                        image: AssetImage(
                          'assets/successScreenBackground.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: height,
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 90,
                          margin: EdgeInsets.only(
                              top: height * .16, bottom: height * .02),
                          child: const Image(
                            image: AssetImage(
                              'assets/TransactionSuccess.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Transaction Success !',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              letterSpacing: .5),
                        ),
                        Container(
                          // height: height * .52,
                          height: 420,
                          width: width * .85,
                          margin: EdgeInsets.only(top: height * .03),
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                                begin: Alignment(1, 0),
                                end: Alignment(1, 1),
                                colors: [
                                  Color.fromRGBO(255, 227, 220, 1),
                                  Color.fromARGB(255, 249, 251, 252)
                                ]),
                            border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 246, 194, 181),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: height * .06),
                              const Text(
                                '₹1,200.00',
                                style: TextStyle(
                                  color: Color.fromRGBO(199, 66, 37, 1),
                                  fontSize: 28,
                                ),
                              ),
                              const Text(
                                'Success sent to Ibu Rete ',
                                style: TextStyle(
                                  color: Color.fromRGBO(87, 87, 87, 1),
                                  fontSize: 21,
                                ),
                              ),
                              SizedBox(height: height * .03),
                              const Divider(
                                color: Color.fromRGBO(199, 66, 37, 1),
                                endIndent: 40,
                                indent: 40,
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              ContainerRow(
                                  first: 'Code', second: 'NVX1256SJKL0'),
                              ContainerRow(
                                  first: 'Reference Code', second: '----'),
                              ContainerRow(first: 'Date', second: '1 fab 2022'),
                              ContainerRow(first: 'Time', second: '9.13 PM'),
                              const SizedBox(height: 15),
                              const Divider(
                                color: Color.fromRGBO(199, 66, 37, 1),
                                endIndent: 40,
                                indent: 40,
                              ),
                              Container(
                                // color: Colors.amber,
                                margin: EdgeInsets.only(left: 60, right: 60),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                        image: AssetImage('assets/Print.png')),
                                    Image(
                                        image: AssetImage('assets/Share.png')),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerRow extends StatelessWidget {
  String first;
  String second;
  ContainerRow({super.key, required this.first, required this.second});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      margin: const EdgeInsets.only(left: 22, right: 22, top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            first,
            style: const TextStyle(
              color: Color.fromRGBO(87, 87, 87, 1),
              fontSize: 15,
            ),
          ),
          Text(
            second,
            style: const TextStyle(color: Colors.black, fontSize: 15),
          )
        ],
      ),
    );
  }
}
