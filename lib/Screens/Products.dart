import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  Products({super.key});

  // Products Data

  final List<IconData> productIcons = [
    Icons.watch,
    Icons.headphones,
    Icons.laptop,
    Icons.camera_alt,
    Icons.phone_android,
    Icons.tablet,
    Icons.tv,
    Icons.sports_esports,
    Icons.kitchen,
    Icons.chair,
    Icons.bed,
    Icons.lightbulb,
  ];

  final List<String> productNames = [
    "Smart Watch",
    "Headphones",
    "Laptop",
    "Camera",
    "Smartphone",
    "Tablet",
    "Television",
    "Gaming Console",
    "Kitchen Appliances",
    "Furniture",
    "Home Decor",
    "Lighting",
  ];

  final List<double> productPrices = [
    1200,
    750,
    8500,
    3200,
    5000,
    4200,
    6000,
    15000,
    2500,
    1800,
    2200,
    900,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.builder", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(10),

        child: GridView.builder(
          itemCount: productNames.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

            mainAxisSpacing: 10,

            crossAxisSpacing: 10,

            childAspectRatio: 1.2,
          ),

          itemBuilder: (context, index) {
            return ProductCard(
              icon: productIcons[index],

              name: productNames[index],

              price: productPrices[index],
            );
          },
        ),
      ),
    );
  }
}

// Custom Widget

class ProductCard extends StatelessWidget {
  final IconData icon;
  final String name;
  final double price;

  const ProductCard({
    super.key,

    required this.icon,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFF8F2FA),

      elevation: 6,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(icon, size: 55, color: Colors.teal),

          SizedBox(height: 10),

          Text(
            name,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),

          SizedBox(height: 3),

          Text(
            "\$${price.toStringAsFixed(0)}",
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
