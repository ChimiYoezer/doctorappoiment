import 'package:flutter/material.dart';
import 'package:new_application/const.dart';
class covid extends StatelessWidget {
  const covid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyle(20, primaryColor, FontWeight.bold),
              children: [
                TextSpan(
                  text: "Covid",
                ),
                TextSpan(
                  text: "-",
                  style: myStyle(20, secondaryColor, FontWeight.bold),
                ),
                TextSpan(
                  text: "19",
                ),
              ]),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/covid-19.jpg"),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(20),
              ),
        
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  child:
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width * 0.45,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular((20)),
                        image: DecorationImage(
                            image: AssetImage("assets/image/covid.jpg"),
                            fit: BoxFit.cover),
                      ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.47,
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Coronavirus ",style: myStyle(25, Colors.black, FontWeight.bold), maxLines: 1,),
                            Text("Covid-19!", style: myStyle(22, Colors.black, FontWeight.bold), maxLines: 1,),
                            Text("Coronavirus is a contagious disease caused by the coronavirus SARS-CoV-2. he first knoTwn case was identified in Wuhan, China, in December 2019.",),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [

                  Text("Coronavirus disease 2019 (COVID-19) is a contagious disease caused by the coronavirus. The first known case was identified in Wuhan, China, in December 2019. Most scientists believe the SARS-CoV-2 virus entered into human populations through natural zoonosis, similar to the SARS-CoV-1 and MERS-CoV outbreaks, and consistent with other pandemics in human history.Social and environmental factors including climate change, natural ecosystem destruction and wildlife trade increased the likelihood of such zoonotic spillover.",style: TextStyle(fontSize: 15),),
              
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
