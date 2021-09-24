import 'package:dgtera_tablet_app/widgets/appbar.dart';
import 'package:dgtera_tablet_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class ResumeScreen extends StatefulWidget {
  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
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
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
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
                      SizedBox(
                        width: 5,
                      ),
                      Container(
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
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.more_vert),
                          Text("Date/Time"),
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
                  SingleChildScrollView(
                    child: Container(
                      height: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          
                    )
                    ),
                  ),
                  Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.purpleAccent,
                              borderRadius:
                                  BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Pay Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                Text("0 SAR >",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.all(Radius.circular(8))),
                  //   height: MediaQuery.of(context).size.height - 195,
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       Container(
                  //         height: 45,
                  //         decoration: BoxDecoration(
                  //             color: Colors.purpleAccent,
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(8))),
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text("Pay Now"),
                  //               Text("0 SAR >"),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  color: Colors.grey[400],
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Icon(
                              Icons.home,
                              color: Colors.orange,
                            )),
                        // SizedBox(width: 8,),
                        Container(
                          width: MediaQuery.of(context).size.width - 600,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              hintText: "Search ",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                            height: 40,
                            width: 60,
                            decoration: BoxDecoration(color: Colors.orange),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  color: Colors.grey[300],
                  width: MediaQuery.of(context).size.width - 470,
                  height: MediaQuery.of(context).size.height-170,

                  child: GridView.count(
                    mainAxisSpacing: 8,
                    // crossAxisSpacing: 8,
                    crossAxisCount: 5,
                  
                   children: List.generate(100, (index) {
                    return Card(
      margin: EdgeInsets.fromLTRB(7, 7, 5, 7),
      // elevation: 10.0,
      child: InkWell(
        onTap: () {
            print("building.id");
        },
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset(
                'assets/images/google-logo.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 30, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Google",
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                      maxLines: 1,
                    ),
                  ),
                  
                  
                ],
              ),
            ),
            ],
        ),
      ),
    );
                  }),
                )
                  
                    ),
                
              ],
            ),
          )
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
