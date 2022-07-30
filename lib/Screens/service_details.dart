import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayabi_dev/Constants/chat_button.dart';
import 'package:sayabi_dev/Constants/services/service_app_bar.dart';
import 'package:sayabi_dev/Constants/services/service_button.dart';
import 'package:sayabi_dev/Constants/services/service_header.dart';

class ServiceDetails extends StatelessWidget {
  final String imagePath;
  final String package;
  final String header;
  const ServiceDetails(
      {Key? key,
      required this.imagePath,
      required this.package,
      required this.header})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ServiceAppBar(),
      body: Column(
        children: [
          ServiceHeader(text: header),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          ServiceButton(text: package, imagePath: imagePath),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.02,
                horizontal: MediaQuery.of(context).size.width * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  color: const Color(0xffF37777),
                  child: const Text('a'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(double.infinity,
                        MediaQuery.of(context).size.height * 0.08)),
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor),
                  ),
                  child: Text(
                    "Order NOW",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: const ChatButton(),
    );
  }
}
