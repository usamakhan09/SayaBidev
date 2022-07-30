import 'package:flutter/material.dart';

class ServiceButton extends StatelessWidget {
  final String text;
  final String imagePath;
  const ServiceButton({Key? key, required this.text, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: const Color(0xffF37777),
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const Spacer(),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                child: Image.asset(imagePath),
              ),
            )
          ],
        ),
      ),
    );
  }
}
