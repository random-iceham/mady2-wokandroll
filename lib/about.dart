import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD6A474),
        title: Text('About us'),
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
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color(0xFFE9EEC9), // light green e9eec9
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ListView(
          children: [
            Image.asset(
              'images/kitchen.jpg',
              height: 400,
              width: 400,
            ),
            SizedBox(height: 16.0),
            Text(
              'WOK AND WOLL',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Singapore is a melting pot of different cultures and their respective cuisines, leading to our current iconic food culture. With so many dishes from so many different cultures, it can be hard to track down recipes scattered across the internet, or maybe they want to bring an exciting new spin to their own favourite recipes. With use of this mobile application, it brings the convenience of Singapore’s favourite dishes all in one place',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                launch("tel://87654321"); // Launch phone app
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Number:',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '8765 4321',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                launch("mailto:wokandroll@email.com");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email:',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'wokandroll@email.com',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Dev Info:',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Aysham Rashid, 222924U, NYP',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
