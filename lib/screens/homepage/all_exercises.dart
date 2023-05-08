import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AllExercises extends StatefulWidget {
  const AllExercises({Key? key}) : super(key: key);

  @override
  State<AllExercises> createState() => _AllExercisesState();
}
List goalList = [
  {'title' : 'Beginner' , 'img' : 'assets/images/beginner.jpg' , 'route' : '/beginner'},
  {'title' : 'Intermediate' , 'img' : 'assets/images/intermediate.jpg' , 'route' : '/intermediate'},
  {'title' : 'Advanced' , 'img' : 'assets/images/advanced.jpg' , 'route' : '/advanced'},
];


class _AllExercisesState extends State<AllExercises> {

@override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .50,  //height of the container is 50% of our total height
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              gradient:  LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blueGrey,
                  Colors.deepOrangeAccent,
                ],
              )
            ),
             ),
           SingleChildScrollView(
             child: SizedBox(
               height: 1100,
               child: Column(
                children: [
                  const SizedBox(height: 20,),
                   const Text('ALL EXERCISES' ,
                    style: TextStyle(color: Colors.white ,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),),
                  const SizedBox(height: 30,),
                  Container(
                      height: 50,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20),),
                        color: Colors.blueGrey,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 5),
                            blurRadius: 20,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text('Focus Part' ,
                          style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold , color: Colors.white),),
                      )
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 630,
                    child: GridView.count(
                      crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 20,
                    children: const [
                      CategoryCard(title: 'Full Body', img: 'assets/images/fullbody.jpg' , route: '/fullbody',),
                      CategoryCard(title: 'Core', img: 'assets/images/abs.jpg' , route: '/core',),
                      CategoryCard(title: 'Legs', img: 'assets/images/legs.jpg' , route: '/legs',),
                      CategoryCard(title: 'Arms', img: 'assets/images/arms.jpg' , route: '/arms',),
                      CategoryCard(title:'Back', img: "assets/images/glutes.jpg" , route: '/back',),
                      CategoryCard(title: 'Stretching', img: 'assets/images/stretching.jpg' , route: '/stretching',),
                    ],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    height: 50,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20),),
                        color: Colors.blueGrey,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 5),
                            blurRadius: 20,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text('Intensity' ,
                    style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold , color: Colors.white),),
                      )
                  ),
                  const SizedBox(height: 30,),
               SizedBox(//color: Colors.red,
                 height: 180.0,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   shrinkWrap: true,
                   itemCount: 3,
                   itemBuilder: (context , index) {
                     return GoalCategoryScroller(title: goalList[index]["title"], img: goalList[index]["img"] , route: goalList[index]["route"],);
                   },

                 ),),
               ],
          ),
             ),
           ),
        ],
      ),
    );
  }
}

class CategoryCard  extends StatelessWidget {
  //const ({Key? key})
   final String title;
   final String? img;
   final String route;
    const CategoryCard({
   Key? key,
    required this.title,
        required this.img,
      required this.route,
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context,route);},
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
      child: Column(
      children:  [
        Image.asset( img!,
        height: 120 ,
      ),
        GradientText(title,
            style: const TextStyle(color: Colors.blueGrey,
                fontSize: 30,
                fontWeight: FontWeight.bold),
            colors : const [
              Colors.blueGrey,
              Colors.deepOrangeAccent
            ]),
  ],
  ),
  ),
    );
  }
}

class GoalCategoryScroller  extends StatelessWidget {
  //const ({Key? key})
  final String title;
  final String? img;
  final String route;
  const GoalCategoryScroller({
    Key? key,
    required this.title,
    required this.img,
    required this.route,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
      Navigator.pushNamed(context,route);
      },
      child: Container(
        height: 180,
        width: 180,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30),),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 20,
              color: Colors.black,
            ),
          ],
        ),
        margin:const EdgeInsets.only(left: 18 ),
        child: Column(
          children:  [
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset( img!,
                height: 100 ,

              ),
            ),
            const SizedBox(height: 20,),
            GradientText(title,
                style: const TextStyle(color: Colors.blueGrey,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                colors : const [
                  Colors.blueGrey,
                  Colors.deepOrangeAccent
                ]),

          ],
        ),
      ),
    );
  }
}


