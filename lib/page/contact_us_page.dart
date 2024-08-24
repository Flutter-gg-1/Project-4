




import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro4/global.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {


  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Column(



      children: [

        Expanded(
          child: ListView.builder(

            itemCount: msgTex.length,

            itemBuilder: (context, index) {

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5 , vertical: 5),
                child: BubbleSpecialThree(
                
                  constraints: BoxConstraints(
                    maxWidth: 100
                  ),
                
                  color: Colors.blue,
                  text: msgTex[index],
                  textStyle: GoogleFonts.lato(color: Colors.white),
                ),
              );
              
            },
          
          
            
          ),
        ),


          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(


              controller: textEditingController,
              
             
              onSubmitted: (value) {

                msgTex.add(value);

                textEditingController.clear();

                setState(() {
                  
                });

                
                

                
              },
              decoration: InputDecoration(
                  hintText: "Enter Text",
                  suffix: const Icon(Icons.send ,color: Color(0xff274460),),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
          )

      ],




    );
  }
}