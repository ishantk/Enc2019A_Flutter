import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class User{

  String name;
  String phone;
  String email;

  @override
  String toString() {
    return name+","+phone+","+email;
  }

}

/*
class WidgetA extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}

class WidgetB extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

}

class WigetBState extends State<WidgetB>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}
*/

class SignUpPage extends StatefulWidget{

  /*
  @override
  State<StatefulWidget> createState() {
    var state = new _SignUpPageState();
    return state;
  }
  */

  @override
  State<StatefulWidget> createState() => new _SignUpPageState();


}


class _SignUpPageState extends State<SignUpPage>{


  var user;


  @override
  Widget build(BuildContext context) {

    user = new User();

    TextEditingController nameController = new TextEditingController();
    TextEditingController phoneController = new TextEditingController();
    TextEditingController emailController = new TextEditingController();

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
      ),
    );


    final txtTitle =  Text(
      'Register Yourself',
      style: TextStyle(fontSize: 18.0, color: Colors.amber),
      textAlign: TextAlign.center,
    );


    final name = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      controller: nameController,
      decoration: InputDecoration(
        hintText: 'Enter Your Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );


    final phone = TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      controller: phoneController,
      decoration: InputDecoration(
        hintText: 'Enter Your Phone',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );



    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      controller: emailController,
      decoration: InputDecoration(
        hintText: 'Enter Your Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );


    final signUpButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        onPressed: () {

          user.name = nameController.text.trim();
          user.phone = phoneController.text.trim();
          user.email = emailController.text.trim();

          print(user);

          },
        padding: EdgeInsets.all(12.0),
        color: Colors.lightBlueAccent,
        child: Text('Signup', style: TextStyle(color: Colors.white)),
      ),
    );


    final scaffold = Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 12.0),
            logo,
            SizedBox(height: 12.0),
            txtTitle,
            SizedBox(height: 24.0),
            name,
            SizedBox(height: 12.0),
            phone,
            SizedBox(height: 12.0),
            email,
            SizedBox(height: 24.0),
            signUpButton
          ],
        ),
      ),
    );


    return scaffold;
  }
}


