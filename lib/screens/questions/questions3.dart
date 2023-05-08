import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/questions/questions0.dart';

class Questions3 extends StatefulWidget {
  const Questions3({Key? key}) : super(key: key);

  @override
  _Questions3State createState() => _Questions3State();
}

class _Questions3State extends State<Questions3> {
  bool isSelected = false ;
  int? _value ;
  final List goals = ["to lose weight " , "to gain weight " , "to stay healthy"];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              child: Text('  What is your goal ? ' ,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 40,),
            Container(
              margin: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              height: 226,
              width: MediaQuery.of(context).size.width,
                child: Wrap(
                  children: List<Widget>.generate(
                    goals.length,
                        (int index) {
                      return
                      Column(
                        children: [
                          ChoiceChip(
                            padding: const EdgeInsets.all(20),
                            backgroundColor: Colors.blueGrey,
                            label: Text(goals[index]  ,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),),
                            selected: _value == index,
                            selectedColor: Colors.grey,
                            selectedShadowColor: Colors.yellow,
                            visualDensity: VisualDensity.standard,
                            onSelected: (bool selected) {
                              setState(() {
                                _value = selected ? index : null;
                              });
                            },
                          ),
                          const Divider(
                          thickness: 10,
                            color: Colors.transparent,
                          ),
                        ],
                      );
                    },
                  ).toList(),
                ),
            ),

            const SizedBox(height: 40,),

            ElevatedButton(
              onPressed: () {
                info.usergoal(_value);
                Navigator.pushNamed(context, '/questions4');
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
          ],

      ),
    );
  }
}
