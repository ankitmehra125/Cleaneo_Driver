
import 'package:cleaneo_driver_app/Screens/Auth/Login.dart';
import 'package:cleaneo_driver_app/Screens/Auth/Signup.dart';
import 'package:cleaneo_driver_app/Screens/Welcome/CP_page.dart';
import 'package:cleaneo_driver_app/Screens/Welcome/PP_page.dart';
import 'package:cleaneo_driver_app/Screens/Welcome/TS_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: const Color(0xff006aca),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: mQuery.size.height * 0.33,
            ),
            Center(
              child: SvgPicture.asset("assets/images/mainlogo.svg"),
            ),
            SizedBox(
              height: mQuery.size.height * 0.07,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return SignUpPage();
                        }));
                      },
                      child: Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.06,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mQuery.size.height*0.023,
                                  fontFamily: 'PoppinsSemiBold'),
                            )),
                      ),
                    ),

                    SizedBox(
                      height: mQuery.size.height * 0.03,
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return LoginPage();
                        }));
                      },
                      child: Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.06,
                        decoration: BoxDecoration(
                            color: const Color(0xff29b3fe),
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mQuery.size.height*0.023,
                                  fontFamily: 'PoppinsSemiBold'),
                            )),
                      ),
                    ),

                    SizedBox(height: mQuery.size.height*0.3,),
                    Center(
                      child: Text(
                        "Terms",
                        style: TextStyle(
                            fontSize: mQuery.size.height*0.02,
                            color: Colors.white, fontFamily: 'PoppinsSemiBold'),
                      ),
                    ),

                    SizedBox(
                      height: mQuery.size.height * 0.005,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Terms of services
                        GestureDetector(
                          onTap : ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TS();
                            }));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Terms of Service",
                                style: TextStyle(
                                    fontSize: mQuery.size.height*0.014,
                                    color: Colors.white,
                                    fontFamily: 'PoppinsSemiBold'),
                              ),
                              SizedBox(height: 5.0,),
                              Container(
                                height: 1,
                                width: mQuery.size.width*0.25,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),

                        // privacy policy
                        GestureDetector(
                          onTap : ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return PP();
                            }));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Privacy Policy",
                                style: TextStyle(
                                    fontSize: mQuery.size.height*0.014,
                                    color: Colors.white,
                                    fontFamily: 'PoppinsSemiBold'),
                              ),
                              SizedBox(height: 5.0,),
                              Container(
                                height: 1,
                                width: mQuery.size.width*0.22,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),

                        // content policies
                        GestureDetector(
                          onTap : ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return CP();
                            }));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text(
                                "Content Policies",
                                style: TextStyle(
                                    fontSize: mQuery.size.height*0.014,
                                    color: Colors.white,
                                    fontFamily: 'PoppinsSemiBold'),
                              ),
                              SizedBox(height: 5.0,),
                              Container(
                                height: 1,
                                width: mQuery.size.width*0.24,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    // Divider Row
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}