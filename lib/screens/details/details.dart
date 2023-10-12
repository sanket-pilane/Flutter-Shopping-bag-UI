import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_bag_demo/constants.dart';
import 'package:shopping_bag_demo/controller/product.dart';
import 'package:shopping_bag_demo/models/products.dart';
import 'package:shopping_bag_demo/screens/details/widgets/info_section.dart';
import 'package:shopping_bag_demo/screens/details/widgets/top_section.dart';

class DetailPage extends StatefulWidget {
  final Product products;
  const DetailPage({super.key, required this.products});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isCartAdd = false;
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.products.color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: widget.products.color,
        leading: IconButton(
          color: Colors.black,
          icon: SvgPicture.asset(
            kBackIcons,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: SvgPicture.asset(
              kcartIcons,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TopSection(
              color: widget.products.color!, imagePath: widget.products.image!),
          Text(
            widget.products.title!.toUpperCase(),
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "\$ ${widget.products.price.toString()},00",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InfoSection(desc: widget.products.description!),
          Container(
            height: 150,
            width: double.infinity,
            color: Color.fromARGB(255, 255, 230, 199),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: Icon(
                    isLiked ? Icons.favorite_rounded : Icons.favorite_outline,
                    size: 36,
                    color: Color.fromARGB(255, 190, 137, 71),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ProductController().addToFavourite(widget.products);
                      isCartAdd = !isCartAdd;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 24, horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 190, 137, 71),
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            isCartAdd
                                ? Icons.check_circle
                                : Icons.shopping_cart,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          isCartAdd ? "Added " : "Add To Cart",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
