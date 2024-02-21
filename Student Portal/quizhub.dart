import 'dart:io';
import 'signup&login.dart';

String? who;

quizhub() {
  print(
      "                               Welcome To Quiz Hub:                               ");
  print(
      "------------------------------------------------------------------------------------------------------------");
  if (studentOrTeacher!.toLowerCase() == 'student') {
    if (quiz.isEmpty) {
      print("There is No Quiz Yet!");
    } else {
      studentquiz();
    }
  } else if (studentOrTeacher!.toLowerCase() == 'teacher') {
    teacherquiz();
  }
}

String? createone;
teacherquiz() {
  print(
      "                                Sir $userName:                                ");
  print(
      "------------------------------------------------------------------------------------------------------------");
  print("There is No Quiz for Students Yet!");
  print("Did You wanna Create one?");
  do {
    createone = stdin.readLineSync();
    if (createone == null || createone!.isEmpty) {
      print("Please Enter Your Answer In (Yes or No): ");
    }
  } while (createone == null || createone!.isEmpty);
  if (createone!.toLowerCase() == 'yes') {
    createquiz();
  } else if (createone!.toLowerCase() == 'no') {
    print("Ok Fine.!");
  }
}

List<Map<String, dynamic>> quiz = [];
int? questionNo;
int? questionNumber;

void createquiz() {
  print("Lets Create a Quiz");
  bool asking = true;
  while (asking) {
    print("Choose the question type: ");
    print("1. Multiple Choice Question (MCQ)");
    print("2. True/False");
    print("3. Done");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter the Question No of MCQ's Questions: ");
      questionNumber = int.parse(stdin.readLineSync()!);
      print("Enter the MCQ Question");
      String? question = stdin.readLineSync();
      print("Enter the Options (sepreated by commas)");
      List<String> options = stdin.readLineSync()!.split(',');
      print("Enter the Index of the Correct Answer: ");
      int correctIndex = int.parse(stdin.readLineSync()!);
      String correctAnswer = options[correctIndex - 1].trim();
      quiz.add({
        'type': "MCQ",
        'question': question,
        'options': options,
        'correctanswer': correctAnswer
      });
    } else if (choice == 2) {
      print("Enter the Question No of True/False Questions: ");
      questionNo = int.parse(stdin.readLineSync()!);
      print("Enter the True/False Question:");
      String? question = stdin.readLineSync();
      print("Enter the Correct Answer True/False:");
      String? correctanswer = stdin.readLineSync()!.toLowerCase();
      quiz.add({
        'type': 'True/False',
        'questionNo': questionNo,
        'question': question,
        'correctanswer': correctanswer
      });
    } else if (choice == 3) {
      asking = false;
    } else {
      print('Invalid Option, Try again!');
    }
  }

  print("Quiz Created Successfully! Here are the Questions!");

  for (int i = 0; i < quiz.length; i++) {
    print("Question ${i + 1}");
    print("Type: ${quiz[i]['type']}");
    print("Question: ${quiz[i]['question']}");
    if (quiz[i]['type'] == 'MCQ') {
      print("Options: ${quiz[i]['options']}");
      print("Correct Answer: ${quiz[i]['correctanswer']}");
    } else {
      print("Correct Answer: ${quiz[i]['correctanswer']}");
    }
  }
  print("-----------------------------------------");
  print("If you want to Test your Quiz then");
  print("Change your User Type in Profile");
}

String? type;
studentquiz() {
  print(
      "                               Welcome to The Quiz Section:                                ");
  print(
      "----------------------------------------------------------------------------------------------------");
  print("Which Type of Question Did you want?");
  print("MCQ or True/False");
  do {
    type = stdin.readLineSync();
    if (type == null || type!.isEmpty) {
      print("Please Enter the Type of Questions: ");
    } else if (type!.isNotEmpty && type!.toLowerCase() == 'mcq') {
      displayMCQs();
    } else if (type!.isNotEmpty && type!.toLowerCase() == 'true/false') {
      displayTFquestion();
    }
  } while (type == null || type!.isEmpty);
}

displayMCQs() {
  int index = 1;
  int point = 0;
  String? answer;
  print("Displaying MCQ Questions: ");
  for (int i = 0; i < quiz.length; i++) {
    if (quiz[i]['type'] == 'MCQ') {
      print("Questions:  ${quiz[i]['question']}");
      print("Options: ${quiz[i]['options']}");
      print("Enter Your Answer(Correctly): ");
      answer = stdin.readLineSync();
      if (answer == quiz[i]['correctanswer']) {
        print("Correct Answer");
        point++;
      } else if (answer != quiz[i]['correctanswer']) {
        print("Wrong Answer!");
      }
      print("-----------------------------------------");
    }
    index++;
  }
  print("You Won $questionNumber / $point ");
}

displayTFquestion() {
  int number = 1;
  int score = 0;
  String? choose;
  print("Displaying True/False Questions: ");
  for (int i = 0; i < quiz.length; i++) {
    if (quiz[i]['type'] == 'True/False') {
      print("Question: ${quiz[i]['question']}");
      print("Enter Your Answer(correctly): ");
      choose = stdin.readLineSync();
      if (choose == quiz[i]['correctanswer']) {
        print("Answer is Correct!");
        score++;
      } else if (choose != quiz[i]['correctanswer']) {
        print("Answer is Wrong!");
      }
      print("-----------------------------------------");
    }
    number++;
  }
  print("You scored $score out of $questionNo");
}
