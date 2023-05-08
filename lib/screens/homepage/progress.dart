
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/counter_provider.dart';
import 'package:provider/provider.dart';
import 'circle.dart';

Change c = Change();



class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation<double> _animation;
  double maxProgress = 100;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(milliseconds:3000));
    _animation = Tween<double>(begin:0 ,end : maxProgress).animate(_animationController)
      ..addListener(() {
        setState(() {

        });
      });
  }
  int _counter = c.getcoun();

  inc()
  {
    setState(() {
      _counter++;
      c.setcoun(_counter);
    });
  }
  de()
  {
    if(_counter>0) {
      setState(() {
        _counter--;
        c.setcoun(_counter);
      });
    }else{}
  }
  ze()
  {
    setState(() {
      _counter=0;
      c.setcoun(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: getBody(),
    );
  }
  getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Welcome Back!' , style: TextStyle(
                        fontSize: 16 ,
                        color: Colors.black
                      ),),
                      SizedBox(height: 5,),
                      Text('Check your progress' , style: TextStyle(
                          fontSize: 20 ,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.09),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Center(child: Icon(Icons.notifications),),
                  )
                ],
              ),
              const SizedBox(height: 30,),
              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [Colors.deepOrangeAccent , Colors.white],
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Padding(padding: const EdgeInsetsDirectional.all(20),
                child: Row(
                  children: [
                    Flexible(child: SizedBox(
                      width: (size.width),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          const Text("BMI (Body Mass Index)" ,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),),
                          const Text("You have a normal weight" ,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            ),),
                          Container(
                            width: 95,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(5, 2),
                                  blurRadius: 20,
                                  color: Colors.white,
                                ),
                              ],
                              gradient: const LinearGradient(colors: [Colors.white , Colors.blueGrey],
                                begin: Alignment.bottomLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                            child: const Center(
                              child: Text("View more" ,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),),
                    const SizedBox(width: 20,),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [Colors.white , Colors.blueGrey],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: const Center(
                        child:  Text('20.3' , style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                      ),
                    )
                  ],
                ),),
              ),
              const SizedBox(height: 30,),
              const Text("Activity Status" ,
                style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
              SafeArea(
                child: Center(
                  child: CustomPaint(
                    foregroundPainter: CircleProgress(_animation.value),
                    child:  Container(
                      width: 300,
                      height: 300,
                      //color: Colors.blue,
                      child: GestureDetector(
                          onTap: (){
                            if (_animation.value == maxProgress)
                            {
                              _animationController.reverse();
                            }
                            else {
                              _animationController.forward();
                            }
                          },

                          child: Center(child: Text('${circ.count}', style: TextStyle(fontSize: 50),))),
                    ),
                  ),
                ) ,
              ),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20 , right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Today Target' , style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),),
                      InkWell(
                        onTap:(){
                          Navigator.pushNamed(context, '/plan');
                        },
                        child: Container(
                          width: 70,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(colors: [Colors.deepOrangeAccent , Colors.white],
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                          child: const Center(
                            child: Text("Check" , style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Center(
                child: const Text("Track your Water Intake" ,
                  style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold , color: Colors.deepOrangeAccent),),
              ),
              const SizedBox(height: 15,),
               Center(
                 child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(35.0),
                          child: Image.asset('assets/images/water.jpg')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton(
                            onPressed: ()
                            {
                              de();
                            },
                            backgroundColor: Colors.deepOrangeAccent,
                            tooltip: 'Reduction',
                            child: const Icon(Icons.remove),
                          ),
                          Text(
                            '${_counter}', style: const TextStyle(
                              fontSize: 25
                          ),),
                          FloatingActionButton(
                            onPressed: ()
                            {
                              inc();
                            },
                            tooltip: 'Increment',
                            backgroundColor: Colors.deepOrangeAccent,
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),

                    ],
                  ),
              ),
               ),
              SizedBox(height: 15),
              InkWell(
                onTap: (){
                  ze();
                },
                child: Center(
                  child: Container(
                    width: 170,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(colors: [Colors.deepOrangeAccent , Colors.white],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: const Center(
                      child: Text("Refresh Water" , style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


/*
child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(35.0),
                          child: Image.asset('assets/images/water.jpg')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton(
                            onPressed: _reductionCounter,
                            backgroundColor: Colors.deepOrangeAccent,
                            tooltip: 'Reduction',
                            child: const Icon(Icons.remove),
                          ),
                          Text(
                        '$_counter', style: const TextStyle(
                            fontSize: 25
                          ),),
                          FloatingActionButton(
                             onPressed: _incrementCounter,
                             tooltip: 'Increment',
                             backgroundColor: Colors.deepOrangeAccent,
                             child: const Icon(Icons.add),
                           ),
                        ],
                      ),
                    ],
                  ),
                ),

 */