import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/customer.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/table.dart';
import 'package:dgtera_tablet_app/widgets/appbar.dart';
import 'package:dgtera_tablet_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {

  bool _hasBeenPressed = false;


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
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        )),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.more_vert,
                            size: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "#",
                                style: TextStyle(color: Colors.blue),
                              ),
                              Text("Date/Time"),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.list_alt,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: ListView.builder(
                    itemCount: 6,
                      itemBuilder: (context, index) {
                          return Card(
                           
                           elevation: 0,
                           child: ListTile(

                             leading: Container(
                               width: 45,
                               height: 45,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(color: Colors.grey)
                               ),
                               child: Center(
                                 child: Text(
                                               "1",
                                               style: TextStyle(
                                   fontSize: 30,
                                   color: Colors.black),
                                             ),
                               ),
                             ),
                             title: Text("Spanish Latte Hot",style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: 20,
                                             color: Colors.grey[600])),
                             subtitle: Text("> 1 Normal Suger",style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: 15,
                                             color: Colors.grey[600])),
                             trailing: Text("24",
                             style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: 20,
                                             color: Colors.grey[600])),
                           )
                          
                          );
                          }),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.purple[50],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Totle (3 items)",style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: 20,
                                             color: Colors.grey[600])),
                                    Spacer(),
                                    Text("39",style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: 20,
                                             color: Colors.grey[600])),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Tax",style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: 20,
                                             color: Colors.grey[600])),
                                    Spacer(),
                                    Text("5.09",style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: 20,
                                             color: Colors.grey[600])),
                                  ],
                                ),
                              ),
                              
                            ),
                            Divider(),
                          ],
                        
                        ),
                        ),
                  ),
                  Container(
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
                              boxColor: Colors.orange,
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
                              boxColor: Colors.orange,
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
                            color: Colors.orange,
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
}

class MinusAddbutton extends StatelessWidget {
  final Color boxColor;
  final Color textColor;
  final String num;
  final Function() onPressed;
  const MinusAddbutton({
    Key? key,
    required this.num,
    required this.onPressed,
    required this.boxColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: boxColor, shape: BoxShape.circle
          // color: Colors.white,
          ),
      height: 50,
      width: 50,
      child: MaterialButton(
        padding: EdgeInsets.all(8),
        onPressed: onPressed,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Center(
            child: Text(
          "$num",
          style: TextStyle(fontSize: 40, color: textColor),
        )),
      ),
    );
  }
}
