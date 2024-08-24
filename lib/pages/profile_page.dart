import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/shared.dart';
import 'package:shopping_app/widgets/my_app_bar_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            const Icon(
              FontAwesomeIcons.circleUser,
              size: 70,
              color: Color(0xff5355ca),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(color: Color(0xff5355ca), fontSize: 20),
                    ),
                    Text(
                      "Email",
                      style: TextStyle(color: Color(0xff5355ca), fontSize: 20),
                    ),
                    Text(
                      "Password",
                      style: TextStyle(color: Color(0xff5355ca), fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      loggedIn.name,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(
                      loggedIn.email,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(
                      loggedIn.password,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
