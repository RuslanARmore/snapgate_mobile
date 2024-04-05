import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:snap_gate/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularImageWidget extends StatelessWidget {
  final double size;
  final String imageName;

  CircularImageWidget({this.size = 100.0, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: primarybackground),
      child: Image.asset(
        imageName,
        width: 56,
        height: 56,
      ),
    );
  }
}

class CircularImageWithTextWidget extends StatelessWidget {
  final String imageName;
  final String text;
  final double imageSize;

  const CircularImageWithTextWidget({
    super.key,
    required this.imageName,
    required this.text,
    this.imageSize = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          CircularImageWidget(
            size: imageSize,
            imageName: imageName,
          ),
          SizedBox(width: 20),
          // Adjust the spacing between image and text as needed
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w600)), // Adjust the text style as needed
            ),
          ),
        ],
      ),
    );
  }
}
