// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:myapp/auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/loading.dart';
import 'package:provider/provider.dart';
import 'package:myapp/api/fetchapi.dart';
class LoginPage extends StatefulWidget {
@override
_LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  FetchApi fetch = new FetchApi();
  _onpressed(_emailController,_passwordController){
    if (_emailController.toString().isNotEmpty&&_passwordController.toString().isNotEmpty){
      fetch.loginData(_emailController.text, _passwordController.text);
    }else{}

  }
TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final _formkey = GlobalKey<FormState>();
final _formkey2 = GlobalKey<FormState>();

@override
void initState() {
// TODO: implement initState
super.initState();
}

@override
void dispose() {
// TODO: implement dispose
super.dispose();
_emailController.dispose();
_passwordController.dispose();
}
bool loading = false;
@override
Widget build(BuildContext context) {
final size = MediaQuery.of(context).size;
return loading ? Loading() : Scaffold(
body: SingleChildScrollView(
child: Container(
width: size.width,
height: size.height,
padding: EdgeInsets.only(left: 20, right: 20, top: 150, bottom: 60),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Hello, \nWelcome Back!',
style: TextStyle(
color: Colors.black,
fontSize: 40,
fontWeight: FontWeight.bold),
),
SizedBox(
height: 60,
),
Column(
children: [
Container(
padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
decoration: BoxDecoration(
color: Colors.grey[200],
borderRadius: BorderRadius.all(Radius.circular(20))),
child: Form(
key: _formkey2,
child: TextFormField(
controller: _emailController,
decoration: InputDecoration(
border: InputBorder.none, hintText: "Email "),
validator: (value) =>
value!.isEmpty ? 'Pleaser enter your email' : null,
),
),
),
SizedBox(
height: 30,
),
Container(
padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
decoration: BoxDecoration(
color: Colors.grey[200],
borderRadius: BorderRadius.all(Radius.circular(20))),
child: Form(
key: _formkey,
child: TextFormField(
controller: _passwordController,
obscureText: true,
decoration: InputDecoration(
border: InputBorder.none, hintText: "Password"),
validator: (value) =>
value!.isEmpty ? 'Please enter your password' : null,
),
),
),
SizedBox(
height: 20,
),
],
),
Center(
child: Column(
children: [
ElevatedButton(
onPressed: () {
  fetch.loginData(_emailController.text.trim(), _passwordController.text.trim());
  //_onpressed(_emailController, _passwordController);
  /*
Map creds = {
'email': _emailController.text,
'password': _passwordController.text,
};
if (_formkey.currentState!.validate() &&
_formkey2.currentState!.validate()) {
/*  setState(() {
    loading = true;
  });
  */
Provider.of<Auth>(context, listen: false)
    .signin(creds);
Navigator.pushNamed(context, '/home');
}
*/
  Navigator.pushNamed(context,"/home");

 },
style: ElevatedButton.styleFrom(
primary: Colors.blueGrey,
padding: EdgeInsets.all(5),
),
child: Text(
"Login",
style: TextStyle(fontWeight: FontWeight.bold),
)),
SizedBox(
height: 10,
),
TextButton(
onPressed: () => {Navigator.pushNamed(context, '/signup')},
child: Text("Create Account",
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.bold)),
)
],
),
)
],
),
),
));
}
}
