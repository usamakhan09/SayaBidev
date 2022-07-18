import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset('assets/logo.png'),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "LETS WORK TOGETHER",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: <Widget>[
        // SizedBox(
        //   height: MediaQuery.of(context).size.height * 0.1,
        // ),
        // Container(
        //   height: MediaQuery.of(context).size.height * 0.5,
        //   child: Image.asset('assets/logo.png'),
        // ),
        // Align(
        //   alignment: Alignment.bottomCenter,
        //   child: Text(
        //     "LETS WORK TOGETHER",
        //     style: GoogleFonts.poppins(
        //       textStyle: TextStyle(
        //         color: Theme.of(context).primaryColor,
        //         fontSize: MediaQuery.of(context).size.height * 0.02,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // )
        // ],
        // ),
      ),
    );
  }
}
