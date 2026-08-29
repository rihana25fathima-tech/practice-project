
import 'package:flipkart_ui/home.dart';
import 'package:flipkart_ui/home_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  bool keepLoggedIn = true;
  bool isMobileLogin = true;

  final TextEditingController mobileController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  @override
  void dispose() {
    mobileController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: screenWidth > 500 ? 430 : double.infinity,
              margin: const EdgeInsets.all(12),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),

              child: Column(
                children: [

// blue container
                  ClipPath(
                    clipper: LoginHeaderClipper(),

                    child: Container(
                      width: double.infinity,

                      padding: const EdgeInsets.fromLTRB(
                        20,
                        28,
                        20,
                        50,
                      ),

                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff3F82ED),
                            Color(0xff2166D1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),

                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [

                          // Login title
                          const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          // Subtitle
                          const Text(
                            "Get access to your Orders, Wishlist and Recommendations",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),

                          const SizedBox(height: 22),

                          // Secure login + OTP
                          Row(
                            children: [

                              _topButton(
                                Icons.lock_outline,
                                "Secure Login",
                              ),

                              const SizedBox(width: 10),

                              _topButton(
                                Icons.flash_on,
                                "Instant OTP",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  
                  // LOGIN CONTENT
          
                  Padding(
                    padding: const EdgeInsets.all(20),

                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,

                      children: [

                        // =========================
                        // SHOPKART LOGO
                      

                        Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.end,
                          children: [
//=================================
                            // flipkartlogo
                        Center(
  child: Image.asset(
    "assets/images/fliplogo.jpg",
    height: 85,
    fit: BoxFit.contain,
  ),
),
                          ],
                        ),

                        const SizedBox(height: 25),

                        // =========================
                        // MOBILE / EMAIL TEXTFIELD
                      

                        TextField(
                          controller: mobileController,
                          keyboardType:
                              TextInputType.phone,
                          decoration:
                              const InputDecoration(
                            labelText:
                                "Enter Email/Mobile number",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                            enabledBorder:
                                UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder:
                                UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff2874F0),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 22),

                        // =========================
                        // PASSWORD TEXTFIELD
                        TextField(
                          controller: passwordController,
                          obscureText: !showPassword,
                          decoration: InputDecoration(
                            labelText: "Enter Password",
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),

                            suffix: GestureDetector(
                              onTap: () {
                                setState(() {
                                  showPassword =
                                      !showPassword;
                                });
                              },

                              child: const Text(
                                "SHOW",

                                style: TextStyle(
                                  color:
                                      Color(0xff2874F0),
                                  fontSize: 10,
                                  fontWeight:
                                      FontWeight.bold,
                                ),
                              ),
                            ),
                            enabledBorder:
                                const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder:
                                const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff2874F0),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // =========================
                        // KEEP LOGIN + FORGOT PASSWO
                        Row(
                          children: [
                                 Icon(Icons.check_box,color: Colors.blue,),
                                  const SizedBox(width: 5),
                                  const Text(
                                    "Keep me logged in",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                  ),
                            const Spacer(),
                            Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color:
                                      Color(0xff2874F0),
                                  fontSize: 10,
                                  fontWeight:
                                      FontWeight.w600,
                                ),
                              ),
                          ],
                        ),

                        const SizedBox(height: 22),
                        // =========================
                        // TERMS & PRIVACY
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 9,
                            ),

                            children: [

                              TextSpan(
                                text:
                                    "By continuing, you agree to ShopKart's ",
                              ),

                              TextSpan(
                                text: "Terms of Use",

                                style: TextStyle(
                                  color:
                                      Color(0xff2874F0),
                                ),
                              ),

                              TextSpan(
                                text: " and ",
                              ),

                              TextSpan(
                                text: "Privacy Policy.",

                                style: TextStyle(
                                  color:
                                      Color(0xff2874F0),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 18),

                        // =========================
                        // LOGIN BUTTON
                        SizedBox(
                          width: double.infinity,
                          height: 45,

                          child: ElevatedButton(
                            onPressed: () {

                              // Login logic

                              if (mobileController.text == "rihana@gmail.com"
                                      ||
                                  passwordController
                                      .text == "1234") {
                              }

                              ScaffoldMessenger.of(
                                context,
                              ).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    "Login successful",
                                  ),
                                ),
                              );

                              Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
                            },

                            style:
                                ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(
                                0xff2874F0,
                              ),

                              foregroundColor:
                                  Colors.white,

                              shape:
                                  RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(2),
                              ),

                              elevation: 1,
                            ),

                            child: const Text(
                              "LOGIN",

                              style: TextStyle(
                                fontWeight:
                                    FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // =========================
                        // OR
                      

                        Row(
                          children: [

                            const Expanded(
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),

                              child: Text(
                                "OR",

                                style: TextStyle(
                                  color:
                                      Colors.grey.shade600,
                                  fontSize: 11,
                                ),
                              ),
                            ),

                            const Expanded(
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),

                        Container(
                          height: 45,
                          width: double.infinity,
                          decoration:  BoxDecoration(
    color: const Color.fromARGB(255, 28, 134, 221),
    borderRadius: BorderRadius.circular(2),
  ),
  child: Center(
    child: Text("SIGN UP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),),
  ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // =========================
  // TOP HEADER BUTTON


  Widget _topButton(
    IconData icon,
    String text,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),

      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.12),

        borderRadius:
            BorderRadius.circular(20),

        border: Border.all(
          color: Colors.white.withValues(alpha: 0.25),
        ),
      ),

      child: Row(
        children: [

          Icon(
            icon,
            color: Colors.white,
            size: 12,
          ),

          const SizedBox(width: 5),

          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 9,
            ),
          ),
        ],
      ),
    );
  }
}

// 

class LoginHeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 25);

    path.quadraticBezierTo(
      size.width / 2,
      size.height + 20,
      size.width,
      size.height - 25,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}