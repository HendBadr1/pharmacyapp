import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../../core/utls/app_colors.dart';


import '../../home/views/widgets/confirm_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter first name";
    }
    // You can add additional validation if needed
    return null;
  }

  String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter last name";
    }
    // You can add additional validation if needed
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter email";
    }
    if (!EmailValidator.validate(value)) {
      return "Please enter a valid email";
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter password";
    }
    if (value.length < 5) {
      return "Please enter at least 5 characters";
    }
    // You can add additional validation if needed
    return null;
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter phone number";
    }
    // You can add additional validation if needed
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        leadingWidth: 70,
        toolbarHeight: 140,
        centerTitle: true,
        title: Text(
          "Sign UP",
          style: TextStyle(color: AppColors.blue, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "First Name",
                    // Add additional decoration properties if needed
                  ),
                  validator: validateFirstName,
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Last Name",
                    // Add additional decoration properties if needed
                  ),
                  validator: validateLastName,
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    // Add additional decoration properties if needed
                  ),
                  validator: validateEmail,
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    // Add additional decoration properties if needed
                  ),
                  validator: validatePassword,
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    // Add additional decoration properties if needed
                  ),
                  validator: validatePhoneNumber,
                ),
                SizedBox(height: 150),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Form is valid, navigate to confirmation screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ConfirmScreen()),
                          );
                        }
                      },
                      child: Text("Confirm",style: TextStyle(fontWeight: FontWeight.bold,color: (AppColors.blue),fontSize: 20),)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}