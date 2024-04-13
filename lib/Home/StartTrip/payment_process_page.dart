import 'dart:math';
import 'package:flutter/material.dart';

class PaymentProcessPage extends StatefulWidget {
  const PaymentProcessPage({Key? key}) : super(key: key);

  @override
  State<PaymentProcessPage> createState() => _PaymentProcessPageState();
}

class _PaymentProcessPageState extends State<PaymentProcessPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: mQuery.size.height * 0.2),
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _controller.value * 2 * pi,
                  child: Container(
                    width: mQuery.size.width * 0.2,
                    height: mQuery.size.height * 0.08,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffadd6ad),
                    ),
                    child: Center(
                      child: Image.asset("assets/images/success.png"),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: mQuery.size.height * 0.02),
          const Center(
            child: Text(
              "Payment Receiving",
              style: TextStyle(
                color: Color(0xff201335),
                fontSize: 24,
                fontFamily: 'SatoshiBold',
              ),
            ),
          ),
          SizedBox(height: mQuery.size.height * 0.1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.3),
            child: LinearProgressIndicator(
              minHeight: mQuery.size.height * 0.008,
              color: const Color(0xff008000),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
