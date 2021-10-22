import 'package:flutter/material.dart';

import 'package:dgtera_tablet_app/utilities/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController textEditingController = new TextEditingController();
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
          padding: EdgeInsets.only(left: 16),
          child: CircleAvatar(
           // borderRadius: BorderRadius.circular(30),
            backgroundImage: AssetImage("assets/images/Profpic.jpg")
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 385),
            child: Center(
                child: Text(
              "PIN CODE",
              style: TextStyle(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: TextButton(
              onPressed: () {},
              child: Center(
                  child: Text(
                "Change user",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  PinScreen(),
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
                            PinButonLogin(
                                num: "1",
                                onPressed: () {
                                  pinIndexSetUp("1");
                                }),
                            SizedBox(
                              width: 8,
                            ),
                            PinButonLogin(
                                num: "2",
                                onPressed: () {
                                  pinIndexSetUp("2");
                                }),
                            SizedBox(
                              width: 8,
                            ),
                            PinButonLogin(
                                num: "3",
                                onPressed: () {
                                  pinIndexSetUp("3");
                                }),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PinButonLogin(
                                num: "4",
                                onPressed: () {
                                  pinIndexSetUp("4");
                                }),
                            SizedBox(
                              width: 8,
                            ),
                            PinButonLogin(
                                num: "5",
                                onPressed: () {
                                  pinIndexSetUp("5");
                                }),
                            SizedBox(
                              width: 8,
                            ),
                            PinButonLogin(
                                num: "6",
                                onPressed: () {
                                  pinIndexSetUp("6");
                                }),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PinButonLogin(
                                num: "7",
                                onPressed: () {
                                  pinIndexSetUp("7");
                                }),
                            SizedBox(
                              width: 8,
                            ),
                            PinButonLogin(
                                num: "8",
                                onPressed: () {
                                  pinIndexSetUp("8");
                                }),
                            SizedBox(
                              width: 8,
                            ),
                            PinButonLogin(
                                num: "9",
                                onPressed: () {
                                  pinIndexSetUp("9");
                                }),
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
                                shape: BoxShape.circle,
                                color: Colors.grey.shade400,
                              ),
                              height: 100,
                              width: 100,
                              child: MaterialButton(
                                  padding: EdgeInsets.all(8),
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100)),
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
                            PinButonLogin(
                                num: "0",
                                onPressed: () {
                                  pinIndexSetUp("0");
                                }),
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
                                color: Colors.blue,
                              ),
                              height: 100,
                              width: 100,
                              child: MaterialButton(
                                  padding: EdgeInsets.all(8),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, MyRoutes.dashboredRoute);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100)),
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

  //
  @override
  void initState() {
    super.initState();
  }

  void pinIndexSetUp(String s) {
    // if(pinIndex==0)
    //   pinIndex == 1;
    //   else if(pinIndex < 4)
    //   pinIndex++;
    //   setPin(text);
    //   currentPin(pinIndex-1)=text;
    //   String strPin = "";
    //   curentPin.forEach((e){
    //     strPin += e;
    //   });
    //   if(pinIndex==4)
    //   print(strPin);
  }
  setPin(String text) {}
}

class PinScreen extends StatelessWidget {
  const PinScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int pinIndex = 0;
    // String currentPin = "";
    TextEditingController pinController = new TextEditingController();
    return Container(
      width: 340,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Center(
        child: TextField(
          controller: pinController,
          enabled: false,
          obscureText: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              border: InputBorder.none, filled: true, fillColor: Colors.white),
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}

class PinButonLogin extends StatelessWidget {
  final String num;
  final Function() onPressed;
  const PinButonLogin({
    Key? key,
    required this.num,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          shape: BoxShape.circle
          // color: Colors.white,
          ),
      height: 100,
      width: 100,
      child: MaterialButton(
        padding: EdgeInsets.all(8),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Center(
            child: Text(
          "$num",
          style: TextStyle(fontSize: 40, color: Colors.grey.shade500),
        )),
      ),
    );
  }
}
