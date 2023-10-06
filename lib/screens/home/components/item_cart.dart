import 'package:flutter/material.dart';
import 'package:shopping_bag_demo/constants.dart';
import '../../../models/products.dart';

class ItemCart extends StatelessWidget {
  final Product products;
  final Function() press;
  const ItemCart({super.key, required this.products, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddng),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: products.color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(products.image!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              products.title!,
              style: TextStyle(
                color: kTextLightColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              '\$${products.price!.toString()}',
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
