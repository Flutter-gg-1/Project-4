import 'package:flutter/material.dart';
import 'package:project4/login.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
             currentAccountPicture: CircleAvatar(
              backgroundImage: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.cover,
              ).image,
              ),
                accountEmail: const Text('Linda@gmail.com'),
                accountName: const Text(
                  'Linda',
                  style: TextStyle(fontSize: 24, fontFamily: "Gilroy", color: Color.fromARGB(255, 255, 255, 255)),
                ),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 242, 132, 130),
                ),
              ),
              const ListTile(
                title: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 20, fontFamily: "Gilroy",)
                ),
              ),
              ListTile(
                title:  const Text(
                  'Sign out',
                  style: TextStyle(fontSize: 20, fontFamily: "Gilroy", ),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Login(
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
    );
  }
}