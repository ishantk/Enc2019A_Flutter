import 'package:flutter/material.dart';
import 'signup.dart';

void main() => runApp(new MyApp());

/*void main(){
  var mRef = new MyApp();
  runApp(mRef);
}*/

// Root Widget of Application
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    /*
    var theme = new ThemeData(
        primaryColor: Colors.green,
        primaryColorDark: Colors.lightGreen,
        accentColor: Colors.greenAccent
    );

    var appTitle = "Agrizon";

    var sRef = new SignUpPage();

    var mRef = new MaterialApp(title: appTitle, theme: theme, home: sRef);

    //return mRef;

    */

    return new MaterialApp(
        title: "Agrizon",
        theme: new ThemeData(
            primaryColor: Colors.green,
            primaryColorDark: Colors.lightGreen,
            accentColor: Colors.greenAccent
        ),
        home: new SignUpPage()
    );

  }
}


