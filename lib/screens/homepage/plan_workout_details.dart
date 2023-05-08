import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/homepage/circle.dart';
import 'plan.dart';


class PlanWorkoutDetails extends StatefulWidget {
  static const route_name = "/plan_workout_details";
  const PlanWorkoutDetails({Key? key}) : super(key: key);
  @override
  State<PlanWorkoutDetails> createState() => _PlanWorkoutDetailsState();
}

class _PlanWorkoutDetailsState extends State<PlanWorkoutDetails> {
  int current_step = 0;
  StepperType stepperType = StepperType.vertical;
  @override

  Widget build(BuildContext context) {
    Workout? workout = ModalRoute.of(context)!.settings.arguments as Workout?;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          workout!.title,
          textAlign: TextAlign.justify,
        ),
        backgroundColor: Colors.blueGrey,),
      body: Center(
        child: Theme(
          data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(primary: Colors.deepOrangeAccent,)
          ),
          child: Stepper(
            type: stepperType,
            physics: const ScrollPhysics(),
            steps: [
              Step(
                  state: current_step > 0 ? StepState.complete : StepState.indexed ,
                  isActive: current_step >= 0,
                  title: const Text('Exercise One' , style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),),
                  content: Column(
                    children: [
                      Text('Exercise name : ' + workout.exercise1,
                        style: const TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      Image.asset( workout.gif1 ,
                        height: 120 ,
                      ),
                      const SizedBox(height: 10,),
                      Text('instructions :' + workout.instructions1,
                        style: const TextStyle(fontSize: 17),),
                    ],
                  )
              ),
              Step(
                  state: current_step > 1 ? StepState.complete : StepState.indexed ,
                  isActive: current_step >= 1,
                  title: const Text('Exercise Two', style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),),
                  content:Column(
                    children: [
                      Text('Exercise name : ' + workout.exercise2,
                        style: const TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      Image.asset( workout.gif2 ,
                        height: 120 ,
                      ),
                      const SizedBox(height: 10,),
                      Text('instructions : ' + workout.instructions2,
                        style: const TextStyle(fontSize: 17),),

                    ],
                  )
              ),
              Step(
                  state: current_step > 2 ? StepState.complete : StepState.indexed ,
                  isActive: current_step >= 2,
                  title: const Text('Exercise Three', style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),),
                  content: Column(
                    children: [
                      Text('Exercise name : ' + workout.exercise3,
                        style: const TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 5,),
                      Image.asset( workout.gif3 ,
                        height: 120 ,
                      ),
                      const SizedBox(height: 5,),
                      Text('instructions' + workout.instructions3,
                        style: const TextStyle(fontSize: 17),),
                    ],
                  )
              ),
              Step(
                  state: current_step > 3 ? StepState.complete : StepState.indexed ,
                  isActive: current_step >= 3,
                  title: const Text('Exercise Four', style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),),
                  content: Column(
                    children: [
                      Text('Exercise name : ' + workout.exercise4,
                        style: const TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      Image.asset( workout.gif4 ,
                        height: 120 ,
                      ),
                      const SizedBox(height: 10,),
                      Text('instructions : ' + workout.instructions4,
                        style: const TextStyle(fontSize: 17),),

                    ],
                  )
              ),
              Step(
                  state: current_step > 4 ? StepState.complete : StepState.indexed ,
                  isActive: current_step >= 4,
                  title: const Text('Exercise Five', style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),),
                  content: Column(
                    children: [
                      Text('Exercise name : ' + workout.exercise5,
                        style: const TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 5,),
                      Image.asset( workout.gif5,
                        height: 120 ,
                      ),
                      const SizedBox(height: 5,),
                      Text('instructions' + workout.instructions5,
                        style: const TextStyle(fontSize: 17),),
                    ],
                  )
              ),
              Step(
                  state: current_step > 5 ? StepState.complete : StepState.indexed ,
                  isActive: current_step >= 5,
                  title: const Text('Exercise Six', style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),),
                  content: Column(
                    children: [
                      Text('Exercise name : ' + workout.exercise6,
                        style: const TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 5,),
                      Image.asset( workout.gif6,
                        height: 120 ,
                      ),
                      const SizedBox(height: 5,),
                      Text('instructions' + workout.instructions6,
                        style: const TextStyle(fontSize: 17),),
                    ],
                  )
              ),
              Step(
                  state: current_step > 6 ? StepState.complete : StepState.indexed ,
                  isActive: current_step >= 6,
                  title: const Text('Exercise Seven', style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),),
                  content: Column(
                    children: [
                      Text('Exercise name : ' + workout.exercise7,
                        style: const TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 5,),
                      Image.asset( workout.gif7,
                        height: 120 ,
                      ),
                      const SizedBox(height: 5,),
                      Text('instructions' + workout.instructions7,
                        style: const TextStyle(fontSize: 17),),
                    ],
                  )
              ),
              Step(
                  state: current_step > 7 ? StepState.complete : StepState.indexed ,
                  isActive: current_step >= 7,
                  title:  const Text('Exercise Eight', style:  TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),),
                  content: Column(
                    children: [
                      Text('Exercise name : ' + workout.exercise8,
                        style: const TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 5,),
                      Image.asset( workout.gif8 ,
                        height: 120 ,
                      ),
                      const SizedBox(height: 5,),
                      Text('instructions' + workout.instructions8,
                        style: const TextStyle(fontSize: 17),),
                    ],
                  )
              ),
              Step(
                  state: current_step > 8 ? StepState.complete : StepState.indexed ,
                  isActive: current_step >= 8,
                  title: const Text('Exercise Nine', style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),),
                  content: Column(
                    children: [
                      Text('Exercise name : ' + workout.exercise9,
                        style: const TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 5,),
                      Image.asset( workout.gif9 ,
                        height: 120 ,
                      ),
                      const SizedBox(height: 5,),
                      Text('instructions' + workout.instructions9,
                        style: const TextStyle(fontSize: 17),),
                    ],
                  )
              ),
              Step(
                  state: current_step > 9 ? StepState.complete : StepState.indexed ,
                  isActive: current_step >= 9,
                  title: const Text('Exercise Ten', style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),),
                  content: Column(
                    children: [
                      Text('Exercise name : '  + workout.exercise10,
                        style: const TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 5,),
                      Image.asset( workout.gif10,
                        height: 120 ,
                      ),
                      const SizedBox(height: 5,),
                      Text('instructions' + workout.instructions10,
                        style: const TextStyle(fontSize: 17),),
                    ],
                  )
              ),
            ],
            onStepTapped: (int newIndex) {
              setState(() {
                current_step = newIndex;
              });
            },
            currentStep: current_step,
            onStepContinue: () {
              if(current_step != 9) {
                setState(() {
                  circ.incr();
                  current_step+=1;
                });
              }
              else {
                print('completedddddd');
                circ.incr();
                Navigator.pushNamed(context,"/plan");
              }
              //send data to server
            },
            onStepCancel: () {
              if(current_step != 0) {
                setState(() {
                  current_step-=1;
                });
              }
            },
          ),
        ),
      ),
    );

  }
}
