import 'package:flutter/material.dart';
import 'package:new_application/const.dart';
import 'package:new_application/modelClass/Doctors_class.dart';

class DocDetails extends StatelessWidget {
  DoctorsClass doctorsClass;
  DocDetails({super.key, required this.doctorsClass});
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
        body: SingleChildScrollView(
          child: Container(

            width: double.infinity,
            child: Column(
              children: [
                Hero(
                    tag:"${doctorsClass.imgUrl}",
            child: Image.asset("${doctorsClass.imgUrl}")),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${doctorsClass.name}", style: myStyle(24, Colors.black, FontWeight.bold),),
                              Text("${doctorsClass.speciality}", style: myStyle(16, Colors.black,
                                  )),
                            ],
                          ),
                          Text("\$${doctorsClass.payment}",style: myStyle(28, secondaryColor, FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About Doctor", style: myStyle(20, primaryColor, FontWeight.bold),),
                          Text("${doctorsClass.aboutDec}", style: myStyle(18, Colors.black,),),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.27,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Text("Patients", style: myStyle(18, primaryColor, FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 24,
                                        color: primaryColor,
                                      ),
                                      Text("${doctorsClass.patients}+")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.27,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Experience",
                                    style: myStyle(
                                        18, primaryColor, FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.shopping_bag,
                                        size: 24,
                                        color: primaryColor,
                                      ),
                                      Text("${doctorsClass.experience}+")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                           elevation: 4,
                           child: Container(
                             height: MediaQuery.of(context).size.height * 0.08,
                             width: MediaQuery.of(context).size.width * 0.27,
                             decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Rating",
                                    style: myStyle(
                                        18, primaryColor, FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 24,
                                        color: Colors.yellow,
                                      ),
                                      Text("${doctorsClass.rating}+")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Available",
                        style: myStyle(20, primaryColor, FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: doctorsClass.appointmentDays.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: 4,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  width:
                                      MediaQuery.of(context).size.width * 0.27,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(children: [
                                    Text(
                                      "${doctorsClass.appointmentDays[index]}",
                                      style: myStyle(
                                          20, primaryColor, FontWeight.bold),
                                    ),
                                    Text(
                                      "${doctorsClass.appointmentTimes[index]}",
                                      style: myStyle(
                                          16, primaryColor, FontWeight.bold),
                                    ),
                                  ]),
                                ),
                              );
                            },
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        color: primaryColor,
                        minWidth: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.05,
                        onPressed: () {},
                        child: Text(
                          "Make an Appoinment ",
                          style: myStyle(22, Colors.white, FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
