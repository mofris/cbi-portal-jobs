import 'package:flutter/material.dart';
import 'package:future_jobs/pages/category_page.dart';

import '../theme.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  CategoryCard({required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(
              name: name,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 200,
            margin: EdgeInsets.only(right: defaultMargin),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Container(
            width: 150,
            height: 80,
            margin: EdgeInsets.only(top: 120, right: defaultMargin),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.7), // Pudaran hitam paling bawah
                  Colors.black.withOpacity(0.2), // Pudaran hitam paling atas
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0), // Adjust padding as needed
                child: Text(
                  name,
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight
                        .bold, // Make sure 'medium' is defined or use FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
