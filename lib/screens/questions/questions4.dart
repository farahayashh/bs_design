import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:myapp/screens/questions/questions0.dart';
class Questions4 extends StatefulWidget {
  const Questions4({Key? key}) : super(key: key);

  @override
  _Questions4State createState() => _Questions4State();
}

class _Questions4State extends State<Questions4> {
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
          children: <Widget>[
            const SizedBox(height: 80,),
            const Center(
              child: Text(' Enter your Gender ' ,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 40,),

            _genderWidget(),


          const SizedBox(height: 40,),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/questions5');
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                padding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            child: const Text(
              "Next",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ],
        ),

      ),
    );
  }

  Widget _genderWidget() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      alignment: Alignment.center,
      child: GenderPickerWithImage(
        showOtherGender: false,
        verticalAlignedText: true,
        onChanged: (_gender) {
          info.usergender(_gender);
          print("this gender is : ${_gender}");

        },
        selectedGender: null, //By Default
        selectedGenderTextStyle:
        const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
        unSelectedGenderTextStyle:
        const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        equallyAligned: true,
        size: 100.0, // default size 40.0
        animationDuration: const Duration(seconds: 1),
        isCircular: true, // by default true
        opacityOfGradient: 0.5,
        padding: const EdgeInsets.all(8.0),
      ),
    );
          /*
      Column(
          children: [
            const SizedBox(height: 80,),
            const Center(
              child: Text(' Enter your Gender ' ,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 40,),
      Container(
          height: 226,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child:


            Container(
                height: 226,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: gender.length,
                  itemBuilder: (BuildContext context , index) {
                    return Padding(padding: const EdgeInsets.only(right: 10),
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
                              Text(gender[index] ,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ),
                      ),);
                  } ,)

            ),),
            const SizedBox(height: 40,),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/questions5');
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


      ), );*/


  }
}
