import 'package:cleaneo_driver_app/Screens/Driver_Onboarding/Components/VehDetailsOptions.dart';
import 'package:cleaneo_driver_app/Screens/Driver_Onboarding/VehiclePicsAndDocs.dart';
import 'package:flutter/material.dart';

class VehDetails extends StatefulWidget {
  const VehDetails({Key? key}) : super(key: key);

  @override
  State<VehDetails> createState() => _VehDetailsState();
}

class _VehDetailsState extends State<VehDetails> {
  // Controllers are not configured correctly
  TextEditingController BrandController = TextEditingController();
  TextEditingController ModelController = TextEditingController();
  TextEditingController YearController = TextEditingController();

  TextEditingController LicPlateController = TextEditingController();
  TextEditingController RegNoController = TextEditingController();
  TextEditingController vehIdNoController = TextEditingController();
  TextEditingController ChassiController = TextEditingController();
  TextEditingController InsauranceController = TextEditingController();
  TextEditingController InsExpController = TextEditingController();
  TextEditingController VehExpController = TextEditingController();
  TextEditingController VehInsExpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff006acb),
        ),
        child: SingleChildScrollView(
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
                      "Add Vehicle Details",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'SatoshiBold',
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: mQuery.size.height * 0.03,
                      ),
                      Text(
                        "Basic Information*",
                        style: TextStyle(
                          fontFamily: 'SatoshiBold',
                          fontSize: mQuery.size.height * 0.015,
                        ),
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.013,
                      ),
                      VehDetailsFileds(
                        controller: BrandController,
                        hintText: 'Make/Brand*',
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.013,
                      ),
                      VehDetailsFileds(
                        controller: ModelController,
                        hintText: 'Model',
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.013,
                      ),
                      VehDetailsFileds(
                        controller: YearController,
                        hintText: 'Year',
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.04,
                      ),
                      Text(
                        "Registration Details",
                        style: TextStyle(
                          fontFamily: 'SatoshiBold',
                          fontSize: mQuery.size.height * 0.015,
                        ),
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.013,
                      ),
                      VehDetailsFileds(
                        controller: LicPlateController,
                        hintText: 'License Plate*',
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.013,
                      ),
                      VehDetailsFileds(
                        controller: RegNoController,
                        hintText: 'Registration Plate',
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.013,
                      ),
                      VehDetailsFileds(
                        controller: vehIdNoController,
                        hintText: 'Vehicle Identification Number',
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.013,
                      ),
                      VehDetailsFileds(
                        controller: ChassiController,
                        hintText: 'Chassis Number',
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.013,
                      ),
                      VehDetailsFileds(
                        controller: InsauranceController,
                        hintText: 'Insurance Number',
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.013,
                      ),
                      VehDetailsFileds(
                        controller: InsExpController,
                        hintText: 'Insurance Expiry Date',
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.013,
                      ),
                      VehDetailsFileds(
                        controller: VehExpController,
                        hintText: 'Vehicle Inspection',
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.013,
                      ),
                      VehDetailsFileds(
                        controller: VehInsExpController,
                        hintText: 'Vehicle Inspection Expiry Date',
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const VehPics();
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
                              "Next",
                              style: TextStyle(
                                  fontSize: mQuery.size.height * 0.02,
                                  color: Colors.white,
                                  fontFamily: 'SatoshiBold'),
                            ),
                          ),
                        ),
                      ),

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
