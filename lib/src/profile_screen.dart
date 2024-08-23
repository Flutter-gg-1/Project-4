import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              elevation: 10,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                child: CircleAvatar(
                  child: Icon(
                      size: MediaQuery.of(context).size.height / 3,
                      Icons.person_2_rounded),
                ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2 - 80,
              child: Column(
                children: [
                  const ListTile(
                    title: Center(child: Text("Mahdi Alhelal")),
                    subtitle: Center(child: Text("example@email.com")),
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_city_outlined),
                            Text("Saudi Arabia")
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
