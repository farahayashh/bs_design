import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/questions/questions0.dart';
class Questions7 extends StatefulWidget {
  const Questions7({Key? key}) : super(key: key);

  @override
  _Questions7State createState() => _Questions7State();
}

class _Questions7State extends State<Questions7> {
  bool isSelected = false ;
  int? _value ;
  final List typical = ["mostly walking and active" , "mostly on feet" ,"mostly seated" , "at home and mostly inactive"];
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
                child: Text(' What does your typical day look like ? ' ,
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                height: 226,
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  children: List<Widget>.generate(
                    typical.length,
                        (int index) {
                      return
                        Column(
                          children: [
                            ChoiceChip(
                              padding: const EdgeInsets.all(20),
                              backgroundColor: Colors.blueGrey,
                              label: Text(typical[index]  ,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
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
              const SizedBox(height: 100,),

              ElevatedButton(
                onPressed: () {
                  info.usertypical_day(_value);
                  Navigator.pushNamed(context, '/questions8');
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
