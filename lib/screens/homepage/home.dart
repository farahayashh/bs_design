import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/screens/homepage/all_exercises.dart';
import 'package:myapp/screens/homepage/food.dart';
import 'package:myapp/screens/homepage/plan.dart';
import 'package:myapp/screens/homepage/progress.dart';
import 'package:myapp/widgets/app_drawer.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activePage = 0;
  final screens = [
    const AllExercises() ,
    const Plan(),
    const Food(),
    const ProgressPage(),
  ];
  @override
  Widget build(BuildContext context) {
     var items = <Widget>[
        const Icon( Icons.sports_sharp , color: Colors.white ,size : 30),
        const Icon( Icons.next_plan_rounded , color: Colors.white,size: 30,),
        const Icon( Icons.restaurant , color: Colors.white,size: 30,),
        const Icon( Icons.assessment_sharp , color: Colors.white,size: 30,),
    ];

    return SafeArea(
      top: false, //eza ios bytla3 fo2 lhome indicator ma bytkhba t7to
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          title: const Text(
          "Home Page",
          textAlign: TextAlign.justify,
      ),
      backgroundColor: Colors.blueGrey,),

        bottomNavigationBar: CurvedNavigationBar(
          index: _activePage,
          items: items,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          color: Colors.blueGrey,
          backgroundColor: Colors.transparent,
            buttonBackgroundColor: Colors.blueGrey,
            onTap:(index) { setState(() {
              _activePage = index;
               }); },
            height: 60.0,
        ),

        endDrawerEnableOpenDragGesture: false,
        drawer: const AppDrawer(),
        body:  screens[_activePage],
      ),
    );
  }
}


/*Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: const Text(
        "Home Page",
        textAlign: TextAlign.justify,
    ),
    backgroundColor: Colors.blueGrey,),
      bottomNavigationBar:  Container(

        padding: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
        height: 80,
        color: Colors.blueGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ElevatedButton.icon(onPressed: () { Navigator.pushNamed(context, '/questions4');},
                icon: const Icon(Icons.airline_seat_individual_suite_outlined , color: Colors.blueGrey,),
                label: const Text("Exercises" , style: TextStyle(
                    color: Colors.blueGrey,),
             // style: ElevatedButton.styleFrom(primary : Colors.white),

            ),),
            ElevatedButton.icon(onPressed: () { Navigator.pushNamed(context, '/questions4');},
                icon: Icon(Icons.assignment_rounded , color: Colors.blueGrey,),
                label: Text("My Plan",style: TextStyle(
                  color: Colors.blueGrey,),
    ),),
              //style: ElevatedButton.styleFrom(primary : Colors.white),),

            ElevatedButton.icon(onPressed: () { Navigator.pushNamed(context, '/questions4');},
                icon: Icon(Icons.fifteen_mp,color: Colors.blueGrey,),
                label: Text("Food",style: TextStyle(
                       color: Colors.blueGrey,),
                ),),
              //style: ElevatedButton.styleFrom(primary : Colors.white),),
            ElevatedButton.icon(onPressed: () { Navigator.pushNamed(context, '/questions4');},
                icon: Icon(Icons.assessment_sharp,color: Colors.blueGrey,),
                label: Text("My Progress",style: TextStyle(
                  color: Colors.blueGrey,),
                ),),
              //style: ElevatedButton.styleFrom(primary : Colors.white),),
          ],
        ),
      ),
      endDrawerEnableOpenDragGesture: false,
      drawer: const AppDrawer(),
      body: Container(
        child: Text('ghgggggggggggggggghjk'),
      ),


    ) */