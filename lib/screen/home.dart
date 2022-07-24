import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List<String> cities=['Our Services','App Development','Web Development','AI Development','Data Science Dev'];
  String? selecteditem='Our Services';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         margin: const EdgeInsets.only(top: 44),
          padding: const EdgeInsets.only(left: 30,right: 30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Welcome",style: TextStyle(fontFamily: 'Poppins',fontSize: 48,color:Color(0xffE71B1E) ,fontWeight: FontWeight.bold,),),
              const SizedBox(height: 10,),
              const Text(" let’s Grow togehter",style: TextStyle(fontFamily: 'Poppins',fontSize: 36,color:Color(0xffE71B1E) ,fontWeight: FontWeight.w700,),),
              const SizedBox(height: 10,),
              Image.asset("assets/images/line.png"),
              const SizedBox(height: 50,),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF37777),
                  ),
                  // color: Color(0xff6DC9EF),
                  width: 368,
                  height: 70,
                  child: DropdownButtonFormField<String>(
                    icon: Image.asset("assets/images/circleUp.png"),
                    dropdownColor: const Color(0xffFDABAB),

                    iconEnabledColor: Colors.white,
                    decoration: InputDecoration(
                      // fillColor: Color(),
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 3,color:Color(0xffF37777),)

                      ),
                    ),

                    value: selecteditem,
                    items:cities.map((item) => DropdownMenuItem<String>(
                      value: item,
                      child:Text(item,style: const TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),),
                    )).toList(),
                    onChanged: (item)async{
                      setState(()=>selecteditem=item);
                      setState(() {
                        showDialog(context: context, builder: (context){return const Center(child: CircularProgressIndicator(value: 1,color: Colors.black,),);});
                        selecteditem='Our Services';
                      });

                      setState(() {
                        // selecteditem=cities[0];
                        Navigator.pop(context);
                      });
                      Navigator.of(context)
                          .push(
                          MaterialPageRoute(builder: (_) =>  const homeScreen()));

                    },

                  )

              ),
              const SizedBox(height: 60,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffF37777),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(
                        fontSize: 32,

                          fontWeight: FontWeight.bold)),
                  onPressed: (){}, child: Container(
                child: Center(
                  child: Row(
                    children: [
                      const Text("About Us"),
                      const Spacer(),
                      SizedBox(
                          height: 34,
                          width: 34,
                          child: Image.asset("assets/images/aboutus.png"))
                    ],
                  ),
                ),
              )),
            ],
          ),

      ),
      floatingActionButton: Container(
        height: 88,
        width: 88,
        
        child: FittedBox(
          child: FloatingActionButton(onPressed: () {  },
            backgroundColor: const Color(0xFFF37777),


            child: SizedBox(height:20,width: 20,child: Image.asset("assets/images/chat.png")),

          ),
        ),
      ),
    );
  }
}
