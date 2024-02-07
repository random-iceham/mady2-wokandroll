import 'package:flutter/material.dart';
import 'home.dart';

class AddPage extends StatelessWidget {
  final TextEditingController dishnameController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController stepsController = TextEditingController();
  // final TextEditingController imageController = TextEditingController();

  void _post() {
    //post
    String dishname = dishnameController.text;
    String desc = descController.text;
    String steps = stepsController.text;
    // String image = imageController.text;

    //validation
    print('Dish Name: $dishname');
    print('Description : $desc');
    print('Steps: $steps');
    // print('Email: $image');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD6A474), //brownred
        title: Text('New Post'),
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
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Container(
            color: Color(0xFFE9EEC9), // light green e9eec9
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'WOK AND ROLL',
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'New Post',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //form ------------------------------------------------
                SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    controller: dishnameController,
                    decoration: InputDecoration(
                      labelText: 'Dish name...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Color(0xFFCCD6AE), // dark green
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    controller: descController,
                    decoration: InputDecoration(
                      labelText: 'Description...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Color(0xFFCCD6AE),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    controller: stepsController,
                    decoration: InputDecoration(
                      labelText: 'Steps...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Color(0xFFCCD6AE),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 16.0),
                //   child: TextField(
                //     controller: imageController,
                //     decoration: InputDecoration(
                //       labelText:
                //           'Insert an image... (TEMP)', //change to smth else
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //       ),
                //       filled: true,
                //       fillColor: Color(0xFFCCD6AE),
                //     ),
                //   ),
                // ),
                // SizedBox(height: 16.0),
                //form end ---------------------------------------------------
                ElevatedButton(
                  //post button
                  onPressed: _post,
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFCCD6AE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    'Post',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
