import 'package:flutter/material.dart';
import 'package:project4/src/catogories_screens/anouncment_screen.dart';
import 'package:project4/src/catogories_screens/event_screen.dart';

import '../catogories_screens/graduation_screen.dart';
import '../catogories_screens/wedding_screen.dart';
import '../registration_screens/register.dart';
import 'alert_dialog_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
             const DrawerHeader(
            child: Center(child: Text("Categories", style: TextStyle(fontSize: 22),))),
            ListTile(
              leading: const Icon(Icons.event_outlined),
              title: const Text("Events"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const EventScreen();
                })); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.celebration_outlined),
              title: const Text("Graduation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const GraduationScreen();
                })); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.announcement_outlined),
              title: const Text("Anouncment"),
              onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const AnouncmentScreen();
                }));
              },
            ),
            ListTile(
              leading: const Icon(Icons.celebration_outlined),
              title: const Text("Wedding"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const WeddingScreen();
                }));
              },
            ),
            ListTile(
              leading: const Icon(Icons.celebration_outlined),
              title: const Text("Customize your card"),
              onTap: () {
                showDialog(context: context, builder: (context){
                            return const AlertDialogWidget();
                          }); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout_outlined),
              title: const Text("Log out"),
              onTap: () {
                showDialog(context: context, builder: (context){
                            return AlertDialog(
                              title: const Center(child: Text("Log out", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),)),
                              content: const Text("Are you sure that you want to logout?"),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.of(context).pop();
                                }, child: const Text("Cancel")),
                                TextButton(onPressed: (){
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                                    return const Register();
                                  }));
                                }, child: const Text("Log out"))
                                
                              ],
                            );
                          }); 
              },
            )
          ],
        ),
      );
  }
}