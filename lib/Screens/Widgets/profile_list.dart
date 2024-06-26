import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileList extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final Color backgroundColor; // Tambahkan ini

  ProfileList({
    required this.image,
    required this.title,
    required this.color,
    required this.backgroundColor, // Tambahkan ini
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              // Tambahkan ini
              color: backgroundColor, // Tambahkan ini
              borderRadius: BorderRadius.circular(10), // Tambahkan ini
            ),
            child: Row(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.1500,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 247, 250, 247),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(image),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.5800,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      title,
                      style: GoogleFonts.inter(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          color: color),
                    ),
                  ),
                ]),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.1100,
                  decoration: const BoxDecoration(),
                  child: Image.asset("lib/icons/forward.png")),
            ]),
          ),
        ],
      ),
    );
  }
}
