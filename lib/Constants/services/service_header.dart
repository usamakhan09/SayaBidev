import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceHeader extends StatelessWidget {
  final String text;
  const ServiceHeader({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: MediaQuery.of(context).size.height * 0.038,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
