import 'package:flutter/material.dart';

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
            child: Center(child: Text("Menu", style: TextStyle(fontSize: 22),))),
            ListTile(
              leading: const Icon(Icons.my_library_books_outlined),
              title: const Text("My orders"),
              onTap: () {
                showDialog(context: context, builder: (context){
                            return const AlertDialogWidget();
                          }); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.my_library_books_outlined),
              title: const Text("Billing details"),
              onTap: () {
                showDialog(context: context, builder: (context){
                            return const AlertDialogWidget();
                          }); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                showDialog(context: context, builder: (context){
                            return const AlertDialogWidget();
                          }); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_support_outlined),
              title: const Text("About us"),
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