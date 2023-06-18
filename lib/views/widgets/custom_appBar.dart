import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../const/color_const.dart';

AppBar appbar({required String name}) {
  return AppBar(
    flexibleSpace: Container(
      decoration: BoxDecoration(
          //color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.05), BlendMode.dstATop),
              image: AssetImage(
                "assets/images/bg1.png",
              ))),
    ),
    elevation: 0,
    centerTitle: true,
    toolbarHeight: 60,
    backgroundColor: ColorConst.primaryColor,
    systemOverlayStyle: const SystemUiOverlayStyle().copyWith(
        // statusBarColor: ColorConst.primaryColor,
        //statusBarColor: Colors.transparent,
        ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(9 * 3),
      ),
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Image.asset(
        //   ImageConst.appLogo,
        //   height: AppSizes.height10 * 9,
        // ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, wordSpacing: 2),
              ),
            ),
            //SizedBox(height: AppSizes.height10 * 1.5),
            // Image.asset(
            //   ImageConst.appLogo,
            //   height: AppSizes.height10 * 2.7,
            // ),
          ],
        ),
      ],
    ),
  );
}
