import 'package:darji/const/stream_const.dart';
import 'package:darji/screens/categories/sub_categories_list/product_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../views/widgets/custom_appBar.dart';

class FormalWearList extends StatefulWidget {
  const FormalWearList({Key? key}) : super(key: key);

  @override
  State<FormalWearList> createState() => _FormalWearListState();
}

class _FormalWearListState extends State<FormalWearList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(name: "FORMAL WEAR"),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/im13.jpeg'),
            ),
            title: Text(
              "Shirts",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductList(category: StreamConst.stream13),
                ),
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
              "Pants",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductList(category: StreamConst.stream9),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/im15.jpeg'),
            ),
            title: Text(
              "Suit",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductList(category: StreamConst.stream15),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/im17.jpeg'),
            ),
            title: Text(
              "Trousers",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductList(category: StreamConst.stream17),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
