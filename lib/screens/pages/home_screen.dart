import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:darji/screens/categories/casual_wear_list.dart';
import 'package:darji/screens/categories/ethnic_wear_list.dart';
import 'package:darji/screens/categories/western_wear_list.dart';
import 'package:darji/screens/pages/products_screen.dart';
import 'package:darji/screens/pages/welcome_screen.dart';
import 'package:darji/views/widgets/category_filter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../auth/auth_provider.dart';
import '../../const/color_const.dart';
import '../../models/form_model.dart';
import '../../views/widgets/custom_appBar.dart';
import '../categories/formal_wear_list.dart';
import '../product Details/product_details.dart';
import 'category_list.dart';
import 'category_screen.dart';

String? name = ' ';
String? email = ' ';
String? bio = ' ';
String? profilePic = "assets/images/default_image.png";
String? phoneNumber = ' ';
String? aadhar = ' ';
String? uid = ' ';

Color white = Colors.white;

class HomeScreen extends StatefulWidget {
  static double height10 = 0.0;
  static double width10 = 0.0;
  final String category;

  const HomeScreen({super.key, required this.category});

  static void mediaQueryHeightWidth(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    height10 = Get.mediaQuery.size.height * 0.0118;
    width10 = Get.mediaQuery.size.width * 0.0118 * 2.1;
    print(height10);
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  Future<void> _getData() async {
    final snapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    if (snapshot.exists) {
      final data = snapshot.data() as Map<String, dynamic>;
      setState(() {
        name = data['name'];
        aadhar = data['aadhar'];
        bio = data['bio'];
        email = data['email'];
        profilePic = data['profilePic'];
        phoneNumber = data['phoneNumber'];
        uid = data['uid'];
      });
    }
  }

  void navigateto({required BuildContext context, required String cat}) {
    // Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return ProductsScreen(
            category: cat,
          );
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  final List<String> imgList = [
    'assets/images/7.jpg',
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
  ];

  var currentIndex = 0;
  // User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    Stream<QuerySnapshot> fetchStream() {
      Stream<QuerySnapshot> stream;
      stream = FirebaseFirestore.instance.collection("product").snapshots();
      return stream;
    }

    return Scaffold(
      appBar: appbar(name: "The Darji"),
      drawer: const Drawer1(),
      body: ListView(
        children: [
          CarouselSlider(
            items: imgList
                .map((item) => Container(
                      child: Center(
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: 1000,
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3),
                  child: Text(
                    "CATEGORIES",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CategoryList()),
                    );
                  },
                  child: Row(
                    children: [
                      Text("See All"),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: 90,
              height: 90,
              child: ListView(
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormalWearList()),
                      );
                    },
                    child: Container(
                      width: 100,

                      // height: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/im13.jpeg'),
                          ),
                          // Image.asset(
                          //   'assets/images/im1.jpeg',
                          //   // height: 5,
                          //   // fit: BoxFit.cover,
                          // ),
                          Text("Formal Wear")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EthnicWearList()),
                      );
                      // navigateto(context: context, cat: "Coat");
                    },
                    child: Container(
                      width: 100,
                      //  height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/im5.jpeg'),
                          ),
                          Text("Ethnic Wear")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WesternWearList()),
                      );
                    },
                    child: Container(
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/im9.jpeg'),
                          ),
                          Text("Western Wear")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CasualWearList()),
                      );
                    },
                    child: Container(
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/im1.jpeg'),
                          ),
                          Text("Casual Wear")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
            ),
          ),
          //filter(context),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "RECOMMENDED COLLECTIONS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
                      itemCount: datasnapshot.docs.length > 6
                          ? 6
                          : datasnapshot.docs.length,
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
                                    height: 170.0,
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
                    return const Center(
                      child: Text("No Product available",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300)),
                    );
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
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: ColorConst.primaryColor,
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: 'Rent',
          elevation: 4,
          child: Icon(Icons.add),
          onPressed: () => setState(() {
            //_selectedPageIndex = 2;
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CategoryScreen(
                        firebaseuser: user!,
                      )),
            );
            // CategoryScreen());
          }),
        ),
      ),
    );
  }
}

class Drawer1 extends StatefulWidget {
  const Drawer1({Key? key}) : super(key: key);

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Drawer(
      backgroundColor: ColorConst.whiteColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: ColorConst.primaryColor,
              image: DecorationImage(
                  // fit: BoxFit.cover,
                  // image: AssetImage("assets/images/bg.jpeg"),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.05), BlendMode.dstATop),
                  image: AssetImage(
                    "assets/images/bg1.png",
                  )),
            ),
            accountName: Text(
              name.toString(),
              style: const TextStyle(
                color: ColorConst.whiteColor,
              ),
            ),
            accountEmail: Text(
              email.toString(),
              style: const TextStyle(
                color: ColorConst.whiteColor,
              ),
            ),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(profilePic.toString()),
                  )),
            ),
            // CircleAvatar(
            //   child: ClipOval(
            //     child: profilePic == "assets/images/default_image.png"
            //         ? Image.asset(StringConst.defaultImage)
            //         : Image.network(profilePic.toString()),
            //   ),
            // ),
          ),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                if (Get.currentRoute == '/' ||
                    Get.currentRoute == '/HomeScreen') {
                  Get.back();
                }
              }),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () async {
              Navigator.pop(context);
              ap.userSignOut().then((value) => Navigator.of(context)
                  .pushAndRemoveUntil(
                      MaterialPageRoute(builder: (c) => WelcomeScreen()),
                      (route) => false));
            },
          ),
        ],
      ),
    );
  }
}
