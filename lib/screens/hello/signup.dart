

import 'package:myapp/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/api/fetchapi.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nController = TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _CpasswordController = new TextEditingController();

  FetchApi fetch = new FetchApi();
  _onpressed(_nController,_emailController,_passwordController,_CpasswordController){
    if (_nController.text.toString().isNotEmpty&&_emailController.text.isNotEmpty&&_passwordController.toString().isNotEmpty&&_CpasswordController.toString().isNotEmpty){
      fetch.signupData(_nController.text,_emailController.toString(), _passwordController.toString(),_CpasswordController.toString());
    }else{}

  }
  bool _isVisible = true;
  bool _isPassword8Characters = false;
  bool _hasPassword1Number = false;

  OnPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');
    _isPassword8Characters = false;
    setState(() {
      if (password.length >= 8) {
        _isPassword8Characters = true;
        _hasPassword1Number = false;
        if (numericRegex.hasMatch(password)) {
          _hasPassword1Number = true;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white30,
          title: const Text(
            'Create Your Account',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
              width: size.width,
              height: size.height,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  const Text(
                    'Hello,\nSet your data',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  TextField(
                      controller: _nController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Name',
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      )),
                  const SizedBox(height: 30),
                  TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Email',
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      )),
                  const SizedBox(height: 30),
                  TextField(
                      controller: _passwordController,
                      onChanged: (password) => OnPasswordChanged(password),
                      obscureText: _isVisible,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: _isVisible
                                ? const Icon(
                              Icons.visibility,
                              color: Colors.black,
                            )
                                : const Icon(Icons.visibility_off,
                                color: Colors.black)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Password',
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      )),
                  const SizedBox(height: 30),
                  TextField(
                      controller: _CpasswordController,
                      onChanged: (password) => OnPasswordChanged(password),
                      obscureText: _isVisible,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: _isVisible
                                ? const Icon(
                              Icons.visibility,
                              color: Colors.black,
                            )
                                : const Icon(Icons.visibility_off,
                                color: Colors.black)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: ' Config Password',
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      )),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 50),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: _isPassword8Characters
                                ? Colors.green
                                : Colors.transparent,
                            border: _isPassword8Characters
                                ? Border.all(color: Colors.transparent)
                                : Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Contains at least 8 characters',
                        style: TextStyle(color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 50),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: _hasPassword1Number
                                ? Colors.green
                                : Colors.transparent,
                            border: _hasPassword1Number
                                ? Border.all(color: Colors.transparent)
                                : Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Contains at least 1 number',
                        style: TextStyle(color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/questions0');
                        //_onpressed(_nController, _emailController, _passwordController,_CpasswordController);
                        fetch.signupData(_nController.text.trim(),_emailController.text.trim(), _passwordController.text.trim(),_CpasswordController.text.trim());
                        /*Navigator.pushNamed(context, '/questions0');
                        String name = _nController.text;
                        Map creds = {
                          'email': _emailController.text,
                          'password': _passwordController.text,
                          'n': _nController.text
                        };
                        Provider.of<Auth>(context, listen: false)
                            .register(creds);
                        Provider.of<Auth>(context, listen: false).Name(name);*/


                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey,
                          padding: EdgeInsets.all(5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: const Text(
                        "Create Account",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () => {Navigator.pushNamed(context, '/login')},
                    child: const Text("Login to already existing account",
                        style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              )),
        ));
  }
}



