import 'package:ecommerce_mobile/features/features.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.primaryColor,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: const BoxDecoration(
                color: MainColors.primaryColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/authentication_image.png'),
                  scale: 3.6,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: MainColors.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 24, right: 24, top: 48),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 32,
                                  fontFamily: 'Josefin sans',
                                  height: 1,
                                  fontWeight: FontWeight.bold,
                                  color: MainColors.blackColor,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Welcome',
                                    style: TextStyle(
                                      color: MainColors.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' Back,'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              ' Sign in to continue',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: MainColors.secondaryColor[800],
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              ' Username',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: MainColors.blackColor,
                              ),
                            ),
                            const SizedBox(height: 10),

                            TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                hint: Text('Type in your name here'),
                              ),
                            ),
                            const SizedBox(height: 25),

                            Text(
                              ' Password',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: MainColors.blackColor,
                              ),
                            ),
                            const SizedBox(height: 10),

                            TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                hint: Text('Type in your password here'),
                                suffixIcon: Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: MainColors.secondaryColor[800],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),

                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: MainColors.primaryColor[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: MainColors.secondaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  String nameController = _nameController.text;
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainScreen(name: nameController),
                    ),
                    (route) => false,
                  );
                },
                child: Text('Continue'),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: MainColors.blackColor,
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: MainColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
