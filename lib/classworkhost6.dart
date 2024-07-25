import 'package:flutter/material.dart';
import 'package:new_application/const.dart';
import 'package:new_application/data/Doc_list.dart';
import 'package:new_application/modelClass/Doctors_class.dart';
class parohost extends StatelessWidget {
  HospitalClass hospitalClass;
  parohost({super.key, required this.hospitalClass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyle(20, primaryColor, FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                  text: "Time",
                  style: myStyle(20, secondaryColor, FontWeight.bold),
                ),
                TextSpan(
                  text: "+",
                ),
              ]),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert)],
      ),
      body:  SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset("${hospitalClass.imgeUrl}"),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("${hospitalClass.hospital}", style: myStyle(24, Colors.black, FontWeight.bold),),
                            Text("${hospitalClass.place}", style: myStyle(18, Colors.black),),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("${hospitalClass.abuhost}", style: myStyle(18, Colors.black,),),
                      ],
                    ),
                    SizedBox(height: 50,),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
