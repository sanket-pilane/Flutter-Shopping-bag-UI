import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shopping_bag_demo/controller/product.dart';

class FavourtiItemPage extends StatefulWidget {
  const FavourtiItemPage({super.key});

  @override
  State<FavourtiItemPage> createState() => _FavourtiItemPageState();
}

class _FavourtiItemPageState extends State<FavourtiItemPage> {
  ProductController productController = ProductController();

  @override
  Widget build(BuildContext context) {
    final bagList = productController.favourite;
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
            child: ListView.builder(
          itemCount: productController.favourite.length,
          itemBuilder: (context, index) {
            return Text(bagList[index].title!);
          },
        )));
  }
}
