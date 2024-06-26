import 'dart:io';
import 'package:cleaneo_driver_app/Screens/Driver_Onboarding/DL.dart';
import 'package:cleaneo_driver_app/Screens/Driver_Onboarding/uploadPAN.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UploadAdhaar extends StatefulWidget {
  const UploadAdhaar({Key? key}) : super(key: key);

  @override
  State<UploadAdhaar> createState() => _UploadAdhaarState();
}

class _UploadAdhaarState extends State<UploadAdhaar> {
  TextEditingController aadharController = TextEditingController();

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
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.045,
                  ),
                  const Text(
                    "Upload Aadhaar Card",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'SatoshiBold',
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: const Offset(
                          0,0), // changes the position of the shadow
                    ),
                  ],
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: mQuery.size.width * 0.9,
                              child: const Text(
                                "Take a picture of the front and back side of your document in a HORIZONTAL position.",
                                style: TextStyle(
                                  fontFamily: 'SatoshiMedium',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.03,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 16),
                          width: double.infinity,
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 0), // changes the position of the shadow
                              ),
                            ],
                          ),
                          child: TextField(
                            cursorColor: Colors.grey,
                            controller: aadharController,
                            decoration: const InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: "Enter Aadhaar Number",
                              hintStyle: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'SatoshiMedium',
                                  color: Color(0xffABAFB1)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.05,
                        ),
                        SvgPicture.asset("assets/adhaarpicker.svg"),
                        SvgPicture.asset("assets/adhaarpicker.svg"),
                        const Spacer(),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const UploadPAN();
                                }));
                              },
                              child: Container(
                                width: double.infinity,
                                height: mQuery.size.height * 0.06,
                                decoration: BoxDecoration(
                                    color: const Color(0xff29b2fe),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Center(
                                  child: const Text(
                                    "Next",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: mQuery.size.height*0.01,)
                          ],
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
