import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'ابحث هنا',
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
      body: Column(
        children: [
          // قائمة المنتجات
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                ProductCard(
                  image: 'images/illustration2.jpg',
                  name: ' مشروع تخرج ',
                  oldPrice: 69.99,
                  newPrice: 50.99,
                  rating: 4.5,
                ),
                ProductCard(
                  image: 'images/illustration2.jpg',
                  name: 'مسروع تخؤج',
                  oldPrice: 69.99,
                  newPrice: 50.99,
                  rating: 5,
                ),
              ],
            ),
          ),
          // أقسام المنتجات
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // ... عناصر أخرى للأقسام
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [],
        // ... عناصر أخرى للـ BottomNavigationBar
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final double oldPrice;
  final double newPrice;
  final double rating;

  const ProductCard({
    Key? key,
    required this.image,
    required this.name,
    required this.oldPrice,
    required this.newPrice,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(image),
          Text(name),
        ],
      ),
    );
  }
}
