import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../extensions/color_ext.dart';
import '../../../model/menu_item.dart';
import '../../../mock_data.dart';
import '../../../reusable_components/buttons/circle_btn_container_view.dart';

class DescriptionView extends StatefulWidget {
  const DescriptionView({super.key, required this.item});

  final MenuItem item;

  @override
  State<DescriptionView> createState() => _DescriptionViewState();
}

class _DescriptionViewState extends State<DescriptionView> {
  final user = MockData().user;
  late bool isInFavorites;

  void _addToFavorites() {
    setState(() {
      if (user.favorite.items.contains(widget.item)) {
        user.favorite.items.remove(widget.item);
        isInFavorites = false;
      } else {
        user.favorite.addItem(item: widget.item);
        isInFavorites = true;
      }
    });
  }

  @override
  void initState() {
    isInFavorites = user.favorite.items.contains(widget.item);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.item.title).styled(size: 24),
            InkWell(
              onTap: _addToFavorites,
              child: CircleBtnContainerView(
                size: 40,
                child: Icon(
                  isInFavorites
                      ? CupertinoIcons.heart_fill
                      : CupertinoIcons.heart,
                  color: C.text,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Container(
            decoration: BoxDecoration(
              color: C.primary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text('Details').styled(),
                      const Spacer(),
                      Text(widget.item.rating.toStringAsPrecision(2)).styled(),
                      const SizedBox(width: 8),
                      const Icon(CupertinoIcons.star_fill, color: C.text)
                    ],
                  ),
                  const Divider(),
                  Text(widget.item.description).styled(
                    align: TextAlign.start,
                    color: C.text.withOpacity(0.5),
                    lineLimit: 10,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
