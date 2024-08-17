import 'package:flutter/material.dart';

class WishlistContainer extends StatelessWidget {
  const WishlistContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.red,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index){
            return Container(
              height: 100,
              width: 150,
              margin: EdgeInsets.only(bottom: 600, top: 20, left: 10, right: 10),
              // padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
              ),
              child: Icon(
                Icons.ac_unit_outlined,color: Colors.white,
              ),
            );
          }),
    );
  }
}
