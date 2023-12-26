import 'package:dr_detection/controllers/signin_signup_controller.dart';
import 'package:dr_detection/widgets/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/text_field.dart';
import 'user_info_screen.dart';

class SignUpType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Eye.PNG', // Replace with your image path
              width: 150, // Adjust width as needed
              height: 150, // Adjust height as needed
              // You can add more properties to customize the image display
            ),
            Text(
              'Select Account Type:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to doctor signup page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorInfoScreen()),
                );
              },
              child: Text('Sign Up as Doctor'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to regular user signup page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegularUserInfoScreen()),
                );
              },
              child: Text('Sign Up as User'),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Sign Up'),
      ),
      body: Center(
        child: Text(
          'Doctor Sign Up Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class RegularUserInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Sign Up'),
      ),
      body: Center(
        child: Text(
          'User Sign Up Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
