// This file contains the UserRepository class which is responsible for user registration and login.
class UserRepository {
  static final UserRepository userRepository = UserRepository();
  // Factory constructor to return the same instance of the UserRepository class
  factory UserRepository() => userRepository;

  // Registered users map
  final Map<String, String> registeredUsers = {
    //Mock data for testing
    'admin@gmail.com': 'admin123',
  };

  // Method to register a new user
  bool registerUser(String email, String password) {
    if (registeredUsers.containsKey(email)) {
      // User already exists
      return false;
    } else {
      // Register new user
      registeredUsers[email] = password;
      return true;
    }
  }
  
  // Method to check if the user is registered
  bool isUserRegistered(String email, String password) {
    return registeredUsers.containsKey(email) &&
        registeredUsers[email] == password;
  }
}
