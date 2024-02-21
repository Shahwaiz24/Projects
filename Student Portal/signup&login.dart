import 'dart:io';
import 'dart:convert';

String? userEmail;
String? userPassword;
String? userDOB;
String? userName;
String? studentOrTeacher;

bool signUp() {
  print("For Signup: Enter the Details Of you");
  print('----------------------------------------------------');
  String name;
  do {
    stdout.write('Enter Your Name: ');
    name = stdin.readLineSync()!.trim();

    if (name.isEmpty) {
      print('Please Enter Your Name');
    }
  } while (name.isEmpty);
  userName = name;
  print('----------------------------------------------------');
  String email;
  do {
    stdout.write('Enter Your Email Address: ');
    email = stdin.readLineSync()!.trim();

    if (email.isEmpty) {
      print('Please Enter Your Email Address');
    }
  } while (email.isEmpty);
  userEmail = email;
  print('----------------------------------------------------');
  String dob;
  do {
    stdout.write('Enter Your Date of Birth: ');
    dob = stdin.readLineSync()!.trim();

    if (dob.isEmpty) {
      print('Please Enter Your Date of Birth: ');
    }
  } while (dob.isEmpty);
  userDOB = dob;
  print('----------------------------------------------------');
  String whoAreYou;
  do {
    print('Who you are?: ');
    print("Student");
    print("Teacher");
    print("Citizen");
    whoAreYou = stdin.readLineSync()!;
    whoAreYou.substring(0, 1).toUpperCase() + whoAreYou.substring(1);

    if (whoAreYou.isEmpty) {
      print('Please Enter Who are you?: ');
    }
  } while (whoAreYou.isEmpty);
  studentOrTeacher = whoAreYou;
  print('----------------------------------------------------');
  String password;
  do {
    stdout.write('Create a Password: ');
    password = stdin.readLineSync()!.trim();

    if (password.isEmpty) {
      print('Please Create a Password');
    }
  } while (password.isEmpty);
  userPassword = password;
  print('----------------------------------------------------');

  // Check if user already exists
  if (checkUserExists(email)) {
    return false;
  } else {
    // Save user details to JSON file
    saveUserDetails(name, email, dob, password);
    print('Sign up successful.');
    return true;
  }
}

bool login() {
  print("Enter the Details");
  print('----------------------------------------------------');
  String email;
  do {
    stdout.write('Enter Your Email Address: ');
    email = stdin.readLineSync()!.trim();

    if (email.isEmpty) {
      print('Please Enter Your Email Address: ');
    }
  } while (email.isEmpty);
  userEmail = email;
  print('----------------------------------------------------');

  do {
    print("Enter Your Name: ");
    userName = stdin.readLineSync();

    if (userName!.isEmpty) {
      print("Please Enter Your Name: ");
    }
  } while (userName!.isEmpty);
  print('----------------------------------------------------');
  do {
    print("Enter Your Date Of Birth: ");
    userDOB = stdin.readLineSync();

    if (userDOB!.isEmpty) {
      print("Please Enter Your Date Of Birth: ");
    }
  } while (userDOB!.isEmpty);
  print('----------------------------------------------------');
  do {
    print("Who are You?: ");
    print("<1>. Student");
    print("<2>. Citizen");
    print("<3>. Teacher");
    studentOrTeacher = stdin.readLineSync();

    if (studentOrTeacher!.isEmpty ||
        !['Student', 'Citizen', 'Teacher'].contains(studentOrTeacher)) {
      print("Please Enter a valid option (Student, Citizen, or Teacher): ");
    }
  } while (studentOrTeacher!.isEmpty ||
      !['Student', 'Citizen', 'Teacher'].contains(studentOrTeacher));
  print('----------------------------------------------------');

  String password;
  do {
    stdout.write('Enter Your Password: ');
    password = stdin.readLineSync()!.trim();

    if (password.isEmpty) {
      print('Please Enter Your Password: ');
    }
  } while (password.isEmpty);
  userPassword = password;
  print('----------------------------------------------------');

  // Check if user exists and login
  if (checkUserExists(email, password)) {
    print("Login successful.");
    return true;
  } else {
    print("Invalid email address or password.");
    print("-----------------------------------------");
    return false;
  }
}

bool checkUserExists(String email, [String? password]) {
  try {
    File file = File('users.json');
    if (!file.existsSync()) {
      return false;
    }
    String contents = file.readAsStringSync();
    if (contents.isEmpty) {
      return false; // If the file is empty, return false
    }
    Map<String, dynamic> users = jsonDecode(contents);
    if (password != null) {
      // Check if the user exists during login
      return users.containsKey(email) && users[email]['password'] == password;
    } else {
      // Check if the user exists during signup
      return users.containsKey(email);
    }
  } catch (e) {
    print('Error checking user existence: $e');
    return false;
  }
}

void saveUserDetails(String name, String email, String dob, String password) {
  try {
    File file = File('users.json');
    Map<String, dynamic> userDetails = {
      'name': name,
      'email': email,
      'dob': dob,
      'password': password
    };
    Map<String, dynamic> users = {};
    if (file.existsSync()) {
      String contents = file.readAsStringSync();
      if (contents.isNotEmpty) {
        users = jsonDecode(contents);
      }
    }
    users[email] = userDetails;
    file.writeAsStringSync(jsonEncode(users));
  } catch (e) {
    print('Error saving user details: $e');
  }
}
