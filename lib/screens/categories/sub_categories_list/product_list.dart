import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:darji/views/widgets/custom_appBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../const/color_const.dart';
import '../../../models/form_model.dart';
import '../../product Details/product_details.dart';

class ProductList extends StatefulWidget {
  final String category;
  const ProductList({super.key, required this.category});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  User? user = FirebaseAuth.instance.currentUser;
  Stream<QuerySnapshot> fetchStream() {
    Stream<QuerySnapshot> stream;
    stream = FirebaseFirestore.instance
        .collection("product")
        .where("category", isEqualTo: widget.category)
        .snapshots();

    return stream;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(name: widget.category),
      body: ListView(
        children: [
          StreamBuilder(
            stream: fetchStream(),
            //FirebaseFirestore.instance.collection("product").snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                if (snapshot.hasData) {
                  QuerySnapshot datasnapshot = snapshot.data as QuerySnapshot;
                  if (datasnapshot.docs.length > 0) {
                    print(datasnapshot.docs.length.toString());
                    return GridView.builder(
                      padding: EdgeInsets.only(top: 15.0),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 1),
                      itemCount: datasnapshot.docs.length,
                      itemBuilder: (context, index) {
                        FormModel formmodel = FormModel.fromMap(
                            datasnapshot.docs[index].data()
                                as Map<String, dynamic>);
                        //print(index.toString());
                        return Padding(
                          padding: EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ProductDetails(
                                      firebaseuser: user!,
                                      formmodel: formmodel,
                                    );
                                  },
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: ColorConst.stream1,
                                  borderRadius: BorderRadius.circular(10)),
                              // padding: EdgeInsets.symmetric(
                              //     vertical: 15.0, horizontal: 15),
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 180.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                              formmodel.profilepic.toString(),
                                            ))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    child: FittedBox(
                                      child: Text(
                                        formmodel.productName.toString(),
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 7.0),
                                    child: Text(
                                      formmodel.location.toString(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       vertical: 3.0),
                                  //   child: Text(
                                  //     "Rs " + formmodel.price.toString(),
                                  //     style: TextStyle(
                                  //         color: Colors.green,
                                  //         fontWeight: FontWeight.bold,
                                  //         fontSize: 15.0),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(
                        child: Text("No Product available",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300)));
                  }
                } else if (snapshot.hasError) {
                  return const Center(
                      child: Text("check your internet connection"));
                } else {
                  return const Center(
                    child: Text("No Product available"),
                  );
                }
              } else {
                return Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(
                      //  backgroundColor: Colors.red,
                      valueColor: new AlwaysStoppedAnimation<Color>(
                          ColorConst.primaryColor),
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
