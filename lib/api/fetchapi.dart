

import 'dart:convert';
import 'dart:js';
import 'package:myapp/model/information.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
var statuscode;
class FetchApi{
  var status;
  var tok ;


  Future<void> loginData(String email ,pass) async {
    try{
      var url = Uri.parse('http://192.168.43.56:8000/api/login');
      http.Response response = await http.post(url,
          headers: {
            'Accept':'application/json'
          },
          body: {
            "email":"$email",
            "password":"$pass",
          });
      print('here');
      statuscode = response.statusCode;
      var status = response.body.contains('error');
      var data = json.decode(response.body);
      if (status) {
        print('here');
        print('data : ${data["error"]}');
      } else {
        print('token');
        print('data: ${data["token"]}');
        // _save(data["token"]);

      }
    }catch(e){
      print('errrrrrrrrrrror:$e');
    }
  }
/*_save(String token)async{
    final prefs = await SharedPreferences.getInstance() ;
    final key = 'token';
    final value = token;
    prefs.setString(key, value);

  }*/

  Future<void> signupData(String name , email ,pass , conf) async {
    try{
      print('$name');
      print('sign up');
      var url = Uri.parse('http://192.168.43.56:8000/api/register');
      var response = await http.post(url,
          headers:{
           /* 'Content-Type': 'application/json',
            'Charset': 'utf-8',*/
          'Connection':'keep-alive',
            'Accept':'application/json',

            //'Content-Type': 'application/json; charset=UTF-8',


          },
          body: ({
            "name":"$name",
            "email":"$email",
            "password":"$pass",
            "confirmation_password":"$conf"
          }));
      bool status = response.body.contains('error');


      var data = json.decode(response.body);
      if (status) {
        print('here signup');
        print('data : ${data["error"]}');
      } else {
        print('token');
        print('data: ${data["token"]}');

        _save(data['token']);


      }
    }catch(e){
      print('$e');
    }
  }
_save(String token)async{
    final prefs = await SharedPreferences.getInstance() ;
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
    tok =value;

  }

  read()async{
    final prefs = await SharedPreferences.getInstance() ;
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    print('read : $value');

  }

  /*Future<List<Plan>> gdata() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key )??0;

    Uri url = Uri.parse("asdfsdf");
    http.Response response = await http.get(url,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $value'
        });

    String data = response.body;
    var jsonData = jsonDecode(data);
    Ex xxx = Ex.fromJson(jsonData);
    List<Plan> Planlist = xxx.xxx.map((e) => Plan.fromJson(e)).toList();

    return Planlist;
  }*/

}