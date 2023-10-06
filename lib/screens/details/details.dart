import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_bag_demo/constants.dart';
import 'package:shopping_bag_demo/models/products.dart';

class DetailPage extends StatelessWidget {
  final Product products;
  const DetailPage({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: products.color,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: products.color,
          leading: IconButton(
            icon: SvgPicture.asset(
              kBackIcons,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                kSearchIcons,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                kcartIcons,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Center(child: Text("Detail ")));
  }
}
