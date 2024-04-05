import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:snap_gate/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWithImageButton extends StatelessWidget {
  final String title;
  final String imageName;
  final VoidCallback onPressed;

  const TitleWithImageButton({
    required this.title,
    required this.imageName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          Size(double.infinity, 56.0), // Set minimum button size
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        // Set button color
        foregroundColor:
            MaterialStateProperty.all<Color>(Colors.white), // Set text color
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Set padding
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56.0), // Set button border radius
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0, // Set text size
              fontWeight: FontWeight.bold, // Set text weight
            ),
          ),
          SizedBox(width: 12.0), // Add spacing between title and image
          Image.asset(
            imageName,
            width: 32.0, // Set image width
            height: 32.0, // Set image height
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}