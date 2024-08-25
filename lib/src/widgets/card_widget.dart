import 'package:flutter/material.dart';

import '../credit_card_screen.dart';
import 'alert_dialog_widget.dart';

class CardWidget extends StatelessWidget {
  final String photPath;
  final String text;
  final String price;
  const CardWidget({super.key, required this.photPath, required this.price, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 4,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.asset(
                                photPath,
                                height: 250,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fill,
                              ),
                            ),
                             ListTile(
                              title: Text(
                                text,
                                style: const TextStyle(fontSize: 20),
                              ),
                              trailing: Text(
                                price,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    showModalBottomSheet(context: context, backgroundColor: Colors.white.withOpacity(0.9),builder: (BuildContext context){
                                      return SizedBox(
                                        height: 600,
                                        width: MediaQuery.of(context).size.width,
                                        child: Column(
                                          children: [
                                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.asset(
                                photPath,
                                height: 400,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fill,
                              ),
                            ),
                            ElevatedButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return const CreditCardScreen();
                              }));
                            }, style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff582277),
                                      minimumSize:
                                          const Size(20, 30)),child: const Text("Buy", style: TextStyle(color: Colors.white),))
                                          ],
                                        ),
                                      );
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff582277),
                                      minimumSize:
                                          const Size(20, 25)),
                                  child: const Text("Preview", style: TextStyle(color: Color(0xffFEFBD8)),),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const AlertDialogWidget();
                                  });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff582277),
                                      minimumSize:
                                          const Size(20, 20)),
                                  child: const Icon(Icons.favorite_border_rounded, color: Color(0xffFEFBD8),)
                                ),
                              ],
                            )
                          ],
                        ),
                      );
  }
}