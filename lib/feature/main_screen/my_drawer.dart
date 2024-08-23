import 'package:flutter/material.dart';
import '../../core/all_file.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
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
          MaterialButton(onPressed: () {}, child: const Text('Logout'))
        ],
      ),
    );
  }
}
