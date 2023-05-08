import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.only(left: 20, right: 20, top: 150, bottom: 60),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const Text(
    'Already have an account ? ',
        style: TextStyle(
    color: Colors.black,
    fontSize: 40,
    fontWeight: FontWeight.bold),

    ),
    const SizedBox(
    height: 60,
    ),
    Column(
    children: [
    Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),

    child: ButtonBar(
    buttonPadding:const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
    overflowDirection: VerticalDirection.down,
    children: [
    Center(
      child: ElevatedButton(
        child:const Padding(
        padding: EdgeInsets.all(20),
          child: Text(
              'Yes, I have an account',
              style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold),),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,
          onPrimary: Colors.black,
          shadowColor: Colors.grey,
          elevation: 5,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
          onPressed: () => {Navigator.pushNamed(context, '/login')},
      )
    ),
    const SizedBox(
      height: 30,
    ),
    Center(
      child:  ElevatedButton(
        child:const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
              'Not yet.',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,
          onPrimary: Colors.black,
          shadowColor: Colors.grey,
          elevation: 5,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        onPressed: () => {Navigator.pushNamed(context, '/signup')},
      )
    ),
    ],
    )
    ),

    ],
    ),
        ]
        ),
    ) );

  }
}
