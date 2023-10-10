import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Media Query practice",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w300, // -> Roboto-Light.ttf
                  // fontWeight: FontWeight.w100 // -> Roboto-Thin.ttf
                  fontSize: 16.0,
                )),
          ),
          body: Center(
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .height / 5,
              height: MediaQuery
                  .of(context)
                  .size
                  .width / 4,
              decoration: BoxDecoration(color: Colors.black12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.yellow,
                      child: Center(
                        child: Text("Hello"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
