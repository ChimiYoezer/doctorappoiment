import 'package:flutter/material.dart';
import 'package:new_application/const.dart';


class pills extends StatelessWidget {
  List PillClass;
  pills({super.key, required this.PillClass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: RichText(
        text: TextSpan(style: myStyle(26, primaryColor, FontWeight.bold),
            children: [
              TextSpan(text: "Medi",),
              TextSpan(text: "cin", style: myStyle(26, secondaryColor, FontWeight.bold)),
              TextSpan(text: "es", style: myStyle(26, primaryColor, FontWeight.bold),),
            ]),
      ),
        centerTitle: true,),

      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: PillClass.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5,
                  childAspectRatio:0.6),

              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: Container(
                      child: Column(
                        children: [
                          Center(child: Text('${PillClass[index].MName}', style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                          SizedBox(height: 10,),
                          Container(
                            width: 160,
                            height: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('${PillClass[index].img}'),
                                    fit: BoxFit.fill)
                            ),
                          ),

                          SizedBox(height: 5,),

                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                SizedBox(height: 7,),
                                Text('Weight:${PillClass[index].Weight}', style: TextStyle(fontSize: 16,color: Colors.black),),
                                Text('Price: ${PillClass[index].Money}', style: TextStyle(fontSize: 16,color: Colors.black),),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          MaterialButton(
                            elevation: 4,
                            onPressed: () {
                            },
                            child: Container(
                              width: double.infinity,
                              height: 52,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: primaryColor,
                              ),
                              child: Center(child: Text('Get', style: myStyle(25,Colors.white,FontWeight.bold),)),
                            ),
                          ),



                        ],
                      )
                  ),
                );
              },
            ) ,


          ],
        ),
      ),
    );
  }
}
