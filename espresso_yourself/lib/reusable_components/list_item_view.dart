import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../extensions/color_ext.dart';
import '../extensions/image_ext.dart';
import '../model/menu_item.dart';

class ListItemView extends StatelessWidget {
  const ListItemView({super.key, required this.item});

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: C.secondary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: item.img,
                fit: BoxFit.contain,
                width: 60,
                height: 60,
              ),
              SizedBox(width: 8),
              Text(item.title).styled(),
              Spacer(),
              Row(
                children: [
                  Text(item.rating.toStringAsPrecision(2)).styled(size: 20),
                  const SizedBox(width: 8),
                  const Icon(
                    CupertinoIcons.star,
                    color: C.text,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
