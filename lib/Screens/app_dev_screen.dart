import 'package:flutter/material.dart';
import 'package:sayabi_dev/Constants/chat_button.dart';
import 'package:sayabi_dev/Constants/services/service_app_bar.dart';
import 'package:sayabi_dev/Constants/services/service_button.dart';
import 'package:sayabi_dev/Constants/services/service_header.dart';
import 'package:sayabi_dev/Screens/service_details.dart';

class AppDevelopment extends StatelessWidget {
  const AppDevelopment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ServiceAppBar(),
      body: Column(
        children: [
          const ServiceHeader(text: "MOBILE APP DEVELOPMENT"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  const ServiceDetails(
                    imagePath: "assets/images/gold_medal.png",
                    package: "Gold Package",
                    header: "MOBILE APP DEVELOPMENT"),
              ),
            ),
            child: const ServiceButton(
              text: "Gold Package",
              imagePath: 'assets/images/gold_medal.png',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ServiceDetails(
                    imagePath: "assets/images/silver_medal.png",
                    package: "Silver Package",
                    header: "MOBILE APP DEVELOPMENT"),
              ),
            ),
            child: const ServiceButton(
              text: "Silver Package",
              imagePath: 'assets/images/silver_medal.png',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ServiceDetails(
                    imagePath: "assets/images/bronze_medal.png",
                    package: "Bronze Package",
                    header: "MOBILE APP DEVELOPMENT"),
              ),
            ),
            child: const ServiceButton(
              text: "Bronze Package",
              imagePath: 'assets/images/bronze_medal.png',
            ),
          ),
        ],
      ),
      floatingActionButton: const ChatButton(),
    );
  }
}
