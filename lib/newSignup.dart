import 'package:flutter/material.dart';
import 'package:signup_clone/signUp.dart';
class NewSign extends StatefulWidget {
  const NewSign({super.key});

  @override
  State<NewSign> createState() => _NewSignState();
}

class _NewSignState extends State<NewSign> {
  @override
  void initState() {
   gotLogin();
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(fit: BoxFit.fill,
                      image: AssetImage('assets/cafee.jpg'))
              ),
            ),
            TextButton(onPressed: (){
            },
                child: Text(
                    'App cafe',
                    style:TextStyle(color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700)
                )
            )
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  Future<void>gotLogin()async{
    Future.delayed(Duration(seconds: 4));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUp()),
    );
  }
}
