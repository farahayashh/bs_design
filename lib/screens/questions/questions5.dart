import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/questions/questions0.dart';
class Questions5 extends StatefulWidget {
  const Questions5({Key? key}) : super(key: key);

  @override
  _Questions5State createState() => _Questions5State();
}

class _Questions5State extends State<Questions5> {
  bool isSelected = false ;
  int? _value ;
  final List parts = ["Arms" , "Legs" ,"Abs" , "Back"];
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
                child: Text(' What part should we focus at ? ' ,
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
                    parts.length,
                        (int index) {
                      return
                        Column(
                          children: [
                            ChoiceChip(
                              padding: const EdgeInsets.all(20),
                              backgroundColor: Colors.blueGrey,
                              label: Text(parts[index]  ,
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
                  info.userfocus_part(_value);
                  Navigator.pushNamed(context, '/questions6');
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
/*Container(
                height: 226,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: parts.length,
                  itemBuilder: (BuildContext context , index) {
                    return Padding(padding: EdgeInsets.only(right: 10),
                      child: Container(
                        height: 226,
                        width: 195,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(parts[index] ,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ),
                      ),);
                  } ,
                )

            ),
            */