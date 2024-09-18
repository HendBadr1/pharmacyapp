import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:email_validator/email_validator.dart';
import 'package:pharmacy/faetuers/login/views/register.dart';

import '../../../core/utls/app_colors.dart';
import '../../../core/utls/app_images.dart';
import '../../home/views/widgets/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
    return null;
  }

  void onSubmit() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, navigate to home screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splalahcolor,
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.loginimage),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(),
                          fillColor: AppColors.white,
                          filled: true,
                        ),
                        validator: validateEmail,
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(),
                          fillColor: AppColors.white,
                          filled: true,
                        ),
                        validator: validatePassword,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: onSubmit,
                child: Container(
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: AppColors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  width: 292,
                  height: 41,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 29),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account ? ",
                    style: TextStyle(color: AppColors.grey, fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => RegisterScreen()),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(color: AppColors.white, fontSize: 20),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}