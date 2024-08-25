class UserRepository {
  // Private constructor
  UserRepository._();

  // Singleton instance
  static final UserRepository instance = UserRepository._();

  // Registered users map
  final Map<String, String> registeredUsers = {
    // Mock data for testing
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
