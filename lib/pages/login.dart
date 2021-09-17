import 'package:dgtera_tablet_app/utilities/routes.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

int count = 0;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("user111",
            style: TextStyle(
              color: Colors.grey.shade500,
            )),
        backgroundColor: Colors.white,
        // iconTheme: IconThemeData(color: Colors.black, opacity: 0.0),
        leading: Padding(
      padding: const EdgeInsets.only(left: 16),
      child: new Material(
        shape: new CircleBorder(),
        child: Image(image: AssetImage("assets/images/google-logo.png"),),
      ),
    ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 450),
            child: Center(child: Text("PIN CODE",style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold,fontSize: 20),)),
          ),
          GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 32),
                child: Center(
                    child: Text(
                  "Change user",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold,fontSize: 20),
                )),
              )),
              
        ],
        
      ),
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Container(
                    width: 340,
                    height: 70,
                        decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                        child: TextField(
                            
                            obscureText: true,
                            decoration: InputDecoration(hintText: "shhaab"),
                          ),
                      ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    height: 440,
                    width: 340,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            logInButtonWidget(1),
                            SizedBox(
                              width: 8,
                            ),
                            logInButtonWidget(2),
                            SizedBox(
                              width: 8,
                            ),
                            logInButtonWidget(3),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            logInButtonWidget(4),
                            SizedBox(
                              width: 8,
                            ),
                            logInButtonWidget(5),
                            SizedBox(
                              width: 8,
                            ),
                            logInButtonWidget(6),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            logInButtonWidget(7),
                            SizedBox(
                              width: 8,
                            ),
                            logInButtonWidget(8),
                            SizedBox(
                              width: 8,
                            ),
                            logInButtonWidget(9),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade100,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(70)),
                                color: Colors.grey.shade400,
                              ),
                              height: 100,
                              width: 100,
                              child: GestureDetector(
                                  onTap: () {},
                                  child: Center(
                                      child: Text(
                                    "Clear",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            logInButtonWidget(0),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade100,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(70)),
                                color: Colors.orange,
                              ),
                              height: 100,
                              width: 100,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, MyRoutes.homeRoute);
                                  },
                                  child: Center(
                                      child: Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container logInButtonWidget(var num) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.all(Radius.circular(70)),
        color: Colors.white,
      ),
      height: 100,
      width: 100,
      child: GestureDetector(
          onTap: () {
            counter();
            print(count);
            setState(() {});
          },
          child: Center(
              child: Text(
            "$num",
            style: TextStyle(fontSize: 40, color: Colors.grey.shade500),
          ))),
    );
  }

  void counter() {
    setState(() {
      count = count++;
    });
  }
}
