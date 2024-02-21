// Libraries //
import 'dart:io';
import 'dart:convert';
import 'feedback.dart';
import 'profile.dart';
import 'quizhub.dart';
import 'signup&login.dart';
import 'admission.dart';
import 'coursemanagement.dart';

// Program Start //
void main() {
  print(
      "                               Welcome To the Project Of Student Portal:                               ");
  print(
      "--------------------------------------------------------------------------------------------------------------------------------");
  print("Which institute do you study at? I'll open the portal for you.");
  print("Enter the name of Your Institute");
  String? nameofIn = stdin.readLineSync();
  String institute =
      nameofIn!.substring(0, 1).toUpperCase() + nameofIn.substring(1);

  print("Opening the Portal of $institute");

  // Sign Up or Login Start //

  print("If you are not Registered, please Type Signup, otherwise Log in.");
  String? forcheck = stdin.readLineSync();
  String forjoining =
      forcheck!.substring(0, 1).toUpperCase() + forcheck.substring(1);

  if (forjoining == 'Signup') {
    bool signUpSuccess = false;
    do {
      signUpSuccess = signUp();
      if (!signUpSuccess) {
        print("User already exists. Please try again.");
      }
    } while (!signUpSuccess);
    print("Did you Registered?, and Now you have to Login");
    login();
  } else if (forjoining == 'Login') {
    bool loginSuccess = false;
    do {
      loginSuccess = login();
    } while (!loginSuccess);
  }

  // Login Finished //

  bool continueProgram = true;
  String? forsubmit;

// Interface Start //
  while (continueProgram) {
    print("-----------------------------------------");
    print("Welcome! What would you like to do today?");
    print("<1>. $userName Profile");
    print("<2>. Admission Form");
    print("<3>. Course Management");
    print("<4>. Quiz Hub");
    print("<5>. Give Feedback");
    print("<6>. Log Out");
    int? checking = int.tryParse(stdin.readLineSync() ?? '');

    if (checking == 1) {
      // This is For User Profile //

      getUserData();
      print("I Think You Managed or take a Look Of Your Profile");
    } else if (checking == 2) {
      // This is For Admission Foams //

      admissionfoam();
    } else if (checking == 6) {
      // This is For Log Out//

      print("Logging out. Have a great day ahead! See you next time!");
      continueProgram = false;
    } else if (checking == 3) {
      // This is For Course Management //

      coursemanagemnet();
      print("Did you Wanna Submit the Enrollment Foam?");
      do {
        forsubmit = stdin.readLineSync();
        if (forsubmit == null && forsubmit!.isEmpty) {
          print("If you wanna Submit Foam type : Yes");
          print("If you Don't Want to Submit foam type: No");
        } else if (forsubmit != null && forsubmit.isNotEmpty ||
            forsubmit == 'Yes') {
          courseenrollment();
        } else {
          print("Now you can't Submit foam");
        }
      } while (forsubmit == null || forsubmit.isEmpty);
    } else if (checking == 4) {
      // This is For Quiz //

      quizhub();
    } else if (checking == 5) {
      // This is For User Feedback
      givefeedback();
    }
  }
}
