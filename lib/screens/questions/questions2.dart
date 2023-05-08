import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/questions/questions0.dart';
class Questions2 extends StatefulWidget {
  const Questions2({Key? key}) : super(key: key);

  @override
  _Questions2State createState() => _Questions2State();
}

class _Questions2State extends State<Questions2> {
  double _weightofuser = 50;
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
    child: Text('  Enter your weight ' ,
    style: TextStyle(
    color: Colors.blueGrey,
    fontSize: 30,
    fontWeight: FontWeight.bold),),
    ),
    const SizedBox(height: 20,),
    Container(
    padding: const EdgeInsets.all(16),
    child: Slider(
    min: 40.0,
    max: 160.0,
    onChanged: (weight) {
    setState(() {
    _weightofuser = weight ;
    });
    }, value: _weightofuser ,
    divisions: 100 ,
    activeColor: Colors.blueGrey ,
    label: "$_weightofuser" ,
    ),
    ),
    Text("$_weightofuser kg" ,
    style: const TextStyle(color: Colors.blueGrey,
    fontWeight: FontWeight.w900,
    fontSize: 18),
    ),
    const SizedBox(height: 120,),

    ElevatedButton(
    onPressed: () {

      info.userweight(_weightofuser);
    Navigator.pushNamed(context, '/questions3');
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
    );
  }
}
