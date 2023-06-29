import 'package:darji/views/widgets/custom_appBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../const/color_const.dart';
import '../../const/stream_const.dart';
import '../../utils/app_sizes.dart';
import '../../views/widgets/custom_card_widgets/custom_card_widget_1.dart';
import 'details_screen.dart';

class CategoryScreen extends StatefulWidget {
  final User firebaseuser;

  const CategoryScreen({super.key, required this.firebaseuser});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(name: 'CATEGORY'),
      body: SafeArea(
        child: Padding(
            padding: AppSizes.horizontalPadding20,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream1,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(1),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream1,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream2,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(2),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream2,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream3,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(3),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream3,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream4,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(4),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream4,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream5,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(5),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream5,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream6,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(6),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream6,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream7,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(7),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream7,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream8,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(8),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream8,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream9,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(9),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream9,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream10,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream10,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream11,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(11),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream11,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream12,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream12,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream13,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(13),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream13,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream14,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(14),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream14,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream15,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(15),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream15,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream16,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(16),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream16,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream17,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(17),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream17,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCardWidget1(
                    color: ColorConst.stream,
                    text: StreamConst.stream18,
                    image: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        StreamConst.streamImageConst(18),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Details(
                              firebaseuser: widget.firebaseuser,
                              category: StreamConst.stream18,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
