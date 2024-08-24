import 'package:flutter/material.dart';
import '../../../core/all_file.dart';

class PersonAccount extends StatelessWidget {
  const PersonAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.colorWhite,
      body: Center(
        child: Column(
          children: [
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
            Card(
              child: Container(
                width: getScreenSize(context).width / 0.88,
                height: getScreenSize(context).height / 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: MyColors.colorBlack),
                  color: MyColors.colorWhite,
                ),
                child: Flexible(
                  child: ListTile(
                    title: const Text('Name: Abdullah Mukhlef Al-Shammari'),
                    subtitle: Row(
                      children: [
                        const Text('User: Abu_Mukhlef'),
                        SizedBox(width: getScreenSize(context).width / 45),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
