import 'package:flutter/material.dart';

class AlertMessage extends StatelessWidget {
  static final Map<String, dynamic> messages = {
    'about':
        'Welcome to Jeem, your ultimate destination for high-quality clothing and electronics!\n\nAt Jeem, we’re dedicated to providing a seamless shopping experience with a diverse range of products. Whether you’re looking for trendy apparel or cutting-edge electronics, we have something for everyone.',
    'contact':
        'We’re here to help! Whether you have questions, need support, or want to provide feedback, feel free to reach out to us.\n\nGet in Touch\nCustomer Support:\nEmail: jeem@gmail.com\nPhone: 01 6753839'
  };
  final String section;
  const AlertMessage({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
                          content:  Text(messages[section],textAlign: TextAlign.center, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: const Text('Back'))
                          ],
                        );
  }
}
