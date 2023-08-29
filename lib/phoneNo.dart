import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signup_clone/varPage.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNo extends StatefulWidget {
  const PhoneNo({super.key});

  @override
  State<PhoneNo> createState() => _PhoneNoState();
}

class _PhoneNoState extends State<PhoneNo> {
  bool option =false;
  TextEditingController txt =TextEditingController();
   numberValidator( value) {
    if(value == null) {
      return 'number is required';
    }
    final n = num.tryParse(value);
    if(n == null) {
      return '"$value" is not a valid number';
    }
    return 'enter valid number';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
         Container(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
             image: DecorationImage(fit: BoxFit.fill,
             image: AssetImage('assets/Gr.jpg'))
           ),
           child: Stack(
             children: [
               Positioned(
                 top:180,
                   left: 130,
                   child: Text('Enter your number:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
               Positioned(
                 top: 220,
                 left: 130,
                 child: Container(

                   height: 67,
                   width: 320,
                   decoration: BoxDecoration(
                       color: Colors.white.withOpacity(0.2),
                       borderRadius: BorderRadius.circular(10),

                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 20,left: 20),
                     child: IntlPhoneField(
                       controller: txt,
                       decoration: new InputDecoration(
                         border: InputBorder.none,
                         hintText: "Enter your number",),


                     ),
                   ),

                 ),
               ),
               Positioned(
                 top: 297,
                 left: 200,

                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       backgroundColor : Colors.white,
                       textStyle: const TextStyle(
                           color: Colors.white,
                           fontSize: 16,
                           fontStyle: FontStyle.normal),
                     ),
                     onPressed: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => VarPage()),
                       );

                     },
                     child: const Text('CONTINUE'),
                   ),
                 ),
               ),

             ],
           ),
         )
      ]
      ),
    );
  }
}
