// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  final Color color;
  final String imagePath;

  const TopSection({
    Key? key,
    required this.color,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.brown,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink.shade400,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                imagePath,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
