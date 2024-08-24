import 'package:flutter/material.dart';

import '../catogories_screens/graduation_screen.dart';
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
                showDialog(context: context, builder: (context){
                            return const AlertDialogWidget();
                          }); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.celebration_outlined),
              title: const Text("Graduation"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return GraduationScreen();
                })); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.celebration_outlined),
              title: const Text("Party"),
              onTap: () {
                showDialog(context: context, builder: (context){
                            return const AlertDialogWidget();
                          }); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.celebration_outlined),
              title: const Text("Wedding"),
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