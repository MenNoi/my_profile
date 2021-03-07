import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
          "My_Profile",
        )),
        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start, 
                ),
              ),
              Container(
                width: double.infinity,
                height: 150,
                margin: EdgeInsets.all(10),
                child: Text("My_Profile:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,)
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
