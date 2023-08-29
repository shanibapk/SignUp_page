import 'package:flutter/material.dart';
import 'package:signup_clone/phoneNo.dart';
import 'package:signup_clone/signIn.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final formKey = GlobalKey<FormState>();
  bool isChecked = false;
  bool _obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.fill,
              image: AssetImage('assets/Gr.jpg'))
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 140,
                  child: Text('Create your acoount',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w800,fontSize: 26,fontStyle: FontStyle.italic,
                  decoration:TextDecoration.underline,decorationColor: Colors.white),),
                ),
                Positioned(
                  top: 80,
                    left: 100,
                    child: Text('Name',style: TextStyle(color: Colors.white,fontSize: 18),)),
                Positioned(
                    top: 155,
                    left: 100,
                    child: Text('Email',style: TextStyle(color: Colors.white,fontSize: 18),)),
                Positioned(
                    top: 233,
                    left: 100,
                    child: Text('Password',style: TextStyle(color: Colors.white,fontSize: 18),)
                ),
                Positioned(
                    top: 313,
                    left: 100,
                    child: Text('Confirm Password',style: TextStyle(color: Colors.white,fontSize: 18),)
                ),
                Positioned(
                    top: 5,
                    left: 430,
                    child: Container(
                      height: 23,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(9),
                          
                        ),
                       

                        child: Align(
                          alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {  },
                              child: Text('SignIn',style: TextStyle(color: Colors.black,fontSize: 15)),)
                        )
                    )
                ),
                Positioned(
                    top: 5,
                    left: 360,
                    child: Container(
                        height: 23,
                        width: 67,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(9)
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {  },
                              child: Text('Login',style: TextStyle(color: Colors.black,fontSize: 15)),)
                        )
                    )
                ),

                Positioned(
                    top: 410,
                    left: 134,
                    child: Text('By signing up you agree to our                    and',style: TextStyle(color: Colors.white,fontSize: 15),)
                ),
                Positioned(
                    top: 405,
                    left: 335,
                    child: TextButton(
                      onPressed: () {  },
                      child: Text('conditions',style: TextStyle(color: Colors.blue,fontSize: 15)),)
                ),
                Positioned(
                    top: 420,
                    left: 130,
                    child: TextButton(
                      onPressed: () {  },
                      child: Text('privacy policy',style: TextStyle(color: Colors.blue,fontSize: 15)),)
                ),
                Form(
                   key: formKey,
                     child: Column(
                       children: [
                         Container(
                           decoration: BoxDecoration(
                               color: Colors.white.withOpacity(0.3),
                             borderRadius: BorderRadius.circular(20)
                           ),
                           margin: EdgeInsets.only(top: 105,left: 100),
                           width: 340,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: TextFormField(
                               validator: (value) {
                                 if (value!.isEmpty) {
                                   // return 'name is required';
                                 }
                                 return null;
                               },
                               decoration: InputDecoration(
                                 border: InputBorder.none,
                                   hintText: 'enter your name'
                               ),
                             ),
                           ),
                         ),

                         Container(
                           decoration: BoxDecoration(
                               color: Colors.white.withOpacity(0.3),
                               borderRadius:BorderRadius.circular(20)
                           ),
                           margin: EdgeInsets.only(top: 28,left: 100),
                           width: 340,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 15),
                             child: TextFormField(
                               validator: (value) {
                                 if (value!.isEmpty ||
                                     !RegExp(r'^[a-z A-Z @.]+$').hasMatch(value)) {
                                   // return 'email is required';
                                 }
                                 return null;
                               },
                               decoration: InputDecoration(
                                 border: InputBorder.none,
                                   hintText: 'enter your email',
                                  suffixIcon: Icon(Icons.account_circle_sharp)
                               ),
                             ),
                           ),
                         ),
                         Container(
                           decoration: BoxDecoration(
                             color: Colors.white.withOpacity(0.3),
                             borderRadius:BorderRadius.circular(20)
                           ),
                           margin: EdgeInsets.only(top: 30,left: 100),
                           width: 340,
                           height: 50,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: TextFormField(
                               validator: (value) {
                                 if (value!.isEmpty) {
                                   // return 'enter your correct password';
                                 }
                                 return null;
                               },
                               obscureText: _obscureText,
                              // maxLength: 9,
                               obscuringCharacter: ".",
                               decoration: InputDecoration(
                                 border: InputBorder.none,
                                   hintText: 'enter your password',
                                suffixIcon: new GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _obscureText=!_obscureText;
                                    });
                                  },
                                  child: new Icon(Icons.visibility
                                  ),
                                )
                               ),
                             ),
                           ),
                         ),
                         Container(
                           decoration: BoxDecoration(
                               color: Colors.white.withOpacity(0.3),
                               borderRadius:BorderRadius.circular(20)
                           ),
                           margin: EdgeInsets.only(top: 30,left: 100),
                           width: 340,
                           height: 50,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: TextFormField(
                               validator: (value) {
                                 if (value!.isEmpty) {
                                   // return 'enter your correct password';
                                 }
                                 return null;
                               },
                               obscureText: _obscureText,
                               //maxLength: 9,
                               obscuringCharacter: ".",
                               decoration: InputDecoration(
                                   border: InputBorder.none,
                                   hintText: 'confirm your password',
                                   suffixIcon: new GestureDetector(
                                     onTap: (){
                                       setState(() {
                                         _obscureText=!_obscureText;
                                       });
                                     },
                                     child: new Icon(Icons.visibility
                                     ),
                                   )
                               ),
                             ),
                           ),
                         ),

                         Container(
                           width: 200,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20)
                           ),
                           margin: EdgeInsets.only(left: 100,top: 70),
                           child: ElevatedButton(onPressed: () {

                             if (formKey.currentState!.validate()) {
                               ScaffoldMessenger.of(context).showSnackBar(
                                 const SnackBar(
                                     content: Text('informations are validated ')),
                               );
                             }
                             else {
                               ScaffoldMessenger.of(context).showSnackBar(
                                 const SnackBar(
                                     content: Text('please enter valid information')),
                               );
                             }
                           },
                               child: Text('SIGN UP',style: TextStyle(color: Colors.grey),)),
                         )
                       ],

                     )

                 ),
                Positioned(
                  top: 500,
                    left: 210,
                    child: Text('- Or you can also -',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)
                ),
                Container(
                  margin: EdgeInsets.only(top: 540,left: 130),
                  width: 300,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: [
                      Container(
                       margin: EdgeInsets.only(left: 10),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(fit: BoxFit.fill,
                          image: AssetImage('assets/Google.png')),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('SIGN UP WITH GOOGLE ACCOUNT',style: TextStyle(color: Colors.grey),),
                      )

                    ],
                  ),
                ),



                Positioned(
                  top: 650,
                    left: 170,
                    child: Text('Already have an account?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)
                ),
                Positioned(
                    top: 645,
                    left: 330,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
                      child: Text('Login',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,fontSize: 16)),)
                ),
                Container(
                  margin: EdgeInsets.only(top: 600,left: 130),
                  width: 300,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 30,
                        width: 30,
                        child: Icon(Icons.phone,color: Colors.grey,),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PhoneNo()),
                            );
                          },
                          child: Text('SIGN UP WITH PHONE NUMBER',style: TextStyle(color: Colors.grey)),),
                      )
                    ],
                  ),
                ),
                 Positioned(
                   top: 410,
                   left: 105,
                   child: Checkbox(
                     activeColor: Colors.blue,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                 ),


              ],

            ),


          ),
          


        ],
      ),

    );
  }
}
