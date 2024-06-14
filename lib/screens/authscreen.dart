import 'package:aibuddha_assignment/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:aibuddha_assignment/components/login_button.dart';
import 'package:aibuddha_assignment/components/my_textfield.dart';
import 'package:aibuddha_assignment/components/remember_me.dart';
import 'package:aibuddha_assignment/components/square_tile.dart';

class Authscreen extends StatelessWidget {
  Authscreen({super.key});

  // text editing controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Regular expression for validating email/phone number
  final RegExp emailPhoneRegex =
      RegExp(r"(^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+$)|(^[0-9]{10}$)");

  // Regular expression for validating password
  final RegExp passwordRegex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  // Sign user in method
  void signUserIn(BuildContext context) {
    if (emailPhoneRegex.hasMatch(usernameController.text) &&
        passwordRegex.hasMatch(passwordController.text)) {
      // Navigate to Home Page if validation is successful
      Navigator.of(context).pop();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      // Show error message if validation fails
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Invalid Input"),
            content: const Text(
                "Please enter a valid email/phone number and password."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color themeColour = Color.fromARGB(255, 34, 50, 99);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 42),

              // logo
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  color: themeColour,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),

              const SizedBox(height: 26),

              // welcome back, you've been missed!
              const Text(
                'Welcome back to E-Com!',
                style: TextStyle(
                  color: themeColour,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const Text(
                'Sign in to continue',
                style: TextStyle(
                  color: Color.fromRGBO(132, 132, 132, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),

              const SizedBox(height: 52),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Your Email / Phone Number',
                obscureText: false,
                icon: Icons.account_circle_outlined,
              ),

              const SizedBox(height: 5),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                icon: Icons.lock_outline,
              ),

              const SizedBox(height: 10),

              // forgot password?
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 36, 130, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),

              RememberMeWidget(),

              const SizedBox(height: 20),

              // sign in button
              LoginButton(
                onTap: () => signUserIn(context),
              ),

              const SizedBox(height: 30),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'OR',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 42),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Login using',
                ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'assets/images/google.png'),
                  SizedBox(width: 43),
                  SquareTile(imagePath: 'assets/images/google.png'),
                  SizedBox(width: 43),
                  SquareTile(imagePath: 'assets/images/apple.png')
                ],
              ),

              const SizedBox(height: 62),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont\'t have an account?',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Register',
                    style: TextStyle(
                      color: themeColour,
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
