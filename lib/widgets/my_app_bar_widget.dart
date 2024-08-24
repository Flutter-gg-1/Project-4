import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/nav_bar_widget.dart';

class MyAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 202, 203, 255),
      title: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const NavBarWidget();
          }));
        },
        child: SizedBox(
          height: 45,
          width: 150,
          child: Image.asset("assets/general/logo.png"),
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
