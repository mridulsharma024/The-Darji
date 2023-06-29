import 'package:darji/screens/categories/casual_wear_list.dart';
import 'package:darji/screens/categories/ethnic_wear_list.dart';
import 'package:darji/screens/categories/western_wear_list.dart';
import 'package:darji/views/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

import '../categories/formal_wear_list.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);
  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(name: "CATEGORY LIST"),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/im13.jpeg'),
            ),
            title: Text(
              "Formal Wear",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FormalWearList()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/im5.jpeg'),
            ),
            title: Text(
              "Ethnic Wear",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EthnicWearList()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/im9.jpeg'),
            ),
            title: Text(
              "Western Wear",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WesternWearList()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/im1.jpeg'),
            ),
            title: Text(
              "Casual Wear",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CasualWearList()),
              );
            },
          ),
        ),
      ]),
    );
  }
}
