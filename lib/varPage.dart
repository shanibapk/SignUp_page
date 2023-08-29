import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:signup_clone/phoneNo.dart';
class VarPage extends StatefulWidget {
  const VarPage({super.key});

  @override
  State<VarPage> createState() => _VarPageState();
}

class _VarPageState extends State<VarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 140.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           SizedBox(
             height:200,
             width: MediaQuery.of(context).size.width,
           ),
              Text('Varification code',
             style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 8,
            ),
            RichText(text: TextSpan(
              children: [
                TextSpan(text: 'please enter the varification code that we have sent to your' ,
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,height: 1.5,color: Colors.white),
                ),
                TextSpan(text: 'SMS',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600))
              ]
            ),
            ),
            SizedBox(
              child: Pinput(
                length: 4,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                defaultPinTheme: PinTheme(
                  width: 40,
                  height: 50,

                  decoration: BoxDecoration(
                    color: Colors.grey,

                    borderRadius: BorderRadius.circular(10)
                  )
                ),

              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhoneNo()),
              );

            },
                child: Text('Resend CODE',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500),),
            ),
            SizedBox(
              height: 30,
              width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor : Colors.white,
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () {},
                  child: const Text('CONTINUE'),
                ),
            ),



          ],
        ),
      ),
        ),
    );
  }
}
