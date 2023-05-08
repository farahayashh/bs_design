import 'dart:convert';
import 'dart:io';
import 'package:myapp/api/fetchapi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
FetchApi f = new FetchApi();
class information
{ var token ;
  var gender,
  height,
  weight,
  age,
  goal,
  focus_part,
  typical_day,
  bad_habits,
  water_intake,
  training_days;
  usergender(gender)
  {
    this.gender=gender;
  }
  userheight(height)
  {
    this.height=height;
  }
  userweight(weight)
  {
    this.weight=weight;
  }
  userage(age)
  {
    this.age=age;
  }
  usergoal(goal)
  {
    this.goal=goal;
  }

  userfocus_part(focus_part)
  {
    this.focus_part=focus_part;
  }
  usertypical_day(typical_day)
  {
    this.typical_day=typical_day;
  }
  userbad_habits(bad_habits)
  {
    this.bad_habits=bad_habits;
  }
  userwater_intake(water_intake)
  {
    this.water_intake=water_intake;
  }
  usertraining_days(training_days)
  {
    this.training_days=training_days;
  }
  /*informationdata()

  async {
    print(gender);
    print(height);
    print(weight);
    print(age);
    print(goal);
    print(focus_part);
    print(typical_day);
    print(bad_habits);
    print(water_intake);
    print(training_days);

    try{
      final prefs = await SharedPreferences.getInstance() ;
      final key = 'token';
      final value = prefs.get(key) ?? 0;
      String token = value.toString();

      var url = Uri.parse('http://192.168.43.56:8000/api/Profile');
      http.Response response = await http.post(url,
          headers: {
            HttpHeaders.authorizationHeader:"Bearer "+token,
            'Accept':'application/json',

          },
          body: {
            "gender":"$gender",
            "height":"$height",
            "weight":"$weight",
            "age":"$age",
            "goal":"$goal",
            "focus_part":"$focus_part",
            "previous_experiences":"$typical_day",
            "bad_habits":"$bad_habits",
            "water":"$water_intake",
            "training_days":"$training_days"
            }
          );
      var status = response.body.contains('error');
      var data = json.decode(response.body);
      print (value);
      print(f.tok);
      print('Bearer ${f.tok}');
      print(response.statusCode);
      if (status) {
        print('here');
        print('data : ${data["error"]}');
      }

      print('data : ${data["error"]}');
     if(response.statusCode==200)
       {
         print("true baby <3 ");
       }
    }catch(e){
      print('errrrrrrrrrrror:$e');
    }
  }*/
informationdata() async {
  final prefs = await SharedPreferences.getInstance() ;
  final key = 'token';
  final value = prefs.get(key) ?? 0;
  String tooken = value.toString();
  var headers = {
    'Accept': 'application/json',

    'Authorization': 'Bearer '+tooken  };
  var request = http.MultipartRequest('POST', Uri.parse('http://192.168.43.56:8000/api/Profile'));
  request.fields.addAll({
    'gender': '$gender',
    'height': '$height',
    'weight': '$weight',
    'age': '$age',
    'goal': '$goal',
    'focus_part': '$focus_part',
    'previous_experiences': '$typical_day',
    'bad_habits': '$bad_habits',
    'water': '$water_intake',
    'tranning_days': '$training_days'
  });

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  }
  else {
    print(response.reasonPhrase);
  }
}
}
class Plan
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





  Plan({required this.image, required this.name, required this.description, required this.gif1, required this.gif2, required this.gif3, required this.gif4, required this.gif5, required this.gif6, required this.gif7, required this.gif8, required this.gif9, required this.gif10, required this.exercise1, required this.exercise2, required this.exercise3, required this.exercise4, required this.exercise5, required this.exercise6, required this.exercise7, required this.exercise8, required this.exercise9, required this.exercise10, required this.instructions1, required this.instructions2, required this.instructions3, required this.instructions4, required this.instructions5, required this.instructions6, required this.instructions7, required this.instructions8, required this.instructions9, required this.instructions10});

  /*factory Plan.fromJson(Map<String,dynamic> jsonData)
  {
    return Plan(

    );
  }*/
}
class Ex
{
  final List<dynamic> xxx;

  Ex({required this.xxx});
  factory Ex.fromJson(Map<String,dynamic> jsonData)
  {
    return Ex(
      xxx:jsonData['key'],
    );
  }
}
