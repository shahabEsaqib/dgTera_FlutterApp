import 'package:dgtera_tablet_app/reusmeShiftPage/resumeShiftWidget/cardScreen.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  
  const Product({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
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
                        color: Colors.blue,
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
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
              color: Colors.grey[300],
              width: MediaQuery.of(context).size.width - 470,
              height: MediaQuery.of(context).size.height - 170,
              child: GridView.count(
                mainAxisSpacing: 8,
                crossAxisCount: 5,
                children: List.generate(100, (index) {
                  return Card(
                    margin: EdgeInsets.fromLTRB(7, 7, 5, 7),
                    child: InkWell(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>CardScreen()));
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
                            padding:
                                EdgeInsets.fromLTRB(10.0, 10, 0.0, 0.0),
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
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
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(10.0, 10, 10.0, 0.0),
                            child: Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Price",
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0),
                                  maxLines: 1,
                                ),
                                Spacer(),
                                Text(
                                  "Stock",
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0),
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
 
                }),
              )),
        ],
      ),
    );
  }
}
