import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/models/user.dart';
import 'package:shopping_app/widgets/alert_with_icon.dart';
import 'package:shopping_app/widgets/section_title.dart';

class CartScreen extends StatefulWidget {
  final User user;
  const CartScreen({super.key, required this.user});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Column(
        children: [
          const SizedBox(height: 20,),
          Container(alignment: Alignment.centerLeft,child: const SectionTitle(title: "My Cart")),
          widget.user.cart.isEmpty
          ? Center(child: Text("No Products added yet", style: GoogleFonts.poppins()),)
          : Flexible(
            child: ListView.builder(
              itemCount: widget.user.cart.length,
              itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: borderColor, width: 3),color: thirdColor),
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(
                    leading: Image.asset(widget.user.cart[index].pic),
                    title: Text(widget.user.cart[index].name, style: GoogleFonts.poppins(
                      color: Colors.black
                    ),),
                    subtitle: Text('${widget.user.cart[index].price} SR'),
                    trailing: IconButton(onPressed: (){
                      widget.user.cart.removeAt(index);
                      setState(() {});
                    }, icon: const Icon(Icons.delete)),
                    ),
                );
              }),
          ),
          widget.user.cart.isEmpty ? const SizedBox()
          : Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(mainColor)),
              onPressed: () async{
              await showDialog(context: context, builder: (context){
                return const AlertWithIcon(alert: "Purchase Done", icon: Icons.check_circle_outline_outlined, iconColor: Colors.green);
              });
              widget.user.cart.clear();
              setState(() {});
            }, child: Text("Purchase Now", style: GoogleFonts.poppins(
              color: Colors.white
            ),)),
          )
        ],
      ),
    );
  }
}