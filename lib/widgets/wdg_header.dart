import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 123, 122, 57),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 120, 10, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * .80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white10),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 10, 5),
                    child: TextField(
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Search"),
                      onChanged: (value) => {},
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white54),
                    child: Center(
                      child: IconButton(
                        icon: Icon(Icons.search_rounded),
                        onPressed: () {},
                        iconSize: 24,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
