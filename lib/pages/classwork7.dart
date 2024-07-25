import 'package:flutter/material.dart';
import 'package:new_application/classworkhost6.dart';
import 'package:new_application/const.dart';
import 'package:new_application/data/Doc_list.dart';
import 'package:new_application/pages/classwork8.dart';
class medicines extends StatelessWidget {

  medicines({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyle(20, primaryColor, FontWeight.bold),
              children: [
                TextSpan(
                  text: "Medi",
                ),
                TextSpan(
                  text: "cin",
                  style: myStyle(20, secondaryColor, FontWeight.bold),
                ),
                TextSpan(
                  text: "es",
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

            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: allMed.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 0.7),
            itemBuilder: (context, index) {
              return  InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>pills(PillClass:allMedc[index] ,)));},
                child: Card(
                  elevation: 4,
                  child: Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),


                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("${allMed[index].Name}", style: myStyle(20, Colors.black, FontWeight.bold), ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.location_pin),
                           Text("${allMed[index].Location}", style: myStyle(13, Colors.black), ),
                         ],
                       ),
                        Container(
                          height: 150,
                          width: double.infinity,
                          padding:EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("${allMed[index].imageUrl}"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height:10,),
                        Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, size: 20, color: Colors.yellow,
                                ),
                                Text("${allMed[index].Price}"),
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
