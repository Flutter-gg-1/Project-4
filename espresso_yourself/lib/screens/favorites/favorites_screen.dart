import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/mock_data.dart';
import 'package:flutter/material.dart';
import '../../reusable_components/list_item_view.dart';

class FavoritesScreen extends StatelessWidget {
  FavoritesScreen({super.key});

  final user = MockData().user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Text('Favorites').styled(size: 24, weight: FontWeight.w700),
              Expanded(
                child: ListView(
                  children: user.favorite.items
                      .map((item) => ListItemView(item: item))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
