import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.deepOrange,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "C",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.orange,
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg",
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 56.0,
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg",
            ),
          ),
          Text(
            "Arturo Solis",
            style: GoogleFonts.adamina(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Flutter Developer",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 3.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
            width: 230.0,
            child: Divider(
              thickness: 0.5,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 18.0),
            color: Colors.white,
            child: ListTile (
              leading: Icon(
                Icons.phone,
                color: Colors.orange,
              ),
              title: Text(
                "+51 940172709",
                style: TextStyle(
                  color: Colors.orange
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 18.0),
            color: Colors.white,
            child: ListTile (
              leading: Icon(
                Icons.mail,
                color: Colors.orange,
              ),
              title: Text(
                "asolisf@uncp.edu.pe",
                style: TextStyle(
                    color: Colors.orange
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
