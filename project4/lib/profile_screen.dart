import 'package:e_commerce_ui/custom_widgets/appColors.dart';
import 'package:e_commerce_ui/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String avatarUrl = 'assets/logo.png'; // Replace with your avatar image path
  final String userName = 'Nouf Alqhtani';
  final String userEmail = 'NoufAlqhtani@example.com';
  String? userCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ecruWhite,
      appBar: AppBar(
        title: Text('Profile'),
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.ecruWhite,
        elevation: 0, // Remove shadow for a flatter look
        centerTitle: true, // Center the title
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center column vertically
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center column horizontally
            children: [
              // User Avatar
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(avatarUrl),
                backgroundColor: Colors.grey[200],
              ),
              SizedBox(height: 20),
              // User Name
              Text(
                userName,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // User Email
              Text(
                userEmail,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 10),
              // User Country Picker
              userCountry != null
                  ? Text(
                      userCountry!,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        showCountryPicker(
                          context: context,
                          showPhoneCode: false,
                          onSelect: (Country country) {
                            setState(() {
                              userCountry = country.name;
                            });
                          },
                        );
                      },
                      child: Text('Select Country'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.spicyMix,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 60),
                      ),
                    ),
              SizedBox(height: 30),
              // Edit Profile Button
              ElevatedButton(
                onPressed: () {
                  // Handle edit profile action
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfilePage()),
                  );
                },
                child: Text('Edit Profile', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.spicyMix,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 60),
                ),
              ),
              SizedBox(height: 20),
              // Logout Button
              ElevatedButton(
                onPressed: () {
                  _showLogoutConfirmationDialog(context);
                },
                child: Text('Logout', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.spicyMix,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 60),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevents dismissing the dialog by tapping outside of it
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.ecruWhite,
          title: Text('Logout Confirmation'),
          content: Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Handle logout action here
                Navigator.of(context).pop(); // Close the dialog
                // Navigate to login screen or perform other logout operations
              },
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}
