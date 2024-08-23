



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:pro4/page/store_page.dart';
import 'package:pro4/widget/texfiled_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      
      
      
      
        body: Column(
      
          // mainAxisAlignment: MainAxisAlignment.center,
      
      
          children: [

            SizedBox(height: 45,),
      
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
      
                const Icon(FontAwesome.store_solid , color:Colors.green ,),
                const SizedBox(width: 10,),
                Text("MyStore", style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 24),)
      
              ],
            ),

           const Spacer(flex: 1,),
      
           const  TexfiledWidget(texHint: "name",),
           const SizedBox(height: 25,),
            const TexfiledWidget(texHint: "password",),
                     const SizedBox(height: 50,),
      
      
      
            GestureDetector(
              onTap: () {
                

                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {

                  return    const StorePage();
                  
                },));
              },
              child: Container(
                    
                width: 250,
                height: 60,
                    
                decoration: BoxDecoration(
                    
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16)
                ),
                    
                child: Center(child: Text("Login" , style: GoogleFonts.lato(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold) ,)),
              ),
            ),

            const Spacer(flex: 2,),


      
      
            
      
          ],
        ),
      ),
    );
  }
}