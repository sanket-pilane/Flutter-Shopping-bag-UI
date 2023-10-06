import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategorieTle extends StatefulWidget {
  const CategorieTle({super.key});

  @override
  State<CategorieTle> createState() => _CategorieTleState();
}

class _CategorieTleState extends State<CategorieTle> {
  List<String> categories = ['Hand Bags', 'Jwellary', "Footwear", 'Dresses'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return categoriesTile(index);
        },
      ),
    );
  }

  Widget categoriesTile(int index) => InkWell(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddng),
          child: Column(
            children: [
              Text(
                categories[index],
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                height: 2,
                margin: EdgeInsets.all(5),
                width: 25,
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? Colors.black
                      : Colors.transparent,
                ),
              )
            ],
          ),
        ),
      );
}
