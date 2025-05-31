import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isObscure = true;
  String? myEmail;
  String? myPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.8,
            image: AssetImage(
              "assets/images/sign_in_images/background_splash.png",
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logoNewst-01.png"),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome to Newst",
                    style: TextStyle(
                      fontFamily: "D-DIN",
                      color: Color(0xff363636),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Email",
                    style: TextStyle(
                      fontFamily: "D-DIN",
                      color: Color(0xff363636),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextFormField(
                    onFieldSubmitted: (value) {
                      myEmail = value;
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "usama@gmail.com",
                    ),
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontFamily: "D-DIN",
                      color: Color(0xff363636),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextFormField(
                    onFieldSubmitted: (value) {
                      myPassword = value;
                    },
                    obscureText: isObscure,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "************",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(
                          isObscure ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontFamily: "D-DIN",
                        color: Color(0xffC53030),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffC53030),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(myEmail);
                      print(myPassword);
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(330, 48),
                      backgroundColor: Color(0xffC53030),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: "D-DIN",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontFamily: "D-DIN",
                    color: Color(0xff363636),
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => SignUp()),
                    // );
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontFamily: "D-DIN",
                      color: Color(0xffC53030),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xffC53030),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
