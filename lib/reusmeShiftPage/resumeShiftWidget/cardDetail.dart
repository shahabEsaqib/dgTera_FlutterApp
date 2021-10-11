import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
