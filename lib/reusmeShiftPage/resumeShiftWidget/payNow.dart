import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/cardDetail.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/customer.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/dateAndTime.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/table.dart';
import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/totleDetail.dart';
import 'package:dgtera_tablet_app/widgets/appbar.dart';
import 'package:dgtera_tablet_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class PayNowScreen extends StatefulWidget {
  @override
  _PayNowScreenState createState() => _PayNowScreenState();
}

class _PayNowScreenState extends State<PayNowScreen> {


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
      appBar: AppBarScreen(text: 'CHECKOUT',),
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
                  payDetail(),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   width: 8,
          // ),
                    Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                // color: Colors.grey[300],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex:3,
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          
                            ),
                            child: Center(child: Text("250.3 SR",style: TextStyle(color: Colors.grey[600],fontSize: 25,fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(height: 64,),
                          Expanded(
                            flex: 6,
                            child: Row(
                              
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                  children: [
                                    payNowBox("walk-in customer",Icons.people),
                                    SizedBox(height: 8,),
                                    payNowBox("Voucher",Icons.view_day_outlined),
                                    SizedBox(height: 8,),
                                    payNowBox("Lead team",Icons.group),
                                    SizedBox(height: 8,),
                                    payNowBox("Note",Icons.note_add),
                                    SizedBox(height: 8,),
                                    payNowBox("invoice",Icons.inventory_2),
                                  ],
                                ),
                                ),
                                SizedBox(width: 8,),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                  children:[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        dialkeyPayment("1"),
                                        dialkeyPayment("2"),
                                        dialkeyPayment("3"),
                                        dialkeyPayment("+10")
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        dialkeyPayment("4"),
                                        dialkeyPayment("5"),
                                        dialkeyPayment("6"),
                                        dialkeyPayment("+20")
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        dialkeyPayment("7"),
                                        dialkeyPayment("8"),
                                        dialkeyPayment("9"),
                                        dialkeyPayment("+50")
                                      ],
                                    ),
                                  SizedBox(height: 8,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        dialkeyPayment("+/-"),
                                        dialkeyPayment("0"),
                                        dialkeyPayment("."),
                                        dialkeyPayment("del")
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 70,
                                        decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(16)
                                            ),                                          
                                          child:Center(
                                          child: Text("C",style: TextStyle(color: Colors.grey[600], fontSize: 20),
),
                                        )
                                      )
                                  ]
                                ))
                              ],
                            )
                            
                            )
                        ],
                      ),
                    ),
                    
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Container(
                          height: MediaQuery.of(context).size.height/1.26,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text("Payment Method",style: TextStyle(color: Colors.grey[600], fontSize: 20),),
                              ),
                              SizedBox(height: 40,),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children: [
                                  pamentMethodBox("Card",Icons.local_atm_outlined),
                                  pamentMethodBox("Debit cart",Icons.credit_card),
                                ],
                              ),
                              SizedBox(height: 12,),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children: [
                                  pamentMethodBox("Card",Icons.local_atm_outlined),
                                  pamentMethodBox("Debit cart",Icons.credit_card),
                                ],
                              ),
                              SizedBox(height: 12,),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children: [
                                  pamentMethodBox("Card",Icons.local_atm_outlined),
                                  pamentMethodBox("Debit cart",Icons.credit_card),
                                ],
                              ),
                              SizedBox(height: 12,),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children: [
                                  pamentMethodBox("Card",Icons.local_atm_outlined),
                                  pamentMethodBox("Debit cart",Icons.credit_card),
                                ],
                              ),
                              SizedBox(height: 12,),
                              pamentMethodBox("Card",Icons.local_atm_outlined),
                              SizedBox(height: 30,),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 60,
                                          decoration: BoxDecoration(
                                                color: Colors.red[200],
                                                borderRadius: BorderRadius.circular(16)
                                              ),                                          
                                            child:Center(
                                            child: Text("POS Sale Journal",style: TextStyle(color: Colors.grey[600], fontSize: 15),
),
                                          )
                                        ),
                              )
                            ]
                          ),
                        ),
                      ),)
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

  Container dialkeyPayment(String text) {
    return Container(
    width: 70,
    height: 70,
    decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
        ),                                          
      child:Center(
      child: Text(text,style: TextStyle(color: Colors.grey[600], fontSize: 20),
    ),
    )
  );
  }

  Container payNowBox(String text ,IconData icon) {
    return Container(
    // width: 300,
    height: 70,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16)
    ),
    child: Center(
      child: ListTile(
    leading: Icon(
      icon,
      color: Colors.grey,
    ),
    title: Text(
      text,
      style: TextStyle(color: Colors.grey[600], fontSize: 20),
    )),
    ),
  );

  
  }

  Container pamentMethodBox(String text ,IconData icon) {
    return Container(
    // width: 300,
    height: 70,
    width: 70,
    decoration: BoxDecoration(
      color: Colors.blue[100],
      borderRadius: BorderRadius.circular(16)
    ),
    child: Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
            icon,
            color: Colors.grey,
      ),
      Text(
            text,
            style: TextStyle(color: Colors.grey[600],fontSize: 12 ),
      ),
          ],
        ),
      ),
    ),
  );

  
  }

  Widget payDetail() {
    return GestureDetector(
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
                );
  }
  
  void dialog() {
    showDialog(
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