import 'package:flutter/material.dart';


class AppBarScreen extends StatelessWidget with PreferredSizeWidget {
  final Size preferredSize;

  AppBarScreen() : preferredSize = Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      actions: [
        IconButton(
            icon: const Icon(Icons.notifications_off,color: Colors.grey,),
            tooltip: 'notification off',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.sync,color: Colors.grey,),
            tooltip: 'Sync',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.wifi_rounded,color: Colors.grey,),
            tooltip: 'wifi',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.print,color: Colors.grey,),
            tooltip: 'orint',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.message_outlined,color: Colors.deepOrange,),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
      ],
      title: Text("DGTERA" ,style: TextStyle(color: Colors.black,)),      
      centerTitle: true,
      // shape: CustomShapeBorder(),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black,opacity: 0.5),
    );
  }
}

// class CustomShapeBorder extends ContinuousRectangleBorder {
//   @override
//   Path getOuterPath(Rect rect, {TextDirection? textDirection}) {

//     // final double innerCircleRadius = 150.0;

    
//     double x = 150, y = 45, r = 0.5;
//     Path path = Path()
//   ..addRRect(RRect.fromRectAndCorners(rect))
//   ..moveTo(rect.bottomLeft.dx + 300, rect.bottomCenter.dy)
//   ..relativeQuadraticBezierTo(((-x / 2)+(x/6)) * (1 - r), 0, -x / 2 * r, y * r)
//   ..relativeQuadraticBezierTo(-x / 6 * r, y * (1 - r), -x / 2 * (1 - r), y * (1 - r))
//   ..relativeQuadraticBezierTo(((-x / 2)+(x/6)) * (1 - r), 0, -x / 2 * (1 - r), -y * (1 - r))
//   ..relativeQuadraticBezierTo(-x/6*r , -y * r, -x / 2 * r, -y * r);
//     return path;
//   }
// }
