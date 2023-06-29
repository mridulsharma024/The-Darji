import 'package:darji/screens/categories/sub_categories_list/product_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/stream_const.dart';
import '../../views/widgets/custom_appBar.dart';

class EthnicWearList extends StatefulWidget {
  const EthnicWearList({Key? key}) : super(key: key);

  @override
  State<EthnicWearList> createState() => _EthnicWearListState();
}

class _EthnicWearListState extends State<EthnicWearList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(name: "ETHNIC WEAR"),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/im5.jpeg'),
            ),
            title: Text(
              "Kurta",
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
                      ProductList(category: StreamConst.stream5),
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
              backgroundImage: AssetImage('assets/images/im10.jpeg'),
            ),
            title: Text(
              "Pyjamas",
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
                      ProductList(category: StreamConst.stream10),
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
              backgroundImage: AssetImage('assets/images/im3.jpeg'),
            ),
            title: Text(
              "Dhoti",
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
                      ProductList(category: StreamConst.stream3),
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
              backgroundImage: AssetImage('assets/images/im12.jpeg'),
            ),
            title: Text(
              "Sherwani",
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
                      ProductList(category: StreamConst.stream12),
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
              backgroundImage: AssetImage('assets/images/im2.jpeg'),
            ),
            title: Text(
              "Churidar",
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
                      ProductList(category: StreamConst.stream2),
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
              backgroundImage: AssetImage('assets/images/im7.jpeg'),
            ),
            title: Text(
              "Nehru Jacket",
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
                      ProductList(category: StreamConst.stream7),
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
              backgroundImage: AssetImage('assets/images/im8.jpeg'),
            ),
            title: Text(
              "Paithani Suit",
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
                      ProductList(category: StreamConst.stream8),
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
              backgroundImage: AssetImage('assets/images/im11.jpeg'),
            ),
            title: Text(
              "Salwar",
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
                      ProductList(category: StreamConst.stream11),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
