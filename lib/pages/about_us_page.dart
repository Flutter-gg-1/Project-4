import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/widgets/my_app_bar_widget.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'About Us',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5355ca),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                '     At LapStore, we offer a curated selection of top-quality laptops from leading brands. Our goal is to provide a seamless shopping experience with competitive prices and expert knowledge. Whether you\'re a student, professional, or tech enthusiast, we\'re here to help you find the perfect laptop.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5355ca),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xff5355ca)),
                    child: const Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xff5355ca)),
                    child: const Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xff5355ca)),
                    child: const Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
