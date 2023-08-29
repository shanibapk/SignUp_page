import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final formKey1 = GlobalKey<FormState>();
  TextEditingController txt1=TextEditingController();
  TextEditingController txt2=TextEditingController();
  TextEditingController txt3=TextEditingController();
  TextEditingController txt4=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
              child: Text('Recieve OTP',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),)),
         Form(
           key: formKey1,
             child: Column(
               children: [
                 Row(
                   children: [
                     SizedBox(
                       height: 68,
                       width: 55,
                     ),
                     Container(
                       width: 64,
                       height: 68,
                       decoration: BoxDecoration(
                           color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                         border: Border.all(width: 2)

                       ),
                       child: TextFormField(
                         controller: txt1,
                         decoration: InputDecoration(
                             hintText: '0',
                           border:InputBorder.none
                         ),
                         onChanged: (value){
                           if(value.length==1){
                             FocusScope.of(context).nextFocus();
                           }
                         },
                         style: Theme.of(context).textTheme.titleLarge,
                         keyboardType: TextInputType.number,
                         textAlign: TextAlign.center,
                         inputFormatters: [
                           LengthLimitingTextInputFormatter(1),
                           FilteringTextInputFormatter.digitsOnly
                         ],
                       ),
                     ),
                     SizedBox(
                       height: 68,
                       width: 55,
                     ),
                     Container(

                       height: 68,
                       width: 64,
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(width: 2)

                       ),
                       child: TextFormField(

                         controller: txt2,
                         decoration: InputDecoration(
                             hintText: '0',
                             border:InputBorder.none
                         ),
                         onChanged: (value){
                           if(value.length==1){
                             FocusScope.of(context).nextFocus();
                           }
                         },
                         style: Theme.of(context).textTheme.titleLarge,
                         keyboardType: TextInputType.number,
                         textAlign: TextAlign.center,
                         inputFormatters: [
                           LengthLimitingTextInputFormatter(1),
                           FilteringTextInputFormatter.digitsOnly
                         ],
                       ),
                     ),
                     SizedBox(
                       height: 68,
                       width: 55,
                     ),
                     Container(

                       height: 68,
                       width: 64,
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(width: 2)

                       ),
                       child: TextFormField(

                         controller: txt3,
                         decoration: InputDecoration(
                             hintText: '0',

                             border:InputBorder.none
                         ),
                         onChanged: (value){
                           if(value.length==1){
                             FocusScope.of(context).nextFocus();
                           }
                         },
                         style: Theme.of(context).textTheme.titleLarge,
                         keyboardType: TextInputType.number,
                         textAlign: TextAlign.center,
                         inputFormatters: [
                           LengthLimitingTextInputFormatter(1),
                           FilteringTextInputFormatter.digitsOnly
                         ],
                       ),
                     ),
                     SizedBox(
                       height: 68,
                       width: 55,
                     ),
                     Container(

                       height: 68,
                       width: 64,
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(width: 2)

                       ),
                       child: TextFormField(
                         controller: txt4,
                         decoration: InputDecoration(
                           hintText: '0',

                             border:InputBorder.none

                         ),
                         onChanged: (value){
                           if(value.length==1){
                             FocusScope.of(context).nextFocus();
                           }
                         },
                         style: Theme.of(context).textTheme.titleLarge,
                         keyboardType: TextInputType.number,
                         textAlign: TextAlign.center,
                         inputFormatters: [
                           LengthLimitingTextInputFormatter(1),
                           FilteringTextInputFormatter.digitsOnly
                         ],
                       ),
                     )
                   ],
                 ),
                 Container(
                   width: 200,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20)
                   ),
                   margin: EdgeInsets.only(left: 100,top: 70),
                   child: ElevatedButton(onPressed: () {
                     if (formKey1.currentState!.validate()) {
                       ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(
                             content: Text('OTP is varified ')),
                       );
                     }
                     else {
                       ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(
                             content: Text('Resend OTP')),
                       );
                     }
                   },
                       child: Text('SUBMIT',style: TextStyle(color: Colors.grey),)),
                 )
               ],
             ),

         )

        ],
      ),
    );
  }
}
