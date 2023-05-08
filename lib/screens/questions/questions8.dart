import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/questions/questions0.dart';
class Questions8 extends StatefulWidget {
  const Questions8({Key? key}) : super(key: key);

  @override
  _Questions8State createState() => _Questions8State();
}

class _Questions8State extends State<Questions8> {
  bool isSelected = false ;
  int? _value ;
  final List habits = ["I have a sweet tooth" , "I love sugary drinks" ,"I don't sleep enough" , "I enjoy fast food" , "I eat late at night" , "I smoke"];
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
              const SizedBox(height: 20,),
              const Center(
                child: Text(' Do you have any bad habits ? ' ,
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                height: 226,
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  children: List<Widget>.generate(
                    habits.length,
                        (int index) {
                      return
                        Column(
                          children: [
                            ChoiceChip(
                              padding: const EdgeInsets.all(10),
                              backgroundColor: Colors.blueGrey,
                              label: Text(habits[index]  ,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
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
              const SizedBox(height: 150,),

              ElevatedButton(
                onPressed: () {
                  info.userbad_habits(_value);
                  Navigator.pushNamed(context, '/questions9');
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
      ),
    );
  }
}
