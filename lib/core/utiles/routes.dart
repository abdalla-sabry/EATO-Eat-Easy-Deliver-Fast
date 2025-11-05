import 'package:flutter/cupertino.dart';

import '../../Feature/home/presention/view/HomeView.dart';
import '../../Feature/home/presention/view/ItemProductPage/ItemProductView.dart';


Map<String, Widget Function(BuildContext)> routeMap = {
  Homeview.routeName: (context) => Homeview(),
  // Singinveiwblocprovider.routeName: (context) => Singinveiwblocprovider(),
  // SignupVeiwBlocProvider.routeName: (context) => SignupVeiwBlocProvider(),
  // Homebody.routeName: (context) => Homebody(),
  // Homeveiwblocprovider.routeName: (context) => Homeveiwblocprovider(),
};
