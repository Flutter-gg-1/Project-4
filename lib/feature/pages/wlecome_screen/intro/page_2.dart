import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              Text('Welcome'),
              SizedBox(height: 30),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Please click on the button below to continue'),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
    );
  }
}
