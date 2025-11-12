import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import 'Feature/home/presention/view/HomeScrean.dart';
import 'Feature/home/presention/view/deliveryView/DeliveyBetwentwoPoint.dart';
import 'core/utiles/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 👈 must be first

  // Hide status bar and navigation bar
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  HomeScrean(),
          routes: routeMap,
        );
      },
    );
  }
}
