import 'package:darji/screens/categories/sub_categories_list/product_list.dart';
import 'package:flutter/material.dart';

import '../../const/stream_const.dart';
import '../../views/widgets/custom_appBar.dart';

class CasualWearList extends StatefulWidget {
  const CasualWearList({Key? key}) : super(key: key);

  @override
  State<CasualWearList> createState() => _CasualWearListState();
}

class _CasualWearListState extends State<CasualWearList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(name: "CASUAL WEAR"),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/im16.jpeg'),
            ),
            title: Text(
              "T-Shirts",
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
                      ProductList(category: StreamConst.stream16),
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
              backgroundImage: AssetImage('assets/images/im1.jpeg'),
            ),
            title: Text(
              "Cargo-Pants",
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
                      ProductList(category: StreamConst.stream1),
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
              backgroundImage: AssetImage('assets/images/im14.jpeg'),
            ),
            title: Text(
              "Shorts",
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
                      ProductList(category: StreamConst.stream14),
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
              backgroundImage: AssetImage('assets/images/im6.jpeg'),
            ),
            title: Text(
              "Lowers",
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
                      ProductList(category: StreamConst.stream6),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
