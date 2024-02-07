import 'package:flutter/material.dart';
import 'home.dart';
import 'recipe.dart';
import 'starwidget.dart';

class DiscoverPage extends StatelessWidget {
  final List<Map<String, dynamic>> dishes = [
    {
      'dishName': 'Spaghetti Carbonara',
      'username': 'Chef John',
      'description':
          'A classic Italian dish made with pasta, eggs, cheese, and pancetta.',
      'imagePath': 'images/spaghetti-carbonara.jpg',
      'rating': 1.0,
      'steps': [
        'Cook pasta according to package instructions.',
        'In a separate bowl, whisk together eggs, cheese, and black pepper.',
        'Cook pancetta until crispy, then drain excess fat.',
        'Mix cooked pasta with egg mixture and pancetta.',
        'Serve immediately with additional cheese and black pepper.'
      ],
    },
    {
      'dishName': 'Chicken Tikka Masala',
      'username': 'Chef Emily',
      'description':
          'A popular Indian dish consisting of marinated chicken in a creamy tomato sauce.',
      'imagePath': 'images/Chicken-Tikka-Masala.jpg',
      'rating': 3.0,
      'steps': [
        'Cook pasta according to package instructions.',
        'In a separate bowl, whisk together eggs, cheese, and black pepper.',
        'Cook pancetta until crispy, then drain excess fat.',
        'Mix cooked pasta with egg mixture and pancetta.',
        'Serve immediately with additional cheese and black pepper.'
      ],
    },
    {
      'dishName': 'Hainanese Chicken Rice',
      'username': 'Chef John',
      'description':
          'A classic Singaporean dish featuring poached chicken and fragrant rice, served with chili sauce and soy sauce.',
      'imagePath': 'images/hainanese-Chicken-Rice.jpg',
      'rating': 5.0,
      'steps': [
        'Cook rice with ginger and garlic.',
        'Poach chicken in a pot of simmering water with ginger and garlic.',
        'Cook pancetta until crispy, then drain excess fat.',
        'Remove chicken and let it cool. Slice.',
        'Serve chicken with rice and chili sauce.'
      ],
    },
    {
      'dishName': 'Chilli Crab',
      'username': 'Chef Ali',
      'description':
          'A popular seafood dish featuring crab cooked in a sweet and spicy tomato-based sauce.',
      'imagePath': 'images/Chilli-Crab.jpg',
      'rating': 4.0,
      'steps': [
        'Clean and chop crab into pieces.',
        'Sauté garlic and ginger in oil until fragrant',
        'Add crab and stir-fry until slightly cooked.',
        'Pour in tomato sauce, chili sauce, and water. Simmer until crab is cooked.',
        'Thicken sauce with beaten eggs.'
      ],
    },
    {
      'dishName': 'Laksa',
      'username': 'Chef Emily',
      'description':
          'A spicy noodle soup popular in Singapore, made with coconut milk, curry spices, and noodles.',
      'imagePath': 'images/laksa.jpg',
      'rating': 5.0,
      'steps': [
        'Cook noodles according to package instructions.',
        'Prepare soup base by simmering coconut milk with curry paste.',
        'Add chicken or seafood and simmer until cooked.',
        'Serve noodles in a bowl, pour soup over, and garnish with bean sprouts and tofu puffs.'
      ],
    },
    {
      'dishName': 'Char Kway Teow',
      'username': 'Chef Khan',
      'description':
          'A stir-fried noodle dish cooked with shrimp, cockles, Chinese lap cheong, eggs, bean sprouts, and chives in a mix of soy sauce.',
      'imagePath': 'images/CharKwayTeow.jpg',
      'rating': 2.0,
      'steps': [
        'Stir-fry shrimp and cockles until cooked. Set aside.',
        'Sauté lap cheong, garlic, and eggs.',
        'Add noodles and stir-fry with soy sauce.',
        'Add cooked shrimp, cockles, bean sprouts, and chives. Stir well.'
      ],
    },
    {
      'dishName': 'Satay',
      'username': 'Chef Ali',
      'description':
          ' Grilled meat skewers marinated in a blend of spices, served with a peanut dipping sauce.',
      'imagePath': 'images/Satay.jpg',
      'rating': 3.0,
      'steps': [
        'Marinate meat in a blend of lemongrass, garlic, shallots, turmeric, coriander, and cumin.',
        'Thread meat onto skewers and grill until cooked.',
        'Serve with peanut sauce for dipping.'
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD6A474),
        title: Text('Discover'),
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
      body: ListView.builder(
        itemCount: dishes.length,
        itemBuilder: (context, index) {
          final dish = dishes[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipePage(
                    dishName: dish['dishName'],
                    username: dish['username'],
                    description: dish['description'],
                    imagePath: dish['imagePath'],
                    rating: dish['rating'],
                    steps: dish['steps'],
                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    dish['imagePath'],
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dish['dishName'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          dish['description'],
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 4),
                        StarRating(rating: dish['rating']),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
