import 'package:flutter/material.dart';
import 'package:lithabit/screens/screens_wrapper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Adjusts the layout to avoid the keyboard
      body: SingleChildScrollView( // Makes the content scrollable
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0), // Added vertical padding to ensure proper spacing
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/bookLogin.gif', // Path to the GIF
                  width: 300.0, // Adjust the width as needed
                  height: 300.0, // Adjust the height as needed
                ),
              ),
              const SizedBox(height: 24.0), // Adjust spacing as needed
              const SizedBox(height: 48.0),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200], // Light grey background
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black), // Black text color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200], // Light grey background
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.black), // Black text color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.blue, // Blue background for button
                  foregroundColor: Colors.white, // White text color
                  textStyle: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreensWrapper(),
                    ),
                  );
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
