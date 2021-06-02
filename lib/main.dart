import 'package:flutter/material.dart';
import 'package:skooltime/screens/login.dart';
import './screens/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:ThemeData(
        primarySwatch: Colors.green
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: '/login',
      routes: {
        '/':(context)=> Home(),
        '/login':(context)=>Login(),

      },
    );
  }
}