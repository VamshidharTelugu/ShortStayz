import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  
  buildHeader() {
    return Positioned(
      top: 30,
      left: 5,
      right: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search...",
                        hintStyle: TextStyle(color: Colors.grey)),
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: IconButton(
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {
                  print("implement search functionality");
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.grey[200],
        ),
        buildHeader(),
      ],
    );
  }
}
