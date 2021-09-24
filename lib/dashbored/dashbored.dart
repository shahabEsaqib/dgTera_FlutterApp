import 'package:dgtera_tablet_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class DashboredScreen extends StatelessWidget {
  const DashboredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              Icons.sync,
              color: Colors.grey,
            ),
            tooltip: 'notification off',
            onPressed: () {
              // handle the press
            },
          ),
        ],
        title: Text("DGTERA",
            style: TextStyle(
              color: Colors.black,
            )),
        centerTitle: true,
        // shape: CustomShapeBorder(),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width * .55,
            child: Stack(
              // clipBehavior: Clip.hardEdge,
              children: [
              CustomPaint(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              painter: HeaderCurvedContainer(),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'User111',
                  style: TextStyle(
                    fontSize: 35.0,
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
            
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 8,
                height: MediaQuery.of(context).size.width / 8,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/google-logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 64,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text("Last login", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 4,),
                Text("21 Sep 2021", style: TextStyle(fontSize: 20,color: Colors.grey),),
                SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                onPressed: (){},
                child: Container(
                      width: 250,
                      height:80 ,
                      
                      child: Center(child: Text("Resume sesion",style: TextStyle(color: Colors.grey,fontSize:25))),
                    ),
              ),
                  SizedBox(width: 12,),
                  OutlinedButton(
                onPressed: (){},
                child: Container(
                      width: 250,
                      height:80 ,
                      
                      child: Center(child: Text("End session",style: TextStyle(color: Colors.grey,fontSize:25))),
                    ),
              ),
                ],
              ),
              SizedBox(height: 12,),
              OutlinedButton(
                onPressed: (){
                  MyDrawer();
                },
                child: Container(
                      width: 250,
                      height:80 ,
                      
                      child: Center(child: Text("Open Drawer",style: TextStyle(color: Colors.grey,fontSize:25))),
                    ),
              ),
              ],)
                        ],
                        ),
            ]),
          ),
          Expanded(
              child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.checklist_rtl,
                          color: Colors.white,
                          size: 40,
                        ),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 230),
                          child: Text(
                            "OPERATIONS",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                      ],
                    ),
                  )),
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index){return Divider();},
                    itemCount: 13,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        
                        leading: Text(
                          "POS",
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          "POS07",
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        
                      );
                      
                    }),
              ),
            ],
          ))
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.grey.shade300;
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 250.0, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}