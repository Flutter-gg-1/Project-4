import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/reusable_components/list_item_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../extensions/color_ext.dart';
import '../../mock_data.dart';
import '../../model/cart.dart';
import '../../model/menu_item.dart';
import '../../model/user.dart';

class CartListView extends StatefulWidget {
  CartListView({super.key, required this.cartItem, required this.removeItem});

  final CartItem cartItem;
  final User user = MockData().user;
  final void Function(BuildContext context, CartItem cartItem) removeItem;

  @override
  State<CartListView> createState() => _CartListViewState();
}

class _CartListViewState extends State<CartListView> {
  void _removeItem(BuildContext context) {
    widget.user.cartItems
        .removeWhere((cartItem) => cartItem == widget.cartItem);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        // dismissible: DismissiblePane(onDismissed: () => _removeItem),
        children: [
          SlidableAction(
            onPressed: _removeItem,
            backgroundColor: C.primary,
            foregroundColor: C.text,
            icon: CupertinoIcons.trash_fill,
            label: 'Delete',
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListItemView(
          item: widget.cartItem.item,
          quantity: widget.cartItem.quantity,
        ),
      ),
    );
  }
}
