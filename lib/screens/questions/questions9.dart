import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/questions/questions0.dart';
class Questions9 extends StatefulWidget {
  const Questions9({Key? key}) : super(key: key);

  @override
  _Questions9State createState() => _Questions9State();
}

class _Questions9State extends State<Questions9> {
  bool isSelected = false ;
  int? _value ;
  final List water = ["I only drink soda or coffee" , "2 glasses" ,"3 to 6 glasses" , "More than 6 glasses" ];
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
            const SizedBox(height: 20,),
            const Center(
              child: Text(' Whats your water intake? ' ,
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
                  water.length,
                      (int index) {
                    return
                      Column(
                        children: [
                          ChoiceChip(
                            padding: const EdgeInsets.all(20),
                            backgroundColor: Colors.blueGrey,
                            label: Text(water[index]  ,
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
                info.userwater_intake(_value);
                Navigator.pushNamed(context, '/questions10');
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
