bool isValidName = false;
String currentName = "";

Function(String) nameValidator= (String name) {
  currentName = name;
  if(name.isEmpty) {
    isValidName = false;
    return 'Invalid name';
  }

  if(name.length < 2) {
    isValidName = true;
    return 'Name should be more than 2 characters';
  }

  if(RegExp(r'[^a-zA-Z]+').hasMatch(name)) {
    isValidName = false;
    return 'Name should contain letters only';
  }

  else {
    isValidName = true;
  }
};

bool isValidEmail = false;
String currentEmail = "";

Function(String) emailValidator = (String email) {
  currentEmail = email;
  if(email.isEmpty || (!email.endsWith('@gmail.com') && !email.endsWith('@outlook.com') && !email.endsWith('@hotmail.com'))) {
    isValidEmail = false;
    return 'Invalid email';
  }
  else {
    isValidEmail = true;
  }
};

bool isValidPassword = false;
String currentPassword = "";

Function(String) passwordValidator = (String passoword) {
  currentPassword = passoword;
  if(passoword.isEmpty || passoword.length < 5) {
    isValidPassword = false;
    return 'Password is empty or too short';
  }
  else {
    isValidPassword = true;
  }
};

bool isPasswordMatch = false;
String currentRepassword = "";

Function(String) repassowordValidator = (String repassword) {
  currentRepassword = repassword;
  if(currentPassword != currentRepassword || !isValidPassword) {
    isPasswordMatch = false;
    return 'passwords are not match';
  }
  else {
    isPasswordMatch = true;
  }
};