import 'package:camera/camera.dart';
import 'package:cleaneo_driver_app/Screens/Driver_Onboarding/VehDetails.dart';
import 'package:cleaneo_driver_app/Screens/Driver_Onboarding/uploadAdhaar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class DL extends StatefulWidget {
  const DL({Key? key}) : super(key: key);

  @override
  State<DL> createState() => _DLState();
}

class _DLState extends State<DL> {
  TextEditingController expDateController = TextEditingController();
  XFile? _image1;
  XFile? _image2;
  final ImagePicker _imagePicker = ImagePicker();

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
                    "Upload Driving License",
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
                                    fontFamily: "SatoshiMedium"),
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
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 0), // changes the position of the shadow
                              ),
                            ],
                          ),
                          child: TextField(
                            cursorColor: Colors.grey,
                            controller: expDateController,
                            decoration: const InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: "Enter Expiry Date",
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
                        buildImageContainer(mQuery, _image1, 1), // First Image Container
                        SizedBox(height: mQuery.size.height * 0.035,),
                        buildImageContainer(mQuery, _image2, 2),
                        SizedBox(height: mQuery.size.height*0.07,),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return UploadAdhaar();
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
                            SizedBox(height: mQuery.size.height*0.015,)
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

  Widget buildImageContainer(
      MediaQueryData mQuery, XFile? imageFile, int index) {
    return GestureDetector(
      onTap: () async {
        final imageSource = await showModalBottomSheet<ImageSource>(
          backgroundColor: Colors.white,
          context: context,
          builder: (BuildContext context) {
            return SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.camera_alt),
                    title: Text(
                      'Camera',
                      style: TextStyle(
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                    onTap: () =>
                        Navigator.of(context).pop(ImageSource.camera),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo_library),
                    title: Text(
                      'Gallery',
                      style: TextStyle(
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                    onTap: () =>
                        Navigator.of(context).pop(ImageSource.gallery),
                  ),
                ],
              ),
            );
          },
        );
        if (imageSource != null) {
          final XFile? pickedImage =
          await _imagePicker.pickImage(source: imageSource);

          setState(() {
            if (index == 1) {
              _image1 = pickedImage;
            } else if (index == 2) {
              _image2 = pickedImage;
            }
          });
        }
      },
      child: Container(
        width: double.infinity,
        height: mQuery.size.height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: imageFile != null
              ? DecorationImage(
            image: FileImage(File(imageFile.path)),
            fit: BoxFit.cover,
          )
              : null, // Null if imageFile is null
        ),
        child: imageFile == null
            ? SvgPicture.asset(
          "assets/adhaarpicker.svg",
          height: mQuery.size.height * 0.2,
        )
            : null, // No child if imageFile is not null
      ),
    );
  }
}
