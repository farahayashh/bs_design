import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:day_picker/day_picker.dart';
import 'package:myapp/screens/questions/questions0.dart';
class Questions10 extends StatefulWidget {
  const Questions10({Key? key}) : super(key: key);

  @override
  _Questions10State createState() => _Questions10State();
}

class _Questions10State extends State<Questions10> {
  bool isSelected = false ;
  late List userdays ;

  final List<DayInWeek> _days = [
    DayInWeek(
      "Sun",
    ),
    DayInWeek(
      "Mon",
    ),
    DayInWeek(
        "Tue",
        isSelected: true
    ),
    DayInWeek(
      "Wed",
    ),
    DayInWeek(
      "Thu",
    ),
    DayInWeek(
      "Fri",
    ),
    DayInWeek(
      "Sat",
    ),
  ];
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
            const SizedBox(height: 80,),
            const Center(
              child: Text(' Pick your training days ? ' ,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 40,),
           SelectWeekDays(
        fontSize:14,
        fontWeight: FontWeight.w500,
        days: _days,
        border: true,
        boxDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            colors: [Colors.blueGrey, Colors.grey],
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        onSelect: (values) { // <== Callback to handle the selected days
          print(values);
          userdays = values;
        },
      ),

            const SizedBox(height: 40,),

            ElevatedButton(
              onPressed: () {
                info.usertraining_days(userdays.length);
                info.informationdata();
                Navigator.pushNamed(context, '/home');
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
