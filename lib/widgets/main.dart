import 'package:myapp/screens/homepage/category.dart';
import 'package:myapp/screens/homepage/food_details.dart';
import 'package:myapp/screens/homepage/plan_workout_details.dart';
import 'package:myapp/screens/homepage/workout_details.dart';
import 'package:myapp/screens/homepage/home.dart';
import 'package:myapp/screens/questions/questions0.dart';
import 'package:myapp/screens/questions/questions10.dart';
import 'package:myapp/screens/questions/questions2.dart';
import 'package:myapp/screens/questions/questions3.dart';
import 'package:myapp/screens/questions/questions4.dart';
import 'package:myapp/screens/questions/questions5.dart';
import 'package:myapp/screens/questions/questions6.dart';
import 'package:myapp/screens/questions/questions7.dart';
import 'package:myapp/screens/questions/questions8.dart';
import 'package:myapp/screens/questions/questions9.dart';
import 'package:myapp/screens/hello/signup.dart';
import 'package:myapp/screens/hello/splash.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/hello/login.dart';
import 'package:myapp/screens/hello/welcome.dart';


void main() => runApp(MaterialApp(
      initialRoute: '/welcome',
      routes: {
        '/splash': (context) => (SplashPage(
          duration: 3,
          goToPage: WelcomePage(),
        )),
        '/login': (context) => (LoginPage()),
        '/signup': (context) => (SignUp()),
        '/welcome': (context) => (WelcomePage()),
        '/home': (context) => (HomePage()),
        '/questions0': (context) => (Questions0()),
        '/questions2': (context) => (Questions2()),
        '/questions3': (context) => (Questions3()),
        '/questions4': (context) => (Questions4()),
        '/questions5': (context) => (Questions5()),
        '/questions6': (context) => (Questions6()),
        '/questions7': (context) => (Questions7()),
        '/questions8': (context) => (Questions8()),
        '/questions9': (context) => (Questions9()),
        '/questions10': (context) => (Questions10()),
        Details.routename: (context) => (Details()),
        '/fullbody' : (context) => (FullBody()),
        '/arms' : (context) => (Arms()),
        '/core' : (context) => (Core()),
        '/back' : (context) => (Back()),
        '/legs' : (context) => (Legs()),
        '/stretching' : (context) => (Stretching()),
        '/beginner' : (context) => (Beginner()),
        '/intermediate' : (context) => (Intermediate()),
        '/advanced' : (context) => (Advanced()),
        '/workout_details' : (context) => (WorkoutDetails()),
        '/plan_workout_details' : (context) => (PlanWorkoutDetails()),


      },
      debugShowCheckedModeBanner: false,
    ));

