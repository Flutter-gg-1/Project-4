import 'package:flutter/material.dart';

import '../custom_paint.dart/home_screen_background.dart';
import '../widgets/alert_dialog_widget.dart';
import '../widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              CustomPaint(
                size: const Size(360, 180),
                painter: RPSCustomPainter2(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xff582277).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 6,
                            blurStyle: BlurStyle.outer,
                            color: Color(0xff582277))
                      ]),
                  child: Builder(
                    builder: (context) {
                      return IconButton(
                        icon: const Icon(Icons.menu, color: Colors.black,),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      );
                    },
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 105, left: 70),
                child: SizedBox(
                  width: 300,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search_outlined),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left:370),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xff582277).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 6,
                            blurStyle: BlurStyle.outer,
                            color: Color(0xff582277))
                      ]),
                  child: IconButton(
                        icon: const Icon(Icons.notifications_none_outlined, color: Colors.black,),
                        onPressed: () {
                          showDialog(context: context, builder: (context){
                            return const AlertDialogWidget();
                          });
                        },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
