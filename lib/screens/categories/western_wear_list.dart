import 'package:darji/screens/categories/sub_categories_list/product_list.dart';
import 'package:flutter/material.dart';

import '../../const/stream_const.dart';
import '../../views/widgets/custom_appBar.dart';

class WesternWearList extends StatefulWidget {
  const WesternWearList({Key? key}) : super(key: key);

  @override
  State<WesternWearList> createState() => _WesternWearListState();
}

class _WesternWearListState extends State<WesternWearList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(name: "WESTERN WEAR"),
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
              backgroundImage: AssetImage('assets/images/im4.jpeg'),
            ),
            title: Text(
              "Jackets",
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
                      ProductList(category: StreamConst.stream4),
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
              backgroundImage: AssetImage('assets/images/im18.jpeg'),
            ),
            title: Text(
              "Tuxedos",
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
                      ProductList(category: StreamConst.stream18),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
