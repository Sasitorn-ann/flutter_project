import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProductLayout(),
  ));
}

class ProductLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Layout'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: double.infinity,
            color: Colors.grey[300],
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Category: Electronics',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 10),

          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.all(10.0),
              children: [
                _buildProductCard('Laptop', '999 THB', 'https://via.placeholder.com/150'),
                _buildProductCard('Smartphone', '699 THB', 'https://via.placeholder.com/150'),
                _buildProductCard('Tablet', '499 THB', 'https://via.placeholder.com/150'),
                _buildProductCard('Camera', '299 THB', 'https://via.placeholder.com/150'),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildProductCard(String name, String price, String imageUrl) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          price,
          style: TextStyle(color: Colors.green),
        ),
      ],
    );
  }
}
