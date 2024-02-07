import 'package:flutter/material.dart';
import 'home.dart';

class SavedPage extends StatelessWidget {
  final List<String> likedRecipes;

  SavedPage({this.likedRecipes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD6A474),
        title: Text('Saved'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Liked Recipes:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildRecipeCard(
                'Spaghetti Carbonara', 'images/spaghetti-carbonara.jpg',
                isLiked: true),
            _buildRecipeCard(
                'Chicken Tikka Masala', 'images/Chicken-Tikka-Masala.jpg',
                isLiked: true),
          ],
        ),
      ),
    );
  }

  Widget _buildRecipeCard(String dishName, String imagePath,
      {bool isLiked = false}) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dishName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : null,
                  ),
                  onPressed: () {
                    //
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
