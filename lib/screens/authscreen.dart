import 'package:aibuddha_assignment/screens/tabs.dart';
import 'package:flutter/material.dart';
import 'package:aibuddha_assignment/components/login_button.dart';
import 'package:aibuddha_assignment/components/my_textfield.dart';
import 'package:aibuddha_assignment/components/remember_me.dart';
import 'package:aibuddha_assignment/components/square_tile.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:aibuddha_assignment/controllers/auth_controller.dart';


class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  final TextEditingController emailPasswordController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthController authController = Get.put(AuthController());

  bool showError = false;
  String errorMessage = "";

  // Regular expression for validating email/phone number
  final RegExp emailPhoneRegex =
      RegExp(r"(^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+$)|(^[0-9]{10}$)");

  // Regular expression for validating password
  final RegExp passwordRegex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  Future<void> signUserIn(BuildContext context) async {
    setState(() {
      showError = false;
      errorMessage = '';
    });

    final dio = Dio();

    if (emailPhoneRegex.hasMatch(emailPasswordController.text) &&
        passwordRegex.hasMatch(passwordController.text)) {
      try {
        final response = await dio.post(
          'http://localhost:8080/login',
          data: {
            'email': emailPasswordController.text,
            'password': passwordController.text,
          },
        );

        if (response.statusCode == 200) {
          final Map<String, dynamic> responseBody = response.data;

          if (responseBody['success']) {
            Fluttertoast.showToast(
              msg: responseBody['data']['msg'],
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0,
            );

            authController.setUserName(responseBody['data']['name']);
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const Tabs()),
            );
          } else {
            Fluttertoast.showToast(
              msg: responseBody['data']['msg'],
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0,
            );
          }
        }
        else {

          Fluttertoast.showToast(
            msg: 'Error connecting to server. Please try again later. 1',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      } catch (e) {

        Fluttertoast.showToast(
          msg: 'Error connecting to server. Please try again later. 2',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    } else {
      Fluttertoast.showToast(
          msg: "Wrong email or password format",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
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
                child: Center(
                  child: Transform.rotate(
                    angle: 45 * 3.1415926535897932 / 180,
                    child: Container(
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        border: Border.all(width: 8, color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
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

              // if(!showError)
              //   const SizedBox(height: 52),

              // if (showError)
              //   Container(
              //     margin: const EdgeInsets.fromLTRB(0, 16, 0, 18),
              //     child: const Text(
              //       'Incorrect Password!',
              //       style: TextStyle(
              //         color: Colors.red,
              //         fontSize: 12,
              //         fontWeight: FontWeight.w700,
              //       ),
              //     ),
              //   ),

              // username textfield
              MyTextField(
                controller: emailPasswordController,
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
                borderColor: showError ? Colors.red : Colors.grey,
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
                  SquareTile(imagePath: 'assets/icons/apple.png'),
                  SizedBox(width: 43),
                  SquareTile(imagePath: 'assets/icons/facebook.png'),
                  SizedBox(width: 43),
                  SquareTile(imagePath: 'assets/icons/google.png')
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
