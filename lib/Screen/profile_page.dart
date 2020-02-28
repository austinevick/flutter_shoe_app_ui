import 'package:flutter/material.dart';

import '../main.dart';

const textstyle = TextStyle(
  fontSize: 18,
);

class UserProfilePage extends StatelessWidget {
  static UserDetails userDetails = UserDetails(
      name: 'Janet Mary',
      email: 'janetmary@gmail.com',
      image: 'asset/peak_lady.jpg');
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2.0,
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(decoration: BoxDecoration(color: Color(0xff0028ff)),
            accountName: Text(
              userDetails.name,
              style: textstyle,
            ),
            accountEmail: Text(
              userDetails.email,
              style: textStyle,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(userDetails.image),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.collections,color: Colors.blue,
            ),
            title: Text(
              'Collections',
              style: textstyle,
            ),
          ),

          
        ],
      ),
    );
  }
}

class UserDetails {
  final String name;
  final String email;
  final String image;
  UserDetails({this.email, this.image, this.name});
}
