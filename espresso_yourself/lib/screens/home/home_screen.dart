import 'package:avatar_glow/avatar_glow.dart';
import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/screens/home/subviews/category_tab_view.dart';
import 'package:espresso_yourself/screens/home/subviews/home_drawer.dart';
import 'package:flutter/material.dart';
import '../../extensions/color_ext.dart';
import '../../extensions/image_ext.dart';
import '../../mock_data.dart';
import '../../model/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  late User user;

  @override
  void initState() {
    setState(() {
      user = MockData().user;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width / 2,
        child: HomeDrawer(),
      ),
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              ProfileCard(user: user),
              const Expanded(
                child: CategoryTabView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Good Morning')
                .styled(size: 28, weight: FontWeight.w600),
            Row(
              children: [
                const Icon(
                  Icons.pin_drop_rounded,
                  color: C.text,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: const Text('Riyadh, Saudi').styled(size: 20),
                ),
              ],
            )
          ],
        ),
        AvatarGlow(
          child: Material(
            // Replace this child with your own
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundColor: C.accent,
              radius: 30.0,
              child: InkWell(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: Image(
                  image: user.avatar,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
