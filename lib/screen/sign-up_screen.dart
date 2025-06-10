import 'package:flutter/material.dart';
import 'package:my_app_2/screen/sign-in_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                // spacing: 15,
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
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
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
                  const Text(
                    "Confirm Password",
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
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
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
                  ElevatedButton(
                    onPressed: () {
                      // void registerWithEmail(
                      //   String email,
                      //   String password,
                      // )
                      // //async {
                      //   try {
                      //     await FirebaseAuth.instance
                      //         .createUserWithEmailAndPassword(
                      //           email: myEmail!,
                      //           password: myPassword!,
                      //         );
                      //   print('✅ تم إنشاء الحساب بنجاح');
                      //   // يمكن تحويل المستخدم لصفحة أخرى هنا
                      // } on FirebaseAuthException catch (e) {
                      //   print('❌ خطأ في التسجيل: ${e.message}');
                      // }
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(330, 48),
                      backgroundColor: const Color(0xffC53030),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    child: const Text(
                      "Sign Up",
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
                  "Have an account ? ",
                  style: TextStyle(
                    fontFamily: "D-DIN",
                    color: Color(0xff363636),
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                  child: const Text(
                    "Sign In",
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
