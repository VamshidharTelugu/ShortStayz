import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:short_stays/widgets/widgets.dart';

class HotelDetailScreen extends StatelessWidget {
  _buildCustomHotelDetail(String title, String value) {
    return Row(
      children: <Widget>[
        Text(
          "$title",
          style: GoogleFonts.lato(fontSize: 15),
        ),
        Spacer(),
        Text(
          "$value",
          style: GoogleFonts.lato(fontSize: 15),
        ),
      ],
    );
  }

  _buildAmenitites() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Icon(Icons.wifi),
        ),
        Expanded(
          child: Icon(Icons.ac_unit),
        ),
        Expanded(
          child: Icon(Icons.hot_tub),
        ),
        Expanded(
          child: Icon(Icons.tv),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar("Hotel Details"),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: <Widget>[
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/receptionpic.jpg"))),
          ),
          Text(
            "Dvr Mansion",
            style: GoogleFonts.lato(fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "MS Tower, Lady Curzon Rd, Tasker Town.house town",
            style: GoogleFonts.lato(
              textStyle: TextStyle(decoration: TextDecoration.underline),
              color: Color(0xff7151e4),
              fontSize: 18,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          _buildCustomHotelDetail("Check-in time", "5:39 PM or before"),
          Divider(),
          _buildCustomHotelDetail("Unmarried Couples", "Allowed"),
          Divider(),
          _buildCustomHotelDetail("Valid ID Proof", "Required"),
          Divider(),
          Text(
            "Amenities:",
            style: GoogleFonts.lato(fontSize: 18,color: Color(0xff7151e4)),
          ),
          Divider(
            color: Colors.black,
          ),
          _buildAmenitites(),
          Divider(
            color: Colors.black,
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            child: RaisedButton(
                child: Text(
                  "Select No.of Guests",
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
                ),
                color: Color(0xff7151e4),
                onPressed: () {},
              ),
          )
        ],
      ),
    );
  }
}
