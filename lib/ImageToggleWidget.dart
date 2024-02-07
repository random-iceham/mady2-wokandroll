import 'package:flutter/material.dart';

class ImageToggleWidget extends StatefulWidget {
  final String image1;
  final String image2;
  final String label;

  const ImageToggleWidget({
    Key key,
    @required this.image1,
    @required this.image2,
    @required this.label,
  }) : super(key: key);

  @override
  _ImageToggleWidgetState createState() => _ImageToggleWidgetState();
}

class _ImageToggleWidgetState extends State<ImageToggleWidget> {
  bool isImage1 = true;

  void toggleImage() {
    setState(() {
      isImage1 = !isImage1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: toggleImage,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(isImage1 ? widget.image1 : widget.image2),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          widget.label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
