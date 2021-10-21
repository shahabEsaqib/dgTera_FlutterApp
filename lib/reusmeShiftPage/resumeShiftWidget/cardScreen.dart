import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/cardDetail.dart';

import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/customer.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/dateAndTime.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/payNow.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/removeAddbutton.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/table.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/totleDetail.dart';
import 'package:dgtera_tablet_app/widgets/appbar.dart';
import 'package:dgtera_tablet_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {



  Widget appBarTitle = Text(
    "My Properties",
    style: TextStyle(color: Colors.white),
  );
  Icon actionIcon = Icon(
    Icons.search,
    color: Colors.orange,
  );
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
              width: MediaQuery.of(context).size.width / 3,
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => TableWidget()));
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xff2c0c42),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                child: Center(
                                  child: Text(
                                    "Void",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                            // SizedBox(width: 8,),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "SPANISH LATTE HOT",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.grey[600]),
                                  ))),
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              child: Center(
                                  child: Text("Quantity:",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey[600]))),
                            ),
                            MinusAddbutton(
                              num: "-",
                              onPressed: () {},
                              boxColor: Colors.blue,
                              textColor: Colors.white,
                            ),
                            Container(
                              height: 40,
                              width: 70,
                              child: Center(
                                  child: Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 45, fontWeight: FontWeight.bold),
                              )),
                            ),
                            MinusAddbutton(
                              num: "+",
                              onPressed: () {},
                              boxColor: Colors.blue,
                              textColor: Colors.white,
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                  onPressed: () {}, child: Text("New")),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Size",
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 5,
                                  height: 40,
                                  color: Colors.grey[600],
                                  child: Center(
                                      child: Text("Large + (2 SAR)",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17))),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 5,
                                  height: 40,
                                  color: Colors.grey[200],
                                  child: Center(
                                      child: Text("Small",
                                          style: TextStyle(fontSize: 17))),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Center(
                                  child: Text("Notes",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17))),
                              Spacer(),
                              Center(
                                  child: Text("Clear notes",
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.blue))),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                            hintText: "Extra Suger",
                                            border: InputBorder.none),
                                      ),
                                    )),
                                SizedBox(
                                  width: 14,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                            hintText: "Extra Suger",
                                            border: InputBorder.none),
                                      ),
                                    )),
                                SizedBox(
                                  width: 14,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                            hintText: "Extra Suger",
                                            border: InputBorder.none),
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                            hintText: "Extra Suger",
                                            border: InputBorder.none),
                                      ),
                                    )),
                                SizedBox(
                                  width: 14,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                            hintText: "Extra Suger",
                                            border: InputBorder.none),
                                      ),
                                    )),
                                SizedBox(width: 14),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                            hintText: "Extra Suger",
                                            border: InputBorder.none),
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.grey[300],
                                child: TextField(
                                  maxLength: null,
                                  maxLines: null,
                                  expands: true,
                                  decoration: InputDecoration(
                                      hintText: "> 1-No Suger",
                                      border: InputBorder.none),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 55, 0, 8),
                      child: Container(
                        height: 50,
                        width: 600,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Center(
                            child: Text(
                          "Done",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
       
        ],
      ),
      drawer: MyDrawer(),
    );
  }
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

}

