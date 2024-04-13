import 'package:cleaneo_driver_app/Home/Home_/Home.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class DeliveryOTPPage extends StatefulWidget {
  const DeliveryOTPPage({Key? key}) : super(key: key);

  @override
  State<DeliveryOTPPage> createState() => _DeliveryOTPPageState();
}

class _DeliveryOTPPageState extends State<DeliveryOTPPage> {
  TextEditingController issueController = TextEditingController();
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;
  int focusedIndex = -1;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(6, (_) => TextEditingController());
    focusNodes = List.generate(6, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    final defaultPinTheme = PinTheme(
      width: mQuery.size.width * 0.23,
      height: mQuery.size.height * 0.08,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.45),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      textStyle: TextStyle(
        fontSize: mQuery.size.height * 0.038,
        fontWeight: FontWeight.w700,
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: mQuery.size.height * 0.034),
          Padding(
            padding: EdgeInsets.only(
              top: mQuery.size.height * 0.058,
              bottom: mQuery.size.height * 0.03,
              left: mQuery.size.width * 0.045,
              right: mQuery.size.width * 0.045,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: mQuery.size.height * 0.03),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: mQuery.size.width * 0.045),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Enter OTP to verify PickUp",
                              style: TextStyle(
                                  fontSize: mQuery.size.height * 0.0215,
                                  fontFamily: 'SatoshiBold'),
                            ),

                            SizedBox(height: mQuery.size.height*0.05,),
                            Pinput(
                              length: 6,
                              defaultPinTheme: defaultPinTheme,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: mQuery.size.height * 0.455),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                        },
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width * 0.045),
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                              color: Color(0xff29b2fe),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                            child: Text(
                              "Verify",
                              style: TextStyle(
                                  fontSize: mQuery.size.height * 0.022,
                                  color: Colors.white,
                                  fontFamily: 'SatoshiBold'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


}

class OTPBox extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isFocused;

  const OTPBox({super.key, required this.controller, required this.focusNode, required this.isFocused});

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return TextField(
      controller: controller,
      focusNode: focusNode,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      maxLength: 1,
      decoration: InputDecoration(
        counterText: "",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
      ),
    );
  }
}
