import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pettakecare/common/color_extension.dart';
import 'package:pettakecare/common_widget/round_button.dart';
import 'package:pettakecare/common_widget/round_icon_button.dart';
import 'package:pettakecare/common_widget/round_textfield.dart';
import 'package:pettakecare/view/login/rest_password_view.dart';
import 'package:pettakecare/view/login/sign_up.dart';
import 'package:pettakecare/view/on_boarding/on_boarding_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  Future<void> loginUser(String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('User ID: ${userCredential.user?.uid}');
      // Add navigation or any other logic here after successful login
    } catch (e) {
      print('Error: $e');
      // Handle login error here
    }
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              Text(
                "Login",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                "Add your details to login",
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                hintText: "Your Email",
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                hintText: "Password",
                controller: txtPassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundButton(
                  title: "Login",
                  onPressed: () async {
                    try {
                      await loginUser(txtEmail.text, txtPassword.text);
                      // Check if login was successful
                      if (FirebaseAuth.instance.currentUser != null) {
                        // Navigate to the next page if login is successful
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OnBoardingView(),
                          ),
                        );
                      } else {
                        // Show an error message or handle unsuccessful login
                      }
                    } catch (e) {
                      print('Error: $e');
                      // Handle login error here
                      // Show an error message or handle unsuccessful login
                    }
                  }),
              const SizedBox(
                height: 4,
              ),
              TextButton(
                onPressed: () async {
                  await loginUser(txtEmail.text, txtPassword.text);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          OnBoardingView(), // แทน HomeScreen ด้วยหน้าที่เหมาะสม
                    ),
                  );
                },
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "or Login With",
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 30,
              ),
              RoundIconButton(
                icon: "assets/img/facebook_logo.png",
                title: "Login with Facebook",
                color: const Color(0xff367FC0),
                onPressed: () {},
              ),
              const SizedBox(
                height: 25,
              ),
              RoundIconButton(
                icon: "assets/img/google_logo.png",
                title: "Login with Google",
                color: const Color(0xffDD4B39),
                onPressed: () {},
              ),
              const SizedBox(
                height: 80,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don't have an Account? ",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: TColor.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
