import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/cardDetail.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/customer.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/dateAndTime.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/payNow.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/product.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/table.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/totleDetail.dart';
import 'package:dgtera_tablet_app/widgets/appbar.dart';
import 'package:dgtera_tablet_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class ResumeScreen extends StatefulWidget {
  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  // Icon actionIcon = Icon(
  //   Icons.search,
  //   color: Colors.orange,
  // );

  // Widget appBarTitle = Text(
  //   "My Properties",
  //   style: TextStyle(color: Colors.white),
  // );

    dialog() {
   return showDialog(
      builder: (BuildContext context) {
        return Positioned(
          top: 10,
          left: 10,
          child: Dialog(
            child: Container(
              height: 200,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Order type catogory", textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                  Divider(),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PayNowScreen()));
                    },
                    child: Text("Dine in", textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff2b0042)),)),
                  Divider(),
                  Text("Take Away", textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff2b0042)),),
                  
                ],
              ),
            ),
          ),
        );
      },
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      appBar: AppBarScreen(),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width - 850,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Customer()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          width: 210,
                          height: 45,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person_rounded),
                                SizedBox(width: 8),
                                Text("Customer"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (builder)=>TableWidget()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8))),
                          width: 210,
                          height: 45,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.table_chart),
                                SizedBox(width: 8),
                                Text("Table"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  DateAndTime(),
                  CardDetail(),
                  TotleDetail(),
                  GestureDetector(
                    onTap: (){
                      dialog();
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xff2b0042),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pay Now",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "0 SAR >",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )

                  
                  
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Product()
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

