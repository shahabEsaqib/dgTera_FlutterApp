import 'package:dgtera_tablet_app/product/allProducts.dart';
import 'package:dgtera_tablet_app/dashbored/dashbored.dart';
import 'package:dgtera_tablet_app/history/history.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShift.dart';
import 'package:dgtera_tablet_app/pages/login.dart';
import 'package:dgtera_tablet_app/reports/reports.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utilities/routes.dart';

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
      initialRoute: "login",

      routes: {
        "login": (context) => Login(),
        MyRoutes.dashboredRoute: (context) => DashboredScreen(),
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.resumeRoute: (context) => ResumeScreen(),
        MyRoutes.reports: (context) => ReportScreen(),
        MyRoutes.history: (context) => HistoryScreen(),
        MyRoutes.product: (context) => ProductDetails()
      }
    );
    
  }
}