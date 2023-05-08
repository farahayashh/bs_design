import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/model/information.dart';


information info = information();

class Questions0 extends StatefulWidget {
  const Questions0({Key? key}) : super(key: key);
  @override
  _Questions0State createState() => _Questions0State();
}

class _Questions0State extends State<Questions0> {
  double _heightofuser = 100.0 ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "About you",
            textAlign: TextAlign.justify,
          ),
          backgroundColor: Colors.blueGrey,

        ),
        body:
        Column(
          children: [
            const SizedBox(height: 80,),
           const Center(
             child: Text('  Enter your height ' ,
                 style: TextStyle(
                 color: Colors.blueGrey,
                 fontSize: 30,
                 fontWeight: FontWeight.bold),),
           ),
            const SizedBox(height: 20,),
           Container(
             padding: const EdgeInsets.all(16),
             child: Slider(
               min: 100.0,
               max: 250.0,
               onChanged: (height) {
                 setState(() {
                   _heightofuser = height ;
                 });
               }, value: _heightofuser ,
               divisions: 100 ,
               activeColor: Colors.blueGrey ,
               label: "$_heightofuser" ,
             ),
           ),
            Text("$_heightofuser cm" ,
                style: const TextStyle(color: Colors.blueGrey,
                fontWeight: FontWeight.w900,
                fontSize: 18),
            ),
            const SizedBox(height: 120,),

              ElevatedButton(
                onPressed: () {
                  info.userheight(_heightofuser);
                  Navigator.pushNamed(context, '/questions2');
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    padding: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: const Text(
                  "Next",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),


        ]
        ));
  }
}
