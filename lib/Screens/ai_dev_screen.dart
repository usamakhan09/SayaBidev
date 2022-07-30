import 'package:flutter/material.dart';
import 'package:sayabi_dev/Screens/service_details.dart';

import '../Constants/chat_button.dart';
import '../Constants/services/service_app_bar.dart';
import '../Constants/services/service_button.dart';
import '../Constants/services/service_header.dart';

class AIDevelopment extends StatelessWidget {
  const AIDevelopment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ServiceAppBar(),
      body: Column(
        children: [
          const ServiceHeader(text: "ARTIFICAL INTELLIGENCE DEVELOPMENT"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ServiceDetails(
                    imagePath: "assets/images/gold_medal.png",
                    package: "Gold Package",
                    header: "ARTIFICAL INTELLIGENCE DEVELOPMENT"),
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
                    header: "ARTIFICAL INTELLIGENCE DEVELOPMENT"),
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
                    header: "ARTIFICAL INTELLIGENCE DEVELOPMENT"),
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
