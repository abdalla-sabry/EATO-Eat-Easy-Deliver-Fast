import 'package:flutter/material.dart';

class FoodItemCard extends StatelessWidget {
   FoodItemCard({super.key,required this.foodName,required this.prise});
String foodName;
String prise;

  @override
  Widget build(BuildContext context) {
    // I'm using a Card for a nicer look with a shadow
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center, // Vertically center items
          children: [///
            // 1. Image Placeholder
            // This is the pink-ish box on the left of your image
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                width: 70,
                height: 70,
                color: Colors.green[50], // Placeholder color
                // In a real app, you would use an Image widget:
                // child: Image.network(
                //   'URL_TO_YOUR_IMAGE',
                //   fit: BoxFit.cover,
                // ),
                child: Icon(Icons.fastfood, color: Colors.green[200], size: 40),
              ),
            ),

            // 2. Space between image and text
            const SizedBox(width: 16),

            // 3. Title and Subtitle Column
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Left-aligns text
              children: [
                 Text(
                  foodName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 6), // Space between title and subtitle
                Text(
                  "Delivery in 20Min",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),

            // 4. The Spacer
            // This is the magic part. It expands to fill all available
            // space, pushing the price to the far right.
            const Spacer(),

            // 5. The Price
             Text(
              prise,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                // A green color similar to your image
                color: Color(0xFF2E8B57),
              ),
            ),
          ],
        ),
      ),
    );
  }
}