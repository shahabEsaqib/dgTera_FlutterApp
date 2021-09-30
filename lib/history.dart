import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({ Key? key }) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> with SingleTickerProviderStateMixin{
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "History",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          // foregroundColor: Colors.black,
        ),
        body: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width/2,
              color: Colors.grey[300],
              child: Column(
                children: [
                  new Container(
  decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
  child: new TabBar(
    controller: _controller,
    tabs: [
      new Tab(
        icon: const Icon(Icons.home),
        text: 'Address',
      ),
      new Tab(
        icon: const Icon(Icons.my_location),
        text: 'Location',
      ),
    ],
  ),
),
new Container(
  height: 80.0,
  child: new TabBarView(
    controller: _controller,
    children: <Widget>[
      new Card(
        child: new ListTile(
          leading: const Icon(Icons.home),
          title: new TextField(
            decoration: const InputDecoration(hintText: 'Search for address...'),
          ),
        ),
      ),
      new Card(
        child: new ListTile(
          leading: const Icon(Icons.location_on),
          title: new Text('Latitude: 48.09342\nLongitude: 11.23403'),
          trailing: new IconButton(icon: const Icon(Icons.my_location), onPressed: () {}),
        ),
      ),
    ],
  ),
),
                ],
              ),
            ),
            Expanded(child: Container(
              child: Column(
                children: [

                ],
              ),
            ))
          ],
        ),
        
    );
  }
}