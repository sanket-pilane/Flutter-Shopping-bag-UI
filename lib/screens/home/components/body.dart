import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/products.dart';
import '../../details/details.dart';
import 'catergories.dart';
import 'item_cart.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPaddng),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Women',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CategorieTle(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddng,
                  crossAxisSpacing: kDefaultPaddng,
                  childAspectRatio: 0.75),
              itemBuilder: (context, index) => ItemCart(
                products: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailPage(products: products[index]),
                    )),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
