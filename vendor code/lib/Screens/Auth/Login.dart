
import 'package:cleaneo_driver_app/Screens/Auth/OTP.dart';
import 'package:cleaneo_driver_app/Screens/Auth/Signup.dart';
import 'package:cleaneo_driver_app/Screens/WelcomePage.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';


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
                        fontSize: mQuery.size.height * 0.027,
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
                  child: SingleChildScrollView(
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
                                blurRadius: 10,
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
                                        fontSize: mQuery.size.height * 0.015,
                                        fontFamily: 'SatoshiMedium',
                                        color:
                                            Color.fromARGB(255, 201, 201, 201),
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

                        SizedBox(
                          height: mQuery.size.height * 0.58,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return OTPPage();
                            }));
                          },
                          child: Container(
                            width: double.infinity,
                            height: mQuery.size.height * 0.06,
                            decoration: BoxDecoration(
                                color: const Color(0xff29b2fe),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.022,
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
                                  fontSize: mQuery.size.height * 0.015,
                                  fontFamily: 'SatoshiMedium'),
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
                                    fontSize: mQuery.size.height * 0.015,
                                    fontFamily: 'SatoshiBold',
                                    color: const Color(0xff29b2fe)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
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
