import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String imagePath;
  final String title;

  ProductItem(this.imagePath, this.title);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: Container(
        width: 280,
        height: 350,
        child: Column(
          children: <Widget>[
            Image.asset(imagePath),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
