import 'package:darji/views/widgets/custom_appBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../const/color_const.dart';
import '../../models/form_model.dart';

class ProductDetails extends StatefulWidget {
  final User firebaseuser;
  final FormModel formmodel;
  const ProductDetails(
      {super.key, required this.firebaseuser, required this.formmodel});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(name: "Product Details"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            imageProfile(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Container(
                // height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConst.stream,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.formmodel.productName.toString(),
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(" starting from"),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            size: 18,
                            color: Colors.green,
                            weight: 8,
                          ),
                          Text(
                            widget.formmodel.price.toString(),
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      aboutTextField(),
                      SizedBox(
                        height: 10,
                      ),
                      // priceTextField(),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // durationfield(),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Locationfield(),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.note,
                            size: 15,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            widget.formmodel.location.toString(),
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }

  Widget imageProfile() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.formmodel.profilepic.toString())
                    as ImageProvider)),
      ),
    );
  }

  Widget Locationfield() {
    return Text(
      "Short Description ",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20,
        // height: 1,
        // letterSpacing: 2,
      ),
    );
  }

  Widget nameTextField() {
    return Text(
      "PRODUCT_NAME",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        height: 1,
        letterSpacing: 2,
      ),
    );
  }

  Widget durationfield() {
    return Text(
      "Duration",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 22,
        height: 1,
        letterSpacing: 2,
      ),
    );
  }

  Widget priceTextField() {
    return Text(
      "Price",
      //textWidthBasis: TextWidthBasis.longestLine,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 22,
        height: 1,
        letterSpacing: 2,
      ),
    );
  }

  Widget aboutTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          //textWidthBasis: TextWidthBasis.longestLine,
          textAlign: TextAlign.left,
          style: TextStyle(
            //color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            // height: 1,
            // letterSpacing: 2,
          ),
        ),
        Text(
          widget.formmodel.description.toString(),
          textWidthBasis: TextWidthBasis.longestLine,
          style: TextStyle(
            //color: Colors.black,
            //fontWeight: FontWeight.bold,
            fontSize: 15,
            height: 1,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
