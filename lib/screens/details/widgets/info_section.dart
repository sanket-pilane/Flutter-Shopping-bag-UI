// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoSection extends StatelessWidget {
  final String desc;
  const InfoSection({
    Key? key,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "DESCRIPTION AND DETAILS",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "DIMENSTIONS",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      "35.0 25.0 13.5 CM",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
