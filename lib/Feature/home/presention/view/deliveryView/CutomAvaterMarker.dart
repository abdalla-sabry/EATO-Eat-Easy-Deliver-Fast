import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomMarkerWidget extends StatelessWidget {
  final LatLng latLng;        // 🗺️ One LatLng variable
  final String markerId;      // 🆔 Marker ID
  final String imagePath;     // 🖼️ Local asset image path

  const CustomMarkerWidget({
    Key? key,
    required this.latLng,
    required this.markerId,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // 🩵 Image inside circular container
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipOval(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        // 🔻 Small triangle shape (like Google Map marker bottom)
        CustomPaint(
          size: const Size(20, 10),
          painter: _TrianglePainter(color: Colors.white),
        ),
      ],
    );
  }
}

// 🎨 Draws the small triangle under the circular image
class _TrianglePainter extends CustomPainter {
  final Color color;

  _TrianglePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = color;
    final Path path = Path()
      ..moveTo(size.width / 2, size.height)
      ..lineTo(0, 0)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
