import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import '../custom_paint/background_custom_shape.dart';
import '../custom_paint/logo.dart';
import 'create_account.dart';
import 'login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomPaint(
            size: const Size(double.infinity, double.infinity),
            painter: RPSCustomPainter(),
          ),
          Positioned(
            top: 150,
            left: 135,
            child: CustomPaint(
              size: const Size(160, 173),
              painter: RPSCustomPainterLogo(),
            ),
          ),
          Positioned(
        top: 350,
        left: 40,
        child: Container(
          height: 550,
          width: 350,
          decoration: BoxDecoration(
            color: const Color(0xffBB9AB1).withOpacity(0.9),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: Color.fromARGB(255, 62, 59, 62), blurRadius: 10, blurStyle: BlurStyle.outer)
            ]
          ),
          child: ContainedTabBarView(tabs: const [
            Text("Register"),
            Text("Log in"),
          ],
          tabBarProperties:  TabBarProperties(
            width: 300,
            height: 40,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            indicator: BoxDecoration(
              color: const Color(0xffFEFBD8),
              borderRadius: BorderRadius.circular(20)                
            ),
            indicatorPadding: const EdgeInsets.only(top: 5, bottom: 5)
          ),
           views: const [
            CreateAccount(),
            Login()
          ]),
        ),
      )
        ],
      ),
    );
  }
}