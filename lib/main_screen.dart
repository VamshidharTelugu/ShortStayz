import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:short_stays/screens/map_screen.dart';
import 'package:short_stays/widgets/widgets.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void onTap(int selectedIndex) {
    setState(() {
      this.currentIndex = selectedIndex;
      print(currentIndex);
    });
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      elevation: 0.0,
      currentIndex: currentIndex,
      backgroundColor: Colors.white,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            // color: Color(0xff7151e4),
          ),
          title: Text(
            "Explore",
            //   style: TextStyle(color: Colors.grey),
          ),
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.location_city,
              // color: Color(0xff7151e4),
            ),
            title: Text(
              "Bookings",
              // style: TextStyle(color: Colors.blue),
            )),
      ],
    );
  }
  Drawer buildDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 150,
              //color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  child: Text(
                    "E",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Text(
                  "Hi Elon Musk!",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.group_add),
            title: Text("Invite friends"),
            trailing: IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                print("implement friends invitationn");
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.local_atm),
            title: Text("My Credits"),
            trailing: IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                print("need to navigate to profile screen");
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.group_add),
            title: Text("How it works?"),
            trailing: IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                print("Need to show intro screen");
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.live_help),
            title: Text("FAQ"),
            trailing: IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                print("need to navigate to profile screen");
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text("Support"),
            trailing: IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                print("need to navigate to profile screen");
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(),
      backgroundColor: Colors.grey[200],
     // appBar: buildAppBar("Map"),
      body: MapScreen(),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
}
