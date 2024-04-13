import 'dart:io';
import 'package:cleaneo_driver_app/Screens/Driver_Onboarding/Verifying.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class VehPics extends StatefulWidget {
  const VehPics({Key? key}) : super(key: key);

  @override
  State<VehPics> createState() => _VehPicsState();
}

class _VehPicsState extends State<VehPics> {
  TextEditingController storeNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController gstinController = TextEditingController();

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding: const EdgeInsets.only(
                  top: 45, left: 16, right: 16, bottom: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: mQuery.size.width * 0.036,
                    ),
                     Text(
                      "Vehicle Picture & Documents",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'SatoshiBold',
                      ),
                    )
                  ],
                ),
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
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: mQuery.size.height * 0.032,
                        ),
                        Row(
                          children: [
                            Text(
                              "Upload vehicle Pictures*",
                              style: TextStyle(
                                  fontFamily: 'SatoshiBold',
                                  fontSize: mQuery.size.height * 0.015),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset("assets/imagepicker.svg",
                             width: mQuery.size.width*0.19,),
                            SvgPicture.asset("assets/imagepicker.svg",
                             width: mQuery.size.width*0.19,),
                            SvgPicture.asset("assets/imagepicker.svg",
                             width: mQuery.size.width*0.19,),
                            SvgPicture.asset("assets/imagepicker.svg",
                             width: mQuery.size.width*0.19,),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.032,
                        ),
                        Row(
                          children: [
                            Text(
                              "Upload vehicle Documents*",
                              style: TextStyle(
                                  fontFamily: 'SatoshiBold',
                                  fontSize: mQuery.size.height * 0.015),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset("assets/imagepicker.svg",
                             width: mQuery.size.width*0.19,),
                            SvgPicture.asset("assets/imagepicker.svg",
                             width: mQuery.size.width*0.19,),
                            SvgPicture.asset("assets/imagepicker.svg",
                             width: mQuery.size.width*0.19,),
                            SvgPicture.asset("assets/imagepicker.svg",
                             width: mQuery.size.width*0.19,),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return Verifying();
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
                                "Finish",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontFamily: 'SatoshiBold'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.04,
                        )
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
