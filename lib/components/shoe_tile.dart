// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../model/shoe.dart';

class shoeTile extends StatelessWidget {
  shoe shoes;
  shoeTile({super.key, required this.shoes});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 25),
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(shoes.imagePath),

              //description
              Text(
                shoes.description,
                style: TextStyle(color: Colors.grey[600]),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            shoes.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$ ' + shoes.price,
                          ),
                        ]),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          )),
                    )
                  ],
                ),
              )
            ]));
  }
}
