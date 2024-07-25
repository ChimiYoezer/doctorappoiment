import 'package:flutter/material.dart';
import 'package:new_application/const.dart';
class profile extends StatelessWidget {
  const profile({super.key});

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
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(



          ),
          child: Column(
            children: [
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage("assets/image/profile.png"),

                        )
                      ),



                    ),
                  ),
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.all(30),
                height: 280,
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Name: Chimi Yoezer", style: TextStyle(fontSize: 20,color: primaryColor),),
                      ],

                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Email: ChimiYoezer27@gmail.com", style: TextStyle(fontSize: 20,color: primaryColor),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Sex: Male", style: TextStyle(fontSize: 20,color: primaryColor),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Contact : 17621055",style: TextStyle(fontSize: 20,color: primaryColor),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Disease : Kidney",style: TextStyle(fontSize: 20,color: primaryColor),),
                      ],
                    ),
                  ],
                ),
              ),


            ],
          ),

        ),
      ),
    );
  }
}
