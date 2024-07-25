
class DoctorsClass{
 String name;
 String imgUrl;
 String speciality;
 double payment;
 int patients;
 int experience;
 List appointmentDays;
 List appointmentTimes;
double rating;
String aboutDec;

 DoctorsClass({
  required this.name,
  required this.imgUrl,
  required this.speciality,
  required this.payment,
  required this.patients,
  required this.experience,
  required this.appointmentDays,
  required this.appointmentTimes,
  required this.rating,
  required this.aboutDec,


});
}

class HospitalClass{
String hospital;
String imgeUrl;
double rate;
String place;
String abuhost;

HospitalClass({
 required this.hospital,
required this.imgeUrl,
required this.rate,
required this.place,
 required this.abuhost,
});
}


class MedicinClass{
 String Name;
 String imageUrl;
 double Price;
 String Location;
 String pill;

 MedicinClass({
  required this.Name,
  required this.imageUrl,
  required this.Price,
  required this.Location,
  required this.pill,

 });
}
class PillClass{
 String MName;
 String Weight;
 double Money;
 String img;

 PillClass({
  required this.MName,
  required this.Weight,
  required this.Money,
  required this.img
});
}
