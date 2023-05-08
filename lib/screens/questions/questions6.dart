import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:myapp/screens/questions/questions0.dart';

class Questions6 extends StatefulWidget {
  const Questions6({Key? key}) : super(key: key);

  @override
  _Questions6State createState() => _Questions6State();
}

class _Questions6State extends State<Questions6> {
   int _ageofuser = 20 ;
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
        SingleChildScrollView(
          child: Column(
              children: [
                const SizedBox(height: 80,),
                const Center(
                  child: Text('  Enter your age ' ,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),),
                ),
                const SizedBox(height: 20,),
                NumberPicker(
                  value: _ageofuser,
                  minValue: 10,
                  maxValue: 100,
                  step: 1,
                  haptics: true,
                  onChanged: (value) => setState(() => _ageofuser = value),
                ),
                const SizedBox(height: 60,),
          Text("$_ageofuser years old" ,
              style: const TextStyle(color: Colors.blueGrey,
                  fontWeight: FontWeight.w900,
                  fontSize: 18),
          ),
                const SizedBox(height: 60,),

                ElevatedButton(
                  onPressed: () {
                    final newValue = _ageofuser + 20;
                    _ageofuser = newValue.clamp(0, 100);
                    info.userage(_ageofuser-20);
                    Navigator.pushNamed(context, '/questions7');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      padding: const EdgeInsets.all(5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(
                    "Next",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),


              ]
          ),
        ));
  }
}
/* Container(
                padding: const EdgeInsets.all(16),
                child: Slider(
                  min: 10.0,
                  max: 100.0,
                  onChanged: (age) {
                    setState(() {
                      _ageofuser = age ;
                    });
                  }, value: _ageofuser ,
                  divisions: 100 ,
                  activeColor: Colors.blueGrey ,
                  label: "$_ageofuser" ,
                ),
              ),
              Text("$_ageofuser years old" ,
                style: const TextStyle(color: Colors.blueGrey,
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),*/