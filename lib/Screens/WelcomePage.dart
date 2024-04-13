import 'package:cleaneo_driver_app/Screens/Auth/Login.dart';
import 'package:cleaneo_driver_app/Screens/Auth/Signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        // Exiting the app when back button is pressed
        return true;
      },
      child: Scaffold(
        body: Container(
          color: const Color(0xff006aca),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: mQuery.size.height * 0.3,
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
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
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
                                    fontSize: mQuery.size.height * 0.023,
                                    fontFamily: 'SatoshiBold'),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.032,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return const LoginPage();
                          }));
                        },
                        child: Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                              color: const Color(0xff29b3fe),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: mQuery.size.height * 0.023,
                                    fontFamily: 'SatoshiBold'),
                              )),
                        ),
                      ),
                      // Divider Row
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
