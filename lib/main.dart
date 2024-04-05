import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snap_gate/gradient_container';
import 'package:snap_gate/circular_image.dart';
import 'package:snap_gate/design_system/sigin_button.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Snapgate.',
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight:
                    FontWeight.bold)),
          ),
          backgroundColor: Colors.black,
          centerTitle: false,
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: Column(
            children: [
              const CircularImageWithTextWidget(
                imageName: 'assets/images/book.png',
                imageSize: 88.0,
                text:
                    'Summarize content — aligned with your unique learning style',
              ),
              const SizedBox(height: 32),
              const CircularImageWithTextWidget(
                imageName: 'assets/images/hand.png',
                imageSize: 88.0,
                text: 'Master your findings with quiz-based reviews',
              ),
              const SizedBox(height: 32),
              const CircularImageWithTextWidget(
                imageName: 'assets/images/brain.png',
                imageSize: 88.0,
                text: 'Organize valuable insights for immediate application',
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
                child: Center(
                  child: TitleWithImageButton(
                    title: 'Continue with Google',
                    imageName: 'assets/images/google_icon.png',
                    onPressed: () {
                      print('login');
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 100, right: 16),
                child: Center(
                  child: TitleWithImageButton(
                    title: 'Continue with Google',
                    imageName: 'assets/images/google_icon.png',
                    onPressed: () {
                      print('login');
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
