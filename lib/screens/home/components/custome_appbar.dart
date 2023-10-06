import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

AppBar buildAppBar() {
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
        onPressed: () {},
        icon: SvgPicture.asset(
          kcartIcons,
          color: Colors.black,
        ),
      ),
    ],
  );
}
