import 'package:flutter/material.dart';
import '../../core/all_file.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(height: getScreenSize(context).height / 5),
          Stack(
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundColor: Colors.black,
              ),
              Positioned(
                top: getScreenSize(context).height / 2 - 400,
                left: getScreenSize(context).width / 2 - 175,
                child: const CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      'https://www.pngitem.com/pimgs/m/150-1503945_transparent-user-png-default-user-image-png-png.png'),
                ),
              ),
            ],
          ),
          SizedBox(height: getScreenSize(context).height / 15),
          MaterialButton(
            color: Colors.black,
            onPressed: () {},
            child: const Text('Log in', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
