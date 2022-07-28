import 'package:flutter/material.dart';

import '../Constants/chat_button.dart';
import '../Constants/service_app_bar.dart';
import '../Constants/service_button.dart';
import '../Constants/service_header.dart';

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
          const ServiceButon(
            text: "Gold Package",
            imagePath: 'assets/images/gold_medal.png',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const ServiceButon(
            text: "Silver Package",
            imagePath: 'assets/images/silver_medal.png',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const ServiceButon(
            text: "Bronze Package",
            imagePath: 'assets/images/bronze_medal.png',
          ),
        ],
      ),
      floatingActionButton: const ChatButton(),
    );
  }
}
