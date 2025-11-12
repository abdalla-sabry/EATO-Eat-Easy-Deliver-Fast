import 'dart:async';

import 'package:eato/Feature/home/presention/view/deliveryView/ContainerForPresons.dart';
import 'package:eato/core/utiles/fontStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart' show rootBundle;

class DelivryPageWthOutDeliveyProcessing extends StatefulWidget {
  const DelivryPageWthOutDeliveyProcessing({super.key});
  static const String routeName='DelivryPageunSliveredSituationextends';

  @override
  State<DelivryPageWthOutDeliveyProcessing> createState() => _DelivryPageWthOutDeliveyProcessingState();
}

class _DelivryPageWthOutDeliveyProcessingState extends State<DelivryPageWthOutDeliveyProcessing> {
  final Completer<GoogleMapController> _controller = Completer();
  CameraPosition? cameraPosition;
  Location? _location;
  LocationData? _currentLocation;
  BitmapDescriptor sourceIconMarker = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destintionIconMarker = BitmapDescriptor.defaultMarker;
  BitmapDescriptor avater1Marker = BitmapDescriptor.defaultMarker;
  BitmapDescriptor avater2Marker = BitmapDescriptor.defaultMarker;
  BitmapDescriptor avater3Marker = BitmapDescriptor.defaultMarker;
  BitmapDescriptor avater4Marker = BitmapDescriptor.defaultMarker;
  LatLng sourceLoctation = LatLng(21.600923, 39.180062);
  LatLng destintionLoctation = LatLng(21.535470, 39.182817);
  LatLng avater1Location = LatLng(21.595688, 39.189508);
  LatLng avater2Location = LatLng(21.592495, 39.168068);
  LatLng avater3Location = LatLng(21.587068, 39.179903);
  LatLng avater4Location = LatLng(21.618510, 39.173214);
  List<LatLng> loctionList = [
    LatLng(21.595688, 39.189508),
    LatLng(21.587068, 39.179903),
    LatLng(21.592495, 39.168068),

    LatLng(21.618510, 39.173214),


  ];

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
        avater3Marker = iconResults[2];
        avater4Marker = iconResults[3];
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> getPostionOfMarker(int listItems) async {
    final GoogleMapController controller = await _controller.future;
    controller?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: loctionList[listItems-1], // your target location
          zoom: 14.5,
        ),
      ),
    );
  }
  void _onMapCreated(GoogleMapController controller) async {
    _controller.complete(controller);

    final String style =
    await rootBundle.loadString('assets/map_style/bp_event_map_1.json');
    controller.setMapStyle(style);
  }

  @override
  void initState() {
    setMarkerIcon();

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GoogleMap(
          onMapCreated: _onMapCreated,
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          initialCameraPosition:
          CameraPosition(target: sourceLoctation, zoom: 14),
          markers: {
            // Marker(
            //     markerId: MarkerId('source'),
            //     position: sourceLoctation,
            //     icon: sourceIconMarker),
            // Marker(
            //     markerId: MarkerId('destintion'),
            //     position: destintionLoctation,
            //     icon: destintionIconMarker),
            Marker(
                markerId: MarkerId('marrim'),
                position: avater1Location,
                infoWindow: InfoWindow(
                  title: 'marrim',
                  snippet: 'marrim',
                ),
                icon: avater1Marker),
            Marker(
                markerId: MarkerId('abdallah'),
                position: avater2Location,
                infoWindow: InfoWindow(
                  title: 'abdallah',
                  snippet: 'abdallah',
                ),
                icon: avater2Marker),
            Marker(
                markerId: MarkerId('eman'),
                position: avater3Location,
                infoWindow: InfoWindow(
                  title: 'eman',
                  snippet: 'eman',
                ),
                icon: avater3Marker),
            Marker(
                markerId: MarkerId('sabry'),
                position: avater4Location,
                infoWindow: InfoWindow(
                  title: 'sabry',
                  snippet: 'sabry',
                ),
                icon: avater4Marker),
          }),
      ContainerForPresons( onPersonSelected: getPostionOfMarker,)
    ]);
  }
}
