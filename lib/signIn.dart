import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKey13 = GlobalKey<FormState>();
  bool _obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill,
                image: AssetImage('assets/Gr.jpg'))
        ),
        child: Stack(
          children: [
            Positioned(
                top: 100,
                left: 230,
                child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),)),
            Positioned(
              top: 180,
                left: 130,
                child: Text('User Name',style: TextStyle(color: Colors.white),)),
            Positioned(
              top: 100,
             left: 20,
              child: Container(
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
            ),

            Positioned(
                top: 260,
                left: 130,
                child: Text('Password',style: TextStyle(color: Colors.white),)),
            Positioned(
              top: 250,
              left: 20,
              child: Container(
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
            ),
            Positioned(
              top: 300,
              right: 150,
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                margin: EdgeInsets.only(left: 100,top: 70),
                child: ElevatedButton(onPressed: () {

                  if (formKey13.currentState!.validate()) {
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
                    child: Text('SIGN IN',style: TextStyle(color: Colors.grey),)),
              ),
            ),
            Positioned(
                top: 320,
                right: 80,
                child: TextButton(
                  onPressed: () {  },
                  child: Text('Forgot password?',style: TextStyle(color: Colors.blue.withOpacity(0.8))),))





          ],


        ),

      ),
    );
  }
}
