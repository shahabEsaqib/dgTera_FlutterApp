import 'package:dgtera_tablet_app/pages/homePage.dart';
import 'package:dgtera_tablet_app/pages/login.dart';
import 'package:dgtera_tablet_app/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()  {
   
    runApp(new MyApp());
  
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.landscapeLeft,
  DeviceOrientation.landscapeRight,
]);
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: "/",

      routes: {
        "/": (context) => Login(),
        MyRoutes.homeRoute: (context) => MyHomePage(),
        // MyRoutes.loginRoute: (context) => LoginPage(),
        // MyRoutes.cartRoute: (context) => CartPage()
      }
    );
    
  }
}