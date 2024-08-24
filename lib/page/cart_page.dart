import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:pro4/global.dart';
import 'package:pro4/models/product_model.dart';
import 'package:pro4/widget/button_widget.dart';
import 'package:pro4/widget/cart_item_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: cartList.length,
            itemBuilder: (context, index) {
              return CartItemWidget(productModel: cartList[index]);
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total : ${ProductModel.getTotal()}",
              style: GoogleFonts.lato(color: Colors.black, fontSize: 18),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              FontAwesome.money_bill_solid,
              color: Colors.green,
            )
          ],
        ),
        ButtonWidget(
          tex: "confrom order",
          fun: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16)),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "your order qr code",
                        style:
                            GoogleFonts.lato(color: Colors.black, fontSize: 25),
                      ),
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: QrImageView(
                          data: "123121",
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
        )
      ],
    );
  }
}
