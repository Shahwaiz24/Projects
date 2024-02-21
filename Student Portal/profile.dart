import 'dart:async';

import 'signup&login.dart';
import 'dart:io';
import 'dart:convert';

String? decision;
String? usertype;
void getUserData() {
  print(
      "                               User Profile:                               ");
  print("Email: $userEmail");
  print("Name: $userName");
  print("Date Of Birth: $userDOB");
  print("User Type: $studentOrTeacher");
  print("Password: $userPassword");
  print("-----------------------------------------");
  print("Did you wanna Change Your Usertype?");
  do {
    decision = stdin.readLineSync();
    if (decision == null || decision!.isEmpty) {
      print("Enter your Decision");
    } else if (decision!.toLowerCase() == 'yes') {
      print("Enter Your User Type(correctly): ");
      print("Student");
      print("Teacher");
      usertype = stdin.readLineSync();
      studentOrTeacher = usertype;
    } else if (decision!.toLowerCase() == 'no') {
      print("Ok!");
    }
  } while (decision == null || decision!.isEmpty);
}
