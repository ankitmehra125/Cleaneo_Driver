
import 'package:cleaneo_driver_app/Screens/Auth/OTP.dart';
import 'package:cleaneo_driver_app/Screens/Auth/Signup.dart';
import 'package:cleaneo_driver_app/Screens/WelcomePage.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

String Otp = "";

String logedIn = "";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phonenoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  PhoneNumber? phoneNumber;
  String selectedCountryCode = 'IN';

  bool tns = false;

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff006acb),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding: const EdgeInsets.only(
                  top: 45, left: 16, right: 16, bottom: 20),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const WelcomePage();
                        }));
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: mQuery.size.width * 0.045,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'SatoshiBold'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: mQuery.size.height * 0.03,
                      ),
                      // PHONE NUMBER
                      Text(
                        "Phone Number",
                        style: TextStyle(
                          fontFamily: 'SatoshiBold',
                          fontSize: mQuery.size.height * 0.015,
                        ),
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.01,
                      ),
                      Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.066,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 201, 201, 201),
                              spreadRadius: 0,
                              blurRadius: 7,
                              offset: Offset(
                                  0, 0), // changes the position of the shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: mQuery.size.width * 0.03),
                            const Icon(
                              Icons.phone_outlined,
                              color: Color.fromARGB(255, 201, 201, 201),
                            ),
                            CountryCodePicker(
                              onChanged: (code) {
                                setState(() {
                                  selectedCountryCode = code.dialCode!;
                                });
                              },
                              initialSelection: 'IN',
                              favorite: const ['+91', 'IN'],
                              showCountryOnly: false,
                              showFlag: true,
                              flagWidth: 18,
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                              showOnlyCountryWhenClosed: false,
                              alignLeft: false,
                            ),
                            // "|" symbol
                            SizedBox(
                              height: mQuery.size.height * 0.03,
                              child: const VerticalDivider(
                                thickness: 1.5,
                                color: Color.fromARGB(255, 201, 201, 201),
                              ),
                            ),
                            SizedBox(width: mQuery.size.width * 0.02),
                            // Phone number input
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                cursorColor: Colors.grey,
                                controller: phonenoController,
                                maxLength: 10,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter
                                      .digitsOnly // Allow only numeric input
                                ],
                                decoration: InputDecoration(
                                    hintText: "Enter Phone Number*",
                                    hintStyle: TextStyle(
                                      fontSize: mQuery.size.height * 0.02,
                                      fontFamily: 'SatoshiMedium',
                                      color: Color(0xffABAFB1),
                                    ),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    contentPadding:
                                        const EdgeInsets.symmetric(
                                            vertical: 2),
                                    counter: const SizedBox.shrink()),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: mQuery.size.height * 0.023,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              checkColor: Color(0xffffffff),
                              activeColor: Color(0xff29b2fe),
                              value: tns,
                              onChanged: (value) {
                                setState(() {
                                  tns = !tns;
                                });
                              },
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "By Continuing, you agree to our  ",
                                      style: TextStyle(
                                        fontSize: mQuery.size.width * 0.025,
                                        color: tns == false
                                            ? Colors.grey
                                            : Colors.black,
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) {
                                        // return TS();
                                        // }));
                                        showModalBottomSheet(
                                          isScrollControlled: true,
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.55,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.only(
                                                      topLeft: Radius
                                                          .circular(20),
                                                      topRight:
                                                      Radius.circular(
                                                          20))),
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    20.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Terms of Service",
                                                      style: TextStyle(
                                                        fontSize: mQuery
                                                            .size.height *
                                                            0.023,
                                                        color: Colors.black,
                                                        fontFamily:
                                                        'SatoshiBold',
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
                                                      style: TextStyle(
                                                          fontSize: mQuery
                                                              .size
                                                              .height *
                                                              0.0165,
                                                          fontFamily:
                                                          'SatoshiMedium'),
                                                    ),
                                                    SizedBox(
                                                        height: mQuery
                                                            .size.height *
                                                            0.0006),
                                                    Text(
                                                      "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
                                                      style: TextStyle(
                                                          fontSize: mQuery
                                                              .size
                                                              .height *
                                                              0.0165,
                                                          fontFamily:
                                                          'SatoshiMedium'),
                                                    ),
                                                    SizedBox(
                                                        height: mQuery
                                                            .size.height *
                                                            0.0006),
                                                    Text(
                                                      "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
                                                      style: TextStyle(
                                                          fontSize: mQuery
                                                              .size
                                                              .height *
                                                              0.0165,
                                                          fontFamily:
                                                          'SatoshiMedium'),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Terms of Service ",
                                            style: TextStyle(
                                              fontSize:
                                              mQuery.size.width * 0.025,
                                              color: tns == false
                                                  ? Colors.grey
                                                  : Colors.black,
                                              fontFamily: 'SatoshiMedium',
                                              decoration:
                                              TextDecoration.underline,
                                              decorationColor: tns == false
                                                  ? Colors.grey
                                                  : Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      ' , ',
                                      style: TextStyle(
                                        fontSize: mQuery.size.width * 0.025,
                                        color: tns == false
                                            ? Colors.grey
                                            : Colors.black,
                                        fontFamily: 'SatoshiMedium',
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) {
                                        // return PP();
                                        // }));
                                        showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          builder: (context) {
                                            return Container(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.55,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.only(
                                                      topLeft: Radius
                                                          .circular(20),
                                                      topRight:
                                                      Radius.circular(
                                                          20))),
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    20.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Privacy Policy",
                                                      style: TextStyle(
                                                        fontSize: mQuery
                                                            .size.height *
                                                            0.023,
                                                        color: Colors.black,
                                                        fontFamily:
                                                        'SatoshiBold',
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
                                                      style: TextStyle(
                                                          fontSize: mQuery
                                                              .size
                                                              .height *
                                                              0.0165,
                                                          fontFamily:
                                                          'SatoshiMedium'),
                                                    ),
                                                    SizedBox(
                                                        height: mQuery
                                                            .size.height *
                                                            0.01),
                                                    Text(
                                                      "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
                                                      style: TextStyle(
                                                          fontSize: mQuery
                                                              .size
                                                              .height *
                                                              0.0165,
                                                          fontFamily:
                                                          'SatoshiMedium'),
                                                    ),
                                                    SizedBox(
                                                        height: mQuery
                                                            .size.height *
                                                            0.01),
                                                    Text(
                                                      "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
                                                      style: TextStyle(
                                                          fontSize: mQuery
                                                              .size
                                                              .height *
                                                              0.0165,
                                                          fontFamily:
                                                          'SatoshiMedium'),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Privacy Policy",
                                            style: TextStyle(
                                              fontSize:
                                              mQuery.size.width * 0.025,
                                              color: tns == false
                                                  ? Colors.grey
                                                  : Colors.black,
                                              fontFamily: 'SatoshiMedium',
                                              decoration:
                                              TextDecoration.underline,
                                              decorationColor: tns == false
                                                  ? Colors.grey
                                                  : Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' and ',
                                      style: TextStyle(
                                        fontSize: mQuery.size.width * 0.025,
                                        color: tns == false
                                            ? Colors.grey
                                            : Colors.black,
                                        fontFamily: 'SatoshiMedium',
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(context,
                                        //     MaterialPageRoute(builder: (context) {
                                        // return CP();
                                        // }));
                                        showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          builder: (context) {
                                            return Container(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.55,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.only(
                                                      topLeft: Radius
                                                          .circular(20),
                                                      topRight:
                                                      Radius.circular(
                                                          20))),
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    20.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Content Policies",
                                                      style: TextStyle(
                                                        fontSize: mQuery
                                                            .size.height *
                                                            0.023,
                                                        color: Colors.black,
                                                        fontFamily:
                                                        'SatoshiBold',
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
                                                      style: TextStyle(
                                                          fontSize: mQuery
                                                              .size
                                                              .height *
                                                              0.0165,
                                                          fontFamily:
                                                          'SatoshiMedium'),
                                                    ),
                                                    SizedBox(
                                                        height: mQuery
                                                            .size.height *
                                                            0.006),
                                                    Text(
                                                      "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
                                                      style: TextStyle(
                                                          fontSize: mQuery
                                                              .size
                                                              .height *
                                                              0.0165,
                                                          fontFamily:
                                                          'SatoshiMedium'),
                                                    ),
                                                    SizedBox(
                                                        height: mQuery
                                                            .size.height *
                                                            0.006),
                                                    Text(
                                                      "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
                                                      style: TextStyle(
                                                          fontSize: mQuery
                                                              .size
                                                              .height *
                                                              0.0165,
                                                          fontFamily:
                                                          'SatoshiMedium'),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Text(
                                        "Content Policies",
                                        style: TextStyle(
                                          fontSize: mQuery.size.width * 0.025,
                                          color: tns == false
                                              ? Colors.grey
                                              : Colors.black,
                                          fontFamily: 'SatoshiMedium',
                                          decoration:
                                          TextDecoration.underline,
                                          decorationColor: tns == false
                                              ? Colors.grey
                                              : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: tns == false
                          ? null
                          : () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                Otp = "Login";
                                logedIn = "Login";
                            return OTPPage();
                          }));
                        },
                        child: Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                              color: tns == false
                                  ? Color.fromARGB(145, 41, 179, 254)
                                  : Color(0xff29b2fe),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'SatoshiBold'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'SatoshiBold',
                            ),
                          ),
                          SizedBox(
                            width: mQuery.size.width * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const SignUpPage();
                              }));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'SatoshiBold',
                                  color: Color(0xff29b2fe)),),
                          ),
                        ],
                      ),
                      SizedBox(height: mQuery.size.height*0.023,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
