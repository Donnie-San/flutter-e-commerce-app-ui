import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app_ui/colors.dart';
import 'package:flutter_e_commerce_app_ui/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accent,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LOGO
            // Image.asset(name),

            // TITLE
            Text(
              "A Flutter App",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.dark,
              ),
            ),
            SizedBox(height: 20),

            // SUBTITLE
            Text(
              "Flutter is an open-source software development kit by Google.",
              style: TextStyle(fontSize: 16, color: AppColors.dark),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),

            // CONTINUE BUTTON
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.dark,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_right, color: Colors.white, size: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
