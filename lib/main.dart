import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "Hello World",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            color: Colors.blueGrey,
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      HomePage(title: 'Animations demo'),
                )),
            child: Text(
              "Animations Package",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Center(
            //more about animator watch this video
            //https://www.youtube.com/watch?v=Jig1XRFr7Xw&t=287s
            child: Animator(
              tween: Tween<double>(begin: -0.5, end: 0.5),
              duration: Duration(seconds: 1),
              cycles: 0,
              curve: Curves.easeInOut,
              builder: (context, anim, child) => Transform(
                transform: Matrix4.rotationZ(anim.value),
                alignment: FractionalOffset(0.5, 0.1),
                child: Container(
                  child: Image.asset(
                    "assets/images/pandulum.png",
                    width: 100,
                    height: 250,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
