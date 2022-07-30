// ignore: file_names
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.red,
                    ))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                const Spacer(),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image.asset("assets/images/aboutusTopHeader.png")),
                const Spacer()
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                const Spacer(),
                Text(
                  "About Us",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: MediaQuery.of(context).size.height * 0.06,
                    color: const Color.fromRGBO(231, 27, 3, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                )
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.47,
                // color: Color(0xffFDABAB),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFDABAB),
                ),
                child: Column(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "SayabiDevs is a startup birthed by passionate and experienced domain experts and motivated individuals who love working together as a team, and is here to provide effective and on-time solutions to your IT problems. We at SayabiDevs put in our all to elevate your business to the highest level and plan on soaring high in the world of IT. For us, every opportunity is a path we shall bravely endeavor, and every client is a family that we love, respect, and cherish. We love to help businesses flourish so who else would your business Rev, but SayabiDevs! ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    Center(
                        child: Container(
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(20),
                      // ),
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: const Center(
                          child: Text(
                        "apply Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold),
                      )),
                    )),
                    const Spacer(
                      flex: 1,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
