import 'package:flutter/material.dart';

class VehDetailsFileds extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const VehDetailsFileds({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  State<VehDetailsFileds> createState() => _VehDetailsFiledsState();
}

class _VehDetailsFiledsState extends State<VehDetailsFileds> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Column(
      children: [
        SizedBox(
          height: mQuery.size.height * 0.01,
        ),
        Container(
          width: double.infinity,
          height: mQuery.size.height * 0.06,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 201, 201, 201).withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 10,
                offset:
                    const Offset(0, 0), // changes the position of the shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: TextField(
              cursorColor: Colors.grey,
              controller: widget.controller,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  fontSize: mQuery.size.height * 0.015,
                  fontFamily: 'SatoshiMedium',
                  color: const Color.fromARGB(255, 161, 161, 161),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
