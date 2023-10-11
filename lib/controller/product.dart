import 'package:shopping_bag_demo/models/products.dart';

class ProductController {
  List<Product> favourite = [];
  void addToFavourite(Product bag) {
    favourite.add(bag);
  }
}
