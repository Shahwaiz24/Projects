import 'dart:io';

int foamnumber = 0;
String? Stname;
String? fathername;
String? mothername;
String? DateofBirth;
String? qulification;
String? Gender;
String? foamdate;
int admissionfee = 100;
admissionfoam() {
  foamnumber++;
  print(
      "                               Welcome to Admission Foam Section:                               ");
  print(
      "-------------------------------------------------------------------------------------------------");
  print("Enter your Name: ");
  Stname = stdin.readLineSync();
  print("-----------------------------------------");
  print("Enter your Father Name: ");
  fathername = stdin.readLineSync();
  print("-----------------------------------------");
  print("Enter your Mother Name: ");
  mothername = stdin.readLineSync();
  print("-----------------------------------------");
  print("Enter your Date of Birth: ");
  DateofBirth = stdin.readLineSync();
  print("-----------------------------------------");
  print("Enter Your Qualification: ");
  qulification = stdin.readLineSync();
  print("-----------------------------------------");

  print("Enter Your Gender: ");
  Gender = stdin.readLineSync();
  print("-----------------------------------------");
  print("Enter Your Submission Date(in Digit): ");
  foamdate = stdin.readLineSync();
  print("-----------------------------------------");
  print("Admission Foam fee: $admissionfee");

  print("-----------------------------------------");
  print(
      "                               Preview Your Admission Foam                               ");
  previewfoam();
}

previewfoam() {
  print("Student Name: $Stname");
  print("-----------------------------------------");
  print("Father Name: $fathername");
  print("-----------------------------------------");
  print("Mother Name: $mothername");
  print("-----------------------------------------");
  print("Qualification: $qulification");
  print("-----------------------------------------");
  print("Admission Foam fee: $admissionfee");
  print("-----------------------------------------");
  print("Submission Date: $foamdate");
  print("-----------------------------------------");
  print("Foam Number: $foamnumber");
  print("-----------------------------------------");
  print("Submit Foam?");
  String? submitfoam = stdin.readLineSync();
  if (submitfoam != null && submitfoam.toLowerCase() == 'yes') {
    print("Your Foam is Submitted");
  } else {
    print("Your Foam is Not Submit");
  }
}

List<Map<String, dynamic>> courses = [
  {
    'coursename': 'Graphic Designing',
    'courseQualification': 'Intermediate',
    'coursefee': 'Free',
    'courseDuration': '4 Month',
    'courseTopics':
        'Adobe Illustrator, Adobe Photoshop, Adobe Figma, Adobe Premier, Adobe After Effect, Blender, Canva, Autocad',
    'courseInstructor': 'Qasim Ali'
  },
  {
    'coursename': 'Flutter',
    'courseQualification': 'Matric',
    'coursefee': 'Free',
    'courseDuration': '12 Month',
    'courseTopics': 'Flutter, Dart',
    'courseInstructor': 'Bilal Rehman'
  },
  {
    'coursename': 'Web Development',
    'courseQualification': 'Intermediate',
    'coursefee': 'Free',
    'courseDuration': '6 Month',
    'courseTopics': 'Html, Css, Javascript, Wordpress, Jquery, React.js',
    'courseInstructor': 'Hamza Faisal'
  },
  {
    'coursename': 'Digital Marketing',
    'courseQualification': 'Matric',
    'coursefee': 'Free',
    'courseDuration': '3 Month',
    'courseTopics':
        'Freelancing, Facebook Ads, Google Ads, Google Ad sense, Youtube, Twitter, LinkedIn',
    'courseInstructor': 'Anas Shakeel'
  },
  {
    'coursename': 'Mobile App Development',
    'courseQualification': 'Intermediate',
    'coursefee': 'Free',
    'courseDuration': '8 Month',
    'courseTopics': 'OS Software Development Kit (SDK)',
    'courseInstructor': 'Huzaifa Sheikh'
  }
];
