import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/api/fetchapi.dart';
import 'package:myapp/screens/homepage/circle.dart';
import 'package:myapp/screens/homepage/plan_workout_details.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/model/information.dart';
class Plan extends StatefulWidget {
  const Plan({Key? key}) : super(key: key);

  @override
  State<Plan> createState() => _PlanState();
}

class _PlanState extends State<Plan> {
  FetchApi fetchdata = FetchApi();
  static List<SPlan> splanlist =[];

  Future<List<SPlan>> getdata()
  async {
    final response = await http.get(Uri.parse('http://192.168.43.56:8000/api/show1'));
    var data = json.decode(response.body.toString());
    if (response.statusCode==200)
    {
      for (Map i in data)
      {

        SPlan splan = SPlan(image: i["image"], name: i['name'], description: i['description'], gif1: i['gif1'], gif2: i['gif2'], gif3: i['gif3'], gif4: i['gif4'], gif5: i['gif5'], gif6: i['gif6'], gif7: i['gif7'], gif8: i['gif8'], gif9: i['gif9'], gif10: i['gif10'], exercise1: i['exercise1'], exercise2: i['exercise2'], exercise3: i['exercise3'], exercise4: i['exercise4'], exercise5: i['exercise5'], exercise6: i['exercise6'], exercise7: i['exercise7'], exercise8: i['exercise8'], exercise9: i['exercise9'], exercise10: i['exercise10'], instructions1: i['instructions1'], instructions2: i['instructions2'], instructions3: i['instructions3'], instructions4: i['instructions4'], instructions5: i['instructions5'], instructions6: i['instructions6'], instructions7: i['instructions7'], instructions8: i['instructions8'], instructions9: i['instructions9'], instructions10: i['instructions10']);
        splanlist.add(splan);
      }
      return splanlist;
    }else{
      return splanlist;
    }




    /*var headers = {
      'Accept': 'application/json'
    };
    var request = http.MultipartRequest('GET', Uri.parse('http://192.168.43.56:8000/api/show1'));

    request.headers.addAll(headers);



    http.StreamedResponse response = await request.send();
    print(response.statusCode);

    var data = jsonDecode(response.reasonPhrase.toString());
    print('hon');
    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      for (Map i in data)
      {

        SPlan splan = SPlan(image: i["image"], name: i['name'], description: i['description'], gif1: i['gif1'], gif2: i['gif2'], gif3: i['gif3'], gif4: i['gif4'], gif5: i['gif5'], gif6: i['gif6'], gif7: i['gif7'], gif8: i['gif8'], gif9: i['gif9'], gif10: i['gif10'], exercise1: i['exercise1'], exercise2: i['exercise2'], exercise3: i['exercise3'], exercise4: i['exercise4'], exercise5: i['exercise5'], exercise6: i['exercise6'], exercise7: i['exercise7'], exercise8: i['exercise8'], exercise9: i['exercise9'], exercise10: i['exercise10'], instructions1: i['instructions1'], instructions2: i['instructions2'], instructions3: i['instructions3'], instructions4: i['instructions4'], instructions5: i['instructions5'], instructions6: i['instructions6'], instructions7: i['instructions7'], instructions8: i['instructions8'], instructions9: i['instructions9'], instructions10: i['instructions10']);
        splanlist.add(splan);
      }
      return splanlist;
      //return json.decode(response.stream.toString());
    }
    else {
      print(response.reasonPhrase);
      return splanlist;
    }*/
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 2000,
          padding: const EdgeInsets.only(top: 10 , left: 30 , right: 30),
          child: SingleChildScrollView(
            child: Column(
                children: [
                  const Text('YOUR PLAN' ,
                    style: TextStyle( fontSize: 30 ,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700 ,
                        color: Colors.black45) ,),
                  const SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.blueGrey , Colors.deepOrangeAccent],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(80),
                        ),
                        boxShadow:[
                          BoxShadow(
                            offset: Offset(5, 5),
                            blurRadius: 20,
                            color: Colors.grey,
                          )
                        ]
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(top:25 ,left: 20 , right: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:   [
                            const Text('Next workout' , style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                            const SizedBox(height: 5,),
                            const Text('Leg Toning' ,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),),
                            const SizedBox(height: 5,),
                            const Text('and Glutes workout' ,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),),
                            const SizedBox(height: 25,),
                            Row(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Icon(Icons.timer , color: Colors.white, size: 20,),
                                    const SizedBox(width: 10,),
                                    const Text('30 mins' , style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                    const SizedBox(width: 170,),
                                    Container(
                                        decoration: const BoxDecoration(
                                            boxShadow: [BoxShadow(
                                                blurRadius: 10,
                                                offset: Offset(4,8),
                                                color: Colors.black26
                                            ),]
                                        ),
                                        child:
                                        const Icon(Icons.play_circle_fill, color: Colors.white, size: 50,))
                                  ],
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  SingleChildScrollView(
                    child: SizedBox(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              boxShadow:const [
                                BoxShadow(
                                  offset: Offset(5, 5),
                                  blurRadius: 20,
                                  color: Colors.grey,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/tt.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            height: 100,
                            margin: const EdgeInsets.only(left: 150 , top: 30),
                            child: Column(
                              children: const [
                                Text('You are doing great!' , style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),),
                                SizedBox(height: 5,),
                                Text('keep it up',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 25,),
                                Text('stick to your plan',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Text(' Your Customized Workouts: ' ,
                    style: TextStyle( fontSize: 20 ,
                        fontWeight: FontWeight.w500 ,
                        color: Colors.black45) ,),
                  const SizedBox(height: 30,),

                  SizedBox(
                    height: 600,
                    child: FutureBuilder(
                      future: getdata(),
                      builder: (context,AsyncSnapshot<List<SPlan>> snapshot) {

                        return ListView.builder(
                          itemCount: splanlist.length,
                          itemBuilder: (context, index) {
                            return Workout(title: snapshot.data![index].name.toString(),  img:snapshot.data![index].image.toString(), description: snapshot.data![index].description.toString(),
                              gif1: snapshot.data![index].gif1.toString(),gif2: snapshot.data![index].gif2.toString(), gif3: snapshot.data![index].gif3.toString(), gif4: snapshot.data![index].gif4.toString(), gif5: snapshot.data![index].gif5.toString(), gif6: snapshot.data![index].gif6.toString(), gif7: snapshot.data![index].gif7.toString(), gif8: snapshot.data![index].gif8.toString(), gif9: snapshot.data![index].gif9.toString(),gif10: snapshot.data![index].gif10.toString(),
                              exercise1: snapshot.data![index].exercise1.toString(), exercise2: snapshot.data![index].exercise2.toString(), exercise3: snapshot.data![index].exercise3.toString(), exercise4:snapshot.data![index].exercise4.toString(), exercise5: snapshot.data![index].exercise5.toString(), exercise6: snapshot.data![index].exercise6.toString(), exercise7: snapshot.data![index].exercise7.toString(), exercise8: snapshot.data![index].exercise8.toString(), exercise9: snapshot.data![index].exercise9.toString(), exercise10: snapshot.data![index].exercise10.toString(),
                              instructions1:snapshot.data![index].instructions1.toString(), instructions2:snapshot.data![index].instructions2.toString(), instructions3: snapshot.data![index].instructions3.toString(), instructions4: snapshot.data![index].instructions4.toString(), instructions5: snapshot.data![index].instructions5.toString(), instructions6: snapshot.data![index].instructions6.toString(), instructions7: snapshot.data![index].instructions7.toString(), instructions8: snapshot.data![index].instructions8.toString(), instructions9: snapshot.data![index].instructions9.toString(), instructions10:snapshot.data![index].instructions10.toString(),
                            );
                            /*Workout(title: projectSnap.data![index]['name'],  img: projectSnap.data![index]['image'], description: projectSnap.data![index]['description'],
                      gif1: projectSnap.data![index]['gif1'],gif2: projectSnap.data![index]['gif2'],gif3: projectSnap.data![index]['gif3'],gif4: projectSnap.data![index]['gif4'],gif5: projectSnap.data![index]['gif5'],gif6: projectSnap.data![index]['gif6'],gif7: projectSnap.data![index]['gif7'],gif8: projectSnap.data![index]['gif8'],gif9: projectSnap.data![index]['gif9'],gif10: projectSnap.data![index]['gif10'],
                      exercise1: projectSnap.data![index]['exercise1'], exercise2: projectSnap.data![index]['exercise2'],exercise3: projectSnap.data![index]['exercise3'],exercise4: projectSnap.data![index]['exercise4'],exercise5: projectSnap.data![index]['exercise5'],exercise6: projectSnap.data![index]['exercise6'],exercise7: projectSnap.data![index]['exercise7'],exercise8: projectSnap.data![index]['exercise8'],exercise9: projectSnap.data![index]['exercise9'],exercise10: projectSnap.data![index]['exercise10'],
                      instructions1: projectSnap.data![index]['instructions1'], instructions2:projectSnap.data![index]['instructions2'],instructions3: projectSnap.data![index]['instructions3'],instructions4: projectSnap.data![index]['instructions4'],instructions5: projectSnap.data![index]['instructions5'],instructions6: projectSnap.data![index]['instructions6'],instructions7: projectSnap.data![index]['instructions7'],instructions8: projectSnap.data![index]['instructions8'],instructions9: projectSnap.data![index]['instructions9'],instructions10: projectSnap.data![index]['instructions10'],
                      );*/
                          },
                        );
                      },

                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );


  }

}



class Workout extends StatelessWidget {
  //const ({Key? key})
  final String title;
  final String? img;
  final String? description;
  final String gif1;
  final String gif2;
  final String gif3;
  final String gif4;
  final String gif5;
  final String gif6;
  final String gif7;
  final String gif8;
  final String gif9;
  final String gif10;
  final String exercise1;
  final String exercise2;
  final String exercise3;
  final String exercise4;
  final String exercise5;
  final String exercise6;
  final String exercise7;
  final String exercise8;
  final String exercise9;
  final String exercise10;
  final String instructions1;
  final String instructions2;
  final String instructions3;
  final String instructions4;
  final String instructions5;
  final String instructions6;
  final String instructions7;
  final String instructions8;
  final String instructions9;
  final String instructions10;



  const Workout({
    Key? key,
    required this.title,
    required this.img,
    required this.description,
    required this.gif1,
    required this.gif2,
    required this.gif3,
    required this.gif4,
    required this.gif5,
    required this.gif6,
    required this.gif7,
    required this.gif8,
    required this.gif9,
    required this.gif10,
    required this.exercise1,
    required this.exercise2,
    required this.exercise3,
    required this.exercise4,
    required this.exercise5,
    required this.exercise6,
    required this.exercise7,
    required this.exercise8,
    required this.exercise9,
    required this.exercise10,
    required this.instructions1,
    required this.instructions2,
    required this.instructions3,
    required this.instructions4,
    required this.instructions5,
    required this.instructions6,
    required this.instructions7,
    required this.instructions8,
    required this.instructions9,
    required this.instructions10,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10 , bottom: 10),
      child: InkWell(
        onTap: () {
          print('-1');
          circ.zero();
          Navigator.pushNamed(context,
              "/plan_workout_details",
              arguments: Workout( title: title,
                gif1: gif1, gif2:  gif2, gif3: gif3 , gif4: gif4, gif5: gif5, gif6: gif6, gif7: gif7, gif8: gif8, gif9: gif9, gif10: gif10,
                exercise1: exercise1 ,exercise2: exercise2 ,exercise3: exercise3 ,exercise4: exercise4 ,exercise5: exercise5 ,exercise6:exercise6 ,exercise7: exercise7 ,exercise8: exercise8, exercise9: exercise9 ,exercise10: exercise10,
                instructions1: instructions1 ,instructions2: instructions2 ,instructions3: instructions3 ,instructions4: instructions4 ,instructions5: instructions5 ,instructions6: instructions6 ,instructions7: instructions7 ,instructions8: instructions8 ,instructions9: instructions9 ,instructions10: instructions10 ,
                description: '', img: '',

              ));
          print('+1');
        },
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30),),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(5, 5),
                blurRadius: 20,
                color: Colors.grey,
              ),
            ],
          ),
          margin:const EdgeInsets.only(left: 18 , right: 18),
          child: Row(
            children:  [
              SizedBox(
                height: 120,
                width: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset( img!)),
              ),
              const SizedBox(width: 20) ,
              Column(
                children: [
                  GradientText(title,
                      style: const TextStyle(color: Colors.blueGrey,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                      colors : const [
                        Colors.blueGrey,
                        Colors.deepOrangeAccent
                      ]),
                  Text(description!, style: const TextStyle(fontSize: 18),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class SPlan
{
  final String image;
  final String name;
  final String description;
  final String gif1;
  final String gif2;
  final String gif3;
  final String gif4;
  final String gif5;
  final String gif6;
  final String gif7;
  final String gif8;
  final String gif9;
  final String gif10;
  final String exercise1;
  final String exercise2;
  final String exercise3;
  final String exercise4;
  final String exercise5;
  final String exercise6;
  final String exercise7;
  final String exercise8;
  final String exercise9;
  final String exercise10;
  final String instructions1;
  final String instructions2;
  final String instructions3;
  final String instructions4;
  final String instructions5;
  final String instructions6;
  final String instructions7;
  final String instructions8;
  final String instructions9;
  final String instructions10;





  SPlan({required this.image, required this.name, required this.description, required this.gif1, required this.gif2, required this.gif3, required this.gif4, required this.gif5, required this.gif6, required this.gif7, required this.gif8, required this.gif9, required this.gif10, required this.exercise1, required this.exercise2, required this.exercise3, required this.exercise4, required this.exercise5, required this.exercise6, required this.exercise7, required this.exercise8, required this.exercise9, required this.exercise10, required this.instructions1, required this.instructions2, required this.instructions3, required this.instructions4, required this.instructions5, required this.instructions6, required this.instructions7, required this.instructions8, required this.instructions9, required this.instructions10});

/*factory Plan.fromJson(Map<String,dynamic> jsonData)
  {
    return Plan(

    );
  }*/
}