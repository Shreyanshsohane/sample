import 'package:flutter/material.dart';
import 'package:sample/Screens/OrderScreen.dart';
import 'package:sample/Screens/SuccessScreen.dart';
import 'package:sample/Screens/WalletScreen.dart';
import 'package:sample/routes/routesName.dart';

class Routes {

  static Route<dynamic>  generateRoute(RouteSettings settings){

    switch(settings.name){
      case RoutesName.success:
        return MaterialPageRoute(builder: (BuildContext context) =>  SuccessScreen());
      case RoutesName.order:
        return MaterialPageRoute(builder: (BuildContext context) => const OrderStatus());
      case RoutesName.wallet:
        return MaterialPageRoute(builder: (BuildContext context) => const WalletScreen());
        default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });

    }
  }
}