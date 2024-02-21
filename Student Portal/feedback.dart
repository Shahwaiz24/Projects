import 'dart:io';

givefeedback() {
  print(
      "                              Welcome To FeedBack Section:                              ");
  print("Please Provide Feedback");
  String? feedback = stdin.readLineSync();
  print("-----------------------------------------");
  print("Thanks You for Your Feedback: $feedback");
}
