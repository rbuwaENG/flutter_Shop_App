import 'package:flutter/material.dart';
import 'package:shop/model/shoe.dart';

import '../components/shoe_tile.dart';

class shopPage extends StatefulWidget {
  const shopPage({super.key});

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //search bar
      Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.search)
            ],
          )),

      //message
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Text('Everyone flies.. some fly longer than others'),
      ),

      //hotpicks
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'Hot Picks ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(
              'See All',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),

      const SizedBox(
        height: 10,
      ),

      Expanded(
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                shoe shoes = shoe(
                    name: 'Nike Air Max 270',
                    price: '240',
                    imagePath: 'lib/images/shoe1.png',
                    description: 'shoe description');
                return shoeTile(
                  shoes: shoes,
                );
              }))
    ]);
  }
}
