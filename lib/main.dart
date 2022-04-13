import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

const remaxRed = Color(0xFFe11b22);
const remaxBlue = Color(0xFF0054a4);
const remaxLtGrey = Color(0xFFC4C6C8);
const remaxGrey = Color(0xFF7E868C);
const remaxDkGrey = Color(0xFF404041);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: remaxRed,
        scaffoldBackgroundColor: remaxBlue,
        primaryColorLight: remaxLtGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/remaxword.png',
                fit: BoxFit.contain,
                height: 35,
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 125.0,
                backgroundImage: AssetImage('images/house1.jpg'),
              ),
              Text(
                'Trishten Poff',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: remaxDkGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "TEAM PENDLEY",
                style: TextStyle(
                  fontFamily: 'ARIAL',
                  fontSize: 16.0,
                  color: remaxLtGrey,
                  letterSpacing: 3.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: remaxDkGrey,
                ),
              ),
              Card(
                color: remaxLtGrey,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 20.0,
                    color: remaxDkGrey,
                  ),
                  title: Text(
                    "(541) 791-2000",
                    style: TextStyle(
                      color: remaxDkGrey,
                      fontFamily: 'ARIAL',
                    ),
                  ),
                ),
              ),
              Card(
                color: remaxLtGrey,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 35.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 20.0,
                    color: remaxDkGrey,
                  ),
                  title: Text(
                    "email@gmail.com",
                    style: TextStyle(
                      color: remaxDkGrey,
                      fontFamily: 'ARIAL',
                    ),
                  ),
                ),
              ),
            ], // <Widget>[]
          ),
        ),
        bottomNavigationBar: Container(
          height: 50.0,
          color: remaxBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "We go the extra mile, it's less crowded",
                style: TextStyle(
                  fontFamily: 'ARIAL',
                  fontSize: 18.0,
                  color: remaxLtGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
