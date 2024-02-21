import 'admission.dart';
import 'dart:io';
import 'dart:convert';

int? selectedcourse;
coursemanagemnet() {
  print(
      "                               Welcome to Course Management Section:                               ");
  print(
      "----------------------------------------------------------------------------------------------------------------------");
  print("We have a variety of courses available");
  print("Course No #1: ${courses[0]['coursename']}");
  print("Course No #2: ${courses[1]['coursename']}");
  print("Course No #3: ${courses[2]['coursename']}");
  print("Course No #4: ${courses[3]['coursename']}");
  print("Course No #5: ${courses[4]['coursename']}");
  print(
      "------------------------------------------------------------------------------------------------------------------------");
  do {
    print("Choose Your Course(in Digits): ");
    selectedcourse = int.parse(stdin.readLineSync()!);
    if (selectedcourse != null && selectedcourse! < 1 || selectedcourse! > 5) {
      print("Please Enter the Number Between 1 to 5");
    }
  } while (selectedcourse! < 1 || selectedcourse! > 5);
  if (selectedcourse == 1) {
    print(
        "                               Details Of Your Course ${courses[0]['coursename']}:                               ");
    print(
        "-------------------------------------------------------------------------------------------------------------------------");
    print("Course Name: ${courses[0]['coursename']}");
    print("Course Qulification: ${courses[0]['courseQualification']}");
    print("Course Fee: ${courses[0]['coursefee']}");
    print("Course Duration: ${courses[0]['courseDuration']}");
    print("Course Instructor: ${courses[0]['courseInstructor']}");
    print("Course Topics: ${courses[0]['courseTopics']}");
  } else if (selectedcourse == 2) {
    print(
        "                               Details Of Your Course ${courses[1]['coursename']}:                               ");
    print(
        "-------------------------------------------------------------------------------------------------------------------------");
    print("Course Name: ${courses[1]['coursename']}");
    print("Course Qulification: ${courses[1]['courseQualification']}");
    print("Course Fee: ${courses[1]['coursefee']}");
    print("Course Duration: ${courses[1]['courseDuration']}");
    print("Course Instructor: ${courses[1]['courseInstructor']}");
    print("Course Topics: ${courses[1]['courseTopics']}");
  } else if (selectedcourse == 3) {
    print(
        "                               Details Of Your Course ${courses[2]['coursename']}:                               ");
    print(
        "------------------------------------------------------------------------------------------------------------------------------");
    print("Course Name: ${courses[2]['coursename']}");
    print("Course Qulification: ${courses[2]['courseQualification']}");
    print("Course Fee: ${courses[2]['coursefee']}");
    print("Course Duration: ${courses[2]['courseDuration']}");
    print("Course Instructor: ${courses[2]['courseInstructor']}");
    print("Course Topics: ${courses[2]['courseTopics']}");
  } else if (selectedcourse == 4) {
    print(
        "                               Details Of Your Course ${courses[3]['coursename']}:                               ");
    print(
        "-------------------------------------------------------------------------------------------------------------------------");
    print("Course Name: ${courses[3]['coursename']}");
    print("Course Qulification: ${courses[3]['courseQualification']}");
    print("Course Fee: ${courses[3]['coursefee']}");
    print("Course Duration: ${courses[3]['courseDuration']}");
    print("Course Instructor: ${courses[3]['courseInstructor']}");
    print("Course Topics: ${courses[3]['courseTopics']}");
  } else if (selectedcourse == 5) {
    print(
        "                               Details Of Your Course ${courses[4]['coursename']}:                               ");
    print(
        "-------------------------------------------------------------------------------------------------------------------------");
    print("Course Name: ${courses[4]['coursename']}");
    print("Course Qulification: ${courses[4]['courseQualification']}");
    print("Course Fee: ${courses[4]['coursefee']}");
    print("Course Duration: ${courses[4]['courseDuration']}");
    print("Course Instructor: ${courses[4]['courseInstructor']}");
    print("Course Topics: ${courses[4]['courseTopics']}");
  }
}

String? fullname;
String? email;
String? courseName;
int? phonenumber;
String? submitEn;
int? submitfoam = 0;
courseenrollment() {
  print(
      "                               Welcome to Course Enrollment Section:                               ");
  print(
      "-----------------------------------------------------------------------------------------------------------------------");
  print("Enter Your Full Name: ");
  fullname = stdin.readLineSync();
  print("Enter Your Email: ");
  email = stdin.readLineSync();
  print("Enter Your Course Name: ");
  print("Enter Your Course name Correctly According to the List: ");
  courseName = stdin.readLineSync();
  print("Enter Your Phone Number: ");
  phonenumber = int.parse(stdin.readLineSync()!);

  print(
      "                               Preview Your Enrollment Foam:                               ");
  print(
      "-----------------------------------------------------------------------------------------------------------------------");
  print("Student Full Name: $fullname");
  print("Your Email: $email");
  print("Your Selected Course: $courseName");
  print("Phone Number: $phonenumber");
  print(
      "---------------------------------------------------------------------------------------------------------------------");
  print("Submit Your Enrollment Foam: ");
  print("Yes or No");
  do {
    submitEn = stdin.readLineSync();
    if (submitEn == null || submitEn!.isEmpty) {
      print("If you want to submit Type: Yes");
      print("If you  Don't want to submit Type: No");
    } else if (submitEn != null &&
        submitEn!.substring(0, 1).toUpperCase() + submitEn!.substring(1) ==
            'Yes') {
      print("Your Foam is Submitted");
    } else if (submitEn!.substring(0, 1).toUpperCase() +
            submitEn!.substring(1) ==
        'No') {
      print("Your Foam is Not Submit");
    }
  } while (submitEn != null && submitEn!.isEmpty);
}
