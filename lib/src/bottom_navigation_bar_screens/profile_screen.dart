import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../custom_paint.dart/home_screen_background.dart';
import '../widgets/alert_dialog_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? selectimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              CustomPaint(
                size: const Size(360, 180),
                painter: RPSCustomPainter2(),
              ),
              Positioned(
                top: 100, left: 170,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton(onPressed: () async {
                             final image = await ImagePicker()
                             .pickImage(source: ImageSource.gallery);
                             setState(() {
                                   selectimage = File(image?.path ?? "");
                             });
                            }, 
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: EdgeInsets.zero
                            ),
                            child: ClipOval(
                              child: selectimage != null ? Image.file(File(selectimage!.path), height: 100, width: 100, fit: BoxFit.cover,) : const Icon(Icons.add_a_photo_outlined, size: 40,))),
                ),
              ),
              const Positioned(
                top: 220,
                left: 200,
                child: Text("name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)),
              Positioned(
                top: 280,
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
                  child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.mode_edit_outlined),
              title: const Text("Edit profile"),
              onTap: () {
                showDialog(context: context, builder: (context){
                            return const AlertDialogWidget();
                          }); 
              },
            ),
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
              leading: const Icon(Icons.receipt_long_outlined),
              title: const Text("Billing details"),
              onTap: () {
                showDialog(context: context, builder: (context){
                            return const AlertDialogWidget();
                          }); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.miscellaneous_services_outlined),
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
              leading: const Icon(Icons.quick_contacts_dialer_outlined),
              title: const Text("Contact us"),
              onTap: () {
                showDialog(context: context, builder: (context){
                            return const AlertDialogWidget();
                          }); 
              },
            ),
          ],
        ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}