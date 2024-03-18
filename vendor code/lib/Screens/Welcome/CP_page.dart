import 'package:flutter/material.dart';

class CP extends StatefulWidget {
  const CP({super.key});

  @override
  State<CP> createState() => _CPState();
}

class _CPState extends State<CP> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: mQuery.size.height * 0.03),
            Text(
              "Content Policies",
              style: TextStyle(
                  fontSize: mQuery.size.height*0.028,
                  fontFamily: 'SatoshiBold'
              ),
            ),
            SizedBox(height: mQuery.size.height * 0.02),
            Text(
              "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
              style: TextStyle(
                  fontSize: mQuery.size.height*0.0165,
                  fontFamily: 'SatoshiMedium'
              ),
            ),
            SizedBox(height: mQuery.size.height * 0.01),
            Text(
              "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
              style: TextStyle(
                  fontSize: mQuery.size.height*0.0165,
                  fontFamily: 'SatoshiMedium'
              ),
            ),
            SizedBox(height: mQuery.size.height * 0.01),
            Text(
              "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
              style: TextStyle(
                  fontSize: mQuery.size.height*0.0165,
                  fontFamily: 'SatoshiMedium'
              ),
            ),
          ],
        ),
      ),
    );
  }
}