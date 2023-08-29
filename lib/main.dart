import 'package:flutter/material.dart';
import 'package:signup_clone/httpFile.dart';
import 'package:signup_clone/location.dart';
import 'package:signup_clone/location_study.dart';
import 'package:signup_clone/newSignup.dart';
import 'package:signup_clone/otpPage.dart';
import 'package:signup_clone/phoneNo.dart';
import 'package:signup_clone/signIn.dart';
import 'package:signup_clone/signUp.dart';
import 'package:signup_clone/varPage.dart';

import 'backEnd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LocStudy(),
    );
  }
}

