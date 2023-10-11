import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_bag_demo/screens/home/components/favourite_page.dart';

import '../../../constants.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      color: Colors.black,
      onPressed: () {},
      icon: SvgPicture.asset(
        kBackIcons,
      ),
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
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => FavourtiItemPage(),
            ));
          },
          icon: Icon(
            Icons.favorite_outline,
            size: 30,
          )),
    ],
  );
}
