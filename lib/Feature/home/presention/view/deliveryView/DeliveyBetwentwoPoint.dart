import 'dart:async';

import 'package:eato/Feature/home/presention/view/deliveryView/ContainerForPresons.dart';
import 'package:eato/core/utiles/constant/imagesConstante.dart';
import 'package:eato/core/utiles/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart' show rootBundle;

class DeliveyBetwenTwopoint extends StatefulWidget {
  const DeliveyBetwenTwopoint({super.key});
static const String routeName='DeliveyBetwentwePoint';
  @override
  State<DeliveyBetwenTwopoint> createState() => _DeliveyBetwenTwopointState();
}

class _DeliveyBetwenTwopointState extends State<DeliveyBetwenTwopoint> {
  final Completer<GoogleMapController> _controller = Completer();
  CameraPosition? cameraPosition;
  Location? _location;
  LocationData? _currentLocation;
  Set<Polyline> polylines = {};

  BitmapDescriptor avater1Marker = BitmapDescriptor.defaultMarker;
  BitmapDescriptor avater2Marker = BitmapDescriptor.defaultMarker;

  LatLng sourceLoctation = LatLng(21.600923, 39.180062);
  LatLng destintionLoctation = LatLng(21.535470, 39.182817);


  Future<void> getPolyRoute() async {
    try {
      PolylinePoints polylinePoints = PolylinePoints(apiKey: kKeymap);

      PolylineResult polylineResult = await polylinePoints.getRouteBetweenCoordinates(
        request: PolylineRequest(
          origin: PointLatLng(sourceLoctation.latitude,sourceLoctation.longitude),
          destination: PointLatLng(destintionLoctation.latitude,destintionLoctation.longitude),
          mode: TravelMode.driving, // can be walking, bicycling, transit
        ),
      );

      // Check if result is successful
      if (polylineResult.points.isNotEmpty) {
        List<LatLng> polylineCoordinates = [];

        // Convert all points to LatLng for GoogleMap widget
        for (var point in polylineResult.points) {
          polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        }

        // Add route polyline to your state
        setState(() {
          polylines.add(
            Polyline(
              polylineId: const PolylineId('route'),
              color: Colors.white,
              width: 6,
              points: polylineCoordinates,
            ),
          );
        });
      } else {
        debugPrint("Error: No route found");
      }
    } catch (e) {
      debugPrint("getPolyRoute error: $e");
    }
  }

  void _onMapCreated(GoogleMapController controller) async {
    _controller.complete(controller);

    final String style =
        await rootBundle.loadString('assets/map_style/bp_event_map_1.json');
    controller.setMapStyle(style);
    getPolyRoute();

  }
  Future<void> setMarkerIcon() async {
    try {
      final iconResults = await Future.wait([
        BitmapDescriptor.asset(
          ImageConfiguration(
            size: Size(1.5 * 60 / 414 * 100.w, 1.5 * 65 / 896 * 100.h),
          ),
          'assets/images/marker1.png',
        ),
        BitmapDescriptor.asset(
          ImageConfiguration(
            size: Size(1.15 * 60 / 414 * 100.w, 1.5 * 65 / 896 * 100.h),
          ),
          'assets/images/marker5.png',
        ),
        BitmapDescriptor.asset(
          ImageConfiguration(
            size: Size(1.5 * 50.9 / 414 * 100.w, 1.68 * 59.1 / 896 * 100.h),
          ),
          'assets/images/marker3.png',
        ),
        BitmapDescriptor.asset(
          ImageConfiguration(
            size: Size(1.4 * 50.8 / 414 * 100.w, 1.6 * 60.7 / 896 * 100.h),
          ),
          'assets/images/marker4.png',
        ),
      ]);
      setState(() {
        // sourceIconMarker = iconResults[0];
        // destintionIconMarker = iconResults[1];
        avater1Marker = iconResults[0];
        avater2Marker = iconResults[1];

      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();

    setMarkerIcon();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GoogleMap(
        polylines: polylines,
          onMapCreated: _onMapCreated,
          initialCameraPosition:
              CameraPosition(target: sourceLoctation, zoom: 14),
          markers: {
            Marker(
                markerId: MarkerId('marrim'),
                position: sourceLoctation,
                infoWindow: InfoWindow(
                  title: 'marrim',
                  snippet: 'marrim',
                ),
                icon: avater1Marker),
            Marker(
                markerId: MarkerId('abdallah'),
                position: destintionLoctation,
                infoWindow: InfoWindow(
                  title: 'abdallah',
                  snippet: 'abdallah',
                ),
                icon: avater2Marker),

          }),
    ]);
  }
}
