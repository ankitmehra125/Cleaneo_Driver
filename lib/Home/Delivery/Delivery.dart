import 'package:cleaneo_driver_app/Home/Delivery/Components/RowText.dart';
import 'package:cleaneo_driver_app/Screens/Drawer.dart';
import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  TextEditingController storeNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController gstinController = TextEditingController();

  List<Map<String, dynamic>> orders = [
    {
      "status": "Accepted",
      "time": "11:30 AM",
    },
    {
      "status": "In Process",
      "time": "11:30 AM",
    },
    {
      "status": "On its way",
      "time": "11:30 AM",
    },
    {
      "status": "Delivered",
      "time": "11:30 AM",
    },
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(),
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _scaffoldKey.currentState!.openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: mQuery.size.width * 0.045,
                    ),
                    Row(
                      children: [
                        Text(
                          "Delivery",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mQuery.size.height * 0.022,
                              fontFamily: 'SatoshiBold'),
                        ),
                        SizedBox(
                          width: mQuery.size.height * 0.1,
                        ),
                        Text(
                          "Cash Collected: 1000.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: mQuery.size.height * 0.012,
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ],
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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 1,
                      offset: const Offset(
                          3, 3), // changes the position of the shadow
                    ),
                  ],
                ),
                child: const Column(
                  children: [
                    Expanded(child: TwoText())
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
