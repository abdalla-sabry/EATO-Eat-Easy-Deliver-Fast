import 'package:flutter/cupertino.dart';

import '../../Feature/home/presention/view/HomeView/HomeView.dart';
import '../../Feature/home/presention/view/deliveryView/DeliveyBetwentwoPoint.dart';
import '../../Feature/home/presention/view/deliveryView/DelivryPageWthOutDeliveyProcessing.dart';


Map<String, Widget Function(BuildContext)> routeMap = {
  Homeview.routeName: (context) => Homeview(),
  DelivryPageWthOutDeliveyProcessing.routeName: (context) => DelivryPageWthOutDeliveyProcessing(),
  DeliveyBetwenTwopoint.routeName: (context) => DeliveyBetwenTwopoint(),
  // Singinveiwblocprovider.routeName: (context) => Singinveiwblocprovider(),
  // SignupVeiwBlocProvider.routeName: (context) => SignupVeiwBlocProvider(),
  // Homebody.routeName: (context) => Homebody(),
  // Homeveiwblocprovider.routeName: (context) => Homeveiwblocprovider(),
};
