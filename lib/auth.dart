import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/counter_provider.dart';

class Auth extends ChangeNotifier {
  String name = '';
  bool _isSignedIn = false;
  bool get authenticated => _isSignedIn;

  Future<http.Response> register(Map creds) async {
    String url = "http://127.0.0.1:8000/login";
    var response = await http.post(Uri.parse(url), body: creds);
    var body = jsonDecode(response.body);

    if (response.statusCode == 200) {
      debugPrint("Data posted successfully");
    } else {
      debugPrint(
          "Something went wrong! Status Code is: ${response.statusCode}");
    }
    return response;
  }

  Future<http.Response> signin(Map creds) async {
    String url = "http://127.0.0.1:8000/login";

    var response = await http.post(Uri.parse(url), body: creds);
    var body = jsonDecode(response.body);

    if (response.statusCode == 200) {
      debugPrint("Data posted successfully");
      _isSignedIn = true;
      notifyListeners();
    } else {
      debugPrint(
          "Something went wrong! Status Code is: ${response.statusCode}");
    }

    return response;
  }

  Future<http.Response> signout() async {
    _isSignedIn = false;
    notifyListeners();
    String url = "http://188.160.175.66:8000/api/sign";
    var response = await http.post(Uri.parse(url));
    return response;
  }

  void Name(String nname) {
    this.name = nname;
  }
}
