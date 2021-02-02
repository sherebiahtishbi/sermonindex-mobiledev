import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                // color: Color.fromARGB(255, 123, 122, 57),
                // color: Color.fromRGBO(124, 123, 60, 1.0),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Image(Image.asset("sermonindex-top-large-2.png")),
                      Column(
                        children: [
                          Image(
                            image:
                                AssetImage("assets/sermonidex-top-large-2.png"),
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // Container(
          //   height: 400,
          //   // color: Colors.black12,
          // ),
        ],
      ),
    );
  }
}
