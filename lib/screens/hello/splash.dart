
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;
  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), () {
      Navigator.pushNamed(context, '/welcome');
    });
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blueGrey,
              Colors.deepOrangeAccent,
            ],
          )
        ),

        child: const Center(
          child: Icon(
            Icons.fitness_center ,
            color: Colors.white,
            size: 100,
          ),
        ),
      ),
    );
  }
}
