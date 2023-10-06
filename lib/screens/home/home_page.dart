import 'package:flutter/material.dart';
import 'package:shopping_bag_demo/screens/home/components/body.dart';
import 'components/custome_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: BodyPage());
  }
}
