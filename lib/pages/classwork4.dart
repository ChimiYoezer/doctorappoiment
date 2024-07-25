import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:new_application/const.dart';
class ambulance extends StatelessWidget {
  const ambulance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyle(20, primaryColor, FontWeight.bold),
              children: [
                TextSpan(text: "Ambu",),TextSpan(
                  text: "lance",
                  style: myStyle(20, secondaryColor, FontWeight.bold),
                ),
                TextSpan(
                  text: "112",
                ),
              ]),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert)],
      ),
      body:Column(
        children: [
          Center(
            child: Container(
              child: Lottie.asset("assets/animation/ambu.json"),
            ),

          ),
          SizedBox(height: 90,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              MaterialButton(
                color: primaryColor,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                onPressed: () {},
                child: Text(
                  "Call:112",
                  style: myStyle(22, Colors.white, FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
