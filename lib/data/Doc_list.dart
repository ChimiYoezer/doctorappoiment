
import 'package:new_application/modelClass/Doctors_class.dart';

List<DoctorsClass> allDocs = [
  DoctorsClass(
    name: 'Dr Peter Quili',
      imgUrl: 'assets/image/doctor1.png',
    speciality: 'Heart Disease Specialist ',
      rating: 4.7,
    payment: 50,
      patients: 1200,
    experience: 10,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
    appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDec: 'Dr,Peter Quili is heart specialistDr,Peter Quili is heart specialistDr,Peter Quili is heart specialist '
),
  DoctorsClass(
      name: 'Dr,Daniel Defo',
      imgUrl: 'assets/image/doctor2.png',
      speciality: 'Kidney Disease Specialist ',
      rating: 4.5,
      payment: 50,
      patients: 1200,
      experience: 10,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDec: 'Dr,Daniel Defo is kidney specialistDr,Daniel Defo is kidney specialistDr,Daniel Defo is kidney specialist '  ),
  DoctorsClass(
      name: 'Dr,John cena',
      imgUrl: 'assets/image/doctor3.png',
      speciality: 'Blood Disease Specialist ',
      rating: 4.6,
      payment: 60,
      patients: 1000,
      experience: 10,
      appointmentDays: ['Mon', 'Wed', 'sat'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDec: 'Dr,Daniel Defo is kidney specialistDr,Daniel Defo is kidney specialistDr,Daniel Defo is kidney specialist '  ),
  DoctorsClass(
      name: 'Dr,Snoop Dogg',
      imgUrl: 'assets/image/doctor4.png',
      speciality: 'HIV Disease Specialist ',
      rating: 4.3,
      payment: 40,
      patients: 1500,
      experience: 10,
      appointmentDays: ['Tue', 'Wed', 'Thu'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDec: 'Dr,Snoop Dogg is kidney specialistDr,Snoop Dogg is kidney specialistDr,Snoop Dogg is kidney specialist '  ),
];

List<HospitalClass> allServices =[

  HospitalClass(
    hospital: 'Mongar Hospital',
    imgeUrl: 'assets/image/mongar.jpg',
    rate: 4.5,
    abuhost : "The Eastern Regional Referral Hospital, Mongar is pleased to announce the shortlisted candidates for the various posts announced earlier.Mongar Regional Referral Hospital (MRRH) is the tertiary multi-specialty healthcare institution in eastern Bhutan. It also serves as regional referral hospital for the eastern region, district hospital for Mongar dzongkhag, technical backup center for the hospitals in east. ",
    place :"Mongar",
  ),
  HospitalClass(
    hospital: 'Paro Hospital',
    imgeUrl: 'assets/image/paro.jpg',
    rate: 4.5,
    abuhost : "The Eastern Regional Referral Hospital, Mongar is pleased to announce the shortlisted candidates for the various posts announced earlier.Mongar Regional Referral Hospital (MRRH) is the tertiary multi-specialty healthcare institution in eastern Bhutan. It also serves as regional referral hospital for the eastern region, district hospital for Mongar dzongkhag, technical backup center for the hospitals in east. ",
    place :"Mongar",
  ),
  HospitalClass(
    hospital: 'Thimphu Hospital',
    imgeUrl: 'assets/image/Thimphu.jpg',
    rate: 4.5,
    abuhost : "The Eastern Regional Referral Hospital, Mongar is pleased to announce the shortlisted candidates for the various posts announced earlier.Mongar Regional Referral Hospital (MRRH) is the tertiary multi-specialty healthcare institution in eastern Bhutan. It also serves as regional referral hospital for the eastern region, district hospital for Mongar dzongkhag, technical backup center for the hospitals in east. ",
    place :"Mongar",
  ),
  HospitalClass(
    hospital: 'Mongar Hospital',
    imgeUrl: 'assets/image/hospital.jpg',
    rate: 4.5,
    abuhost : "The Eastern Regional Referral Hospital, Mongar is pleased to announce the shortlisted candidates for the various posts announced earlier.Mongar Regional Referral Hospital (MRRH) is the tertiary multi-specialty healthcare institution in eastern Bhutan. It also serves as regional referral hospital for the eastern region, district hospital for Mongar dzongkhag, technical backup center for the hospitals in east. ",
    place :"Mongar",
  ),

];

List<MedicinClass> allMed =[
  MedicinClass(
    Name: "Mongar",
    imageUrl : "assets/image/covid.jpg",
    Price:5,
    Location:"Upper Town",
    pill: "PCM",


  ),
  MedicinClass(
      Name: "Paro",
      imageUrl : "assets/image/mongar.jpg",
      Price:4.5,
      Location:"Town",
      pill: "",


  ),
  MedicinClass(
    Name: "Thimphu",
    imageUrl : "assets/image/Thimphu.jpg",
    Price:4.5,
    Location:"Town",
    pill: "",


  ),
  MedicinClass(
    Name: "Phuentsholing ",
    imageUrl : "assets/image/phun.jpg",
    Price:4.5,
    Location:"Town",
    pill: "",


  ),

];

List<List> allMedc = [
  [
    PillClass(MName: 'Naproxen', Weight: '1.5mg', Money: 299, img: 'assets/image/Naproxen.jpg'),
    PillClass(MName: 'Aceclofenac', Weight: '1.5mg', Money: 299, img: 'assets/image/Aceclofenac.jpg'),
    PillClass(MName: 'Diclofenac', Weight: '1.5mg', Money: 299, img: 'assets/image/Diclofenac.jpg'),
    PillClass(MName: 'sulindac', Weight: '1.5mg', Money: 299, img: 'assets/image/Diclofenac.jpg'),
  ],
  [
    PillClass(MName: 'Ibuprofen', Weight: '5.2mg', Money: 890, img: 'assets/image/Ibuprofen.jpg'),
    PillClass(MName: 'Ketoprofen', Weight: '2.58mg', Money: 230, img: 'assets/image/Ketoprofen.jpg'),
    PillClass(MName: 'Celecoxib', Weight: '1.5mg', Money: 99, img: 'assets/image/Celecoxib.jpg'),
  ],
  [
    PillClass(MName: 'Nimesulide', Weight: '4.6mg', Money: 299, img: 'assets/image/Nimesulide.jpg'),
    PillClass(MName: 'Praetorian', Weight: '7.5mg', Money: 540, img: 'assets/image/Praetorian.jpg'),
    PillClass(MName: 'indomethacin', Weight: '8.2mg', Money: 259, img: 'assets/image/indomethacin.jpg'),
    PillClass(MName: 'Tai Acid', Weight: '1.5mg', Money: 299, img: 'assets/image/acid.jpg'),
  ],
  [
    PillClass(MName: 'Coxib', Weight: '3.5mg', Money: 760, img: 'assets/image/EtroCoxib.jpg'),
    PillClass(MName: 'Proxicam', Weight: '1.9mg', Money: 540, img: 'assets/image/Proxicam.jpg'),
    PillClass(MName: 'Dicofenac', Weight: '2.5mg', Money: 120, img: 'assets/image/Dicofenac.jpg'),
    PillClass(MName: 'Naproxen', Weight: '1.5mg', Money: 110, img: 'assets/image/Nimesulide.jpg'),
  ],

];




