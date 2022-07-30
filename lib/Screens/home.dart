import 'package:flutter/material.dart';
import 'package:sayabi_dev/Constants/chat_button.dart';
import 'package:sayabi_dev/Constants/services/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> cities = Services.cities;
  String? selecteditem = 'Our Services';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: Scaffold(
          body: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06,
                right: MediaQuery.of(context).size.width * 0.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: MediaQuery.of(context).size.height * 0.06,
                    color: const Color.fromRGBO(231, 27, 3, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  "Let’s Grow together",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: MediaQuery.of(context).size.height * 0.04,
                    color: const Color.fromRGBO(231, 27, 3, 1),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.asset("assets/images/line.png"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: const Color(0xffF37777),
                  ),
                  // color: Color(0xff6DC9EF),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: DropdownButtonFormField<String>(
                    icon: Image.asset("assets/images/circleUp.png"),
                    iconSize: MediaQuery.of(context).size.height * 0.1,
                    dropdownColor: const Color(0xffFDABAB),
                    iconEnabledColor: Colors.white,
                    decoration: InputDecoration(
                      // fillColor: Color(),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: const BorderSide(
                            width: 3,
                            color: Color(0xffF37777),
                          )),
                    ),
                    value: selecteditem,
                    items: cities
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.035,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'),
                              ),
                            ))
                        .toList(),
                    onChanged: (item) async {
                      setState(() => selecteditem = item);
                      setState(() {
                        selecteditem = 'Our Services';
                      });
                      Navigator.of(context).pushNamed('/$item');
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                InkWell(
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
                              left: MediaQuery.of(context).size.width * 0.02),
                          child: Text(
                            " About Us",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.035,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.04),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                            child: Image.asset("assets/images/aboutus.png"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: const ChatButton()),
    );
  }
}
