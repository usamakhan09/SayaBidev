import 'package:flutter/material.dart';
import 'package:sayabi_dev/Constants/chat_button.dart';
import 'package:sayabi_dev/Constants/service_app_bar.dart';
import 'package:sayabi_dev/Constants/service_button.dart';
import 'package:sayabi_dev/Constants/service_header.dart';

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
