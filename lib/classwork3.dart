import 'package:flutter/material.dart';
import 'package:new_application/classworkhost6.dart';
import 'package:new_application/const.dart';
import 'package:new_application/data/Doc_list.dart';
import 'package:new_application/pages/classwork2.dart';
class hospital extends StatelessWidget {
  const hospital({super.key});

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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Hospital",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: primaryColor),),
            ],
          ),
          SizedBox(height: 20,),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: allDocs.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 0.7),
            itemBuilder: (context, index) {
              return  InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>parohost(hospitalClass:allServices[index] ,)));},
                child: Card(
                    elevation: 4,
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),

                      ),

                      child: Column(
                        children: [
                          Container(
                            height: 170,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft:Radius.circular(20),
                                  topRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage("${allServices[index].imgeUrl}"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text("${allServices[index].hospital}", style: myStyle(20, Colors.black, FontWeight.bold), textAlign: TextAlign.center,),

                          SizedBox(height:10,),
                          Container(
                              height: 35,
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, size: 20, color: Colors.yellow,),
                                  Icon(Icons.star, size: 20, color: Colors.yellow,),
                                  Icon(Icons.star, size: 20, color: Colors.yellow,),
                                  Icon(Icons.star, size: 20, color: Colors.yellow,),
                                  Icon(Icons.star, size: 20, color: Colors.yellow,),
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
              );

            },
          )
        ],
      ),
    );
  }
}
