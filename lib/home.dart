import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chasi Bondhu',
          style: TextStyle(color: Colors.white, fontSize: 24)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        crossAxisCount: 3,
        children: <Widget>[
          _buildCategoryItem('Dairy', Icons.local_drink),
          _buildCategoryItem('Vegetables', Icons.grass),
          _buildCategoryItem('Fruits', Icons.apple),
          _buildCategoryItem('Poultry', Icons.egg),
          _buildCategoryItem('Fishery', Icons.iso),
          _buildCategoryItem('Flowers', Icons.local_florist),
          _buildCategoryItem('Plants', Icons.spa),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title, IconData icon) {
    return Card(
      child: InkWell(
        onTap: () {}, // Define action on tap
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 40, color: Colors.green),
            Text(title),
          ],
        ),
      ),
    );
  }
}
