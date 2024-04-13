import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyEarningstabs extends StatefulWidget {
  const MyEarningstabs({Key? key}) : super(key: key);

  @override
  _MyEarningstabsState createState() => _MyEarningstabsState();
}

class _MyEarningstabsState extends State<MyEarningstabs> {
  int _selectedIndex = 0;
  final List<String> _tabNames = ['Tips', 'Incentives'];

  final List<List<Map<String, List<Map<String, String>>>>> _tabData = [
    [
      // Daily data
      {
        "orders": [
          {
            "orderNumber": "1",
            "time": "10:00 AM",
            "onlineMode": "Yes",
            "earning": "₹ 180"
          },
          {
            "orderNumber": "2",
            "time": "11:30 AM",
            "onlineMode": "No",
            "earning": "₹ 200"
          },
          {
            "orderNumber": "3",
            "time": "01:00 PM",
            "onlineMode": "Yes",
            "earning": "₹ 230"
          },
          {
            "orderNumber": "2",
            "time": "11:30 AM",
            "onlineMode": "No",
            "earning": "₹ 200"
          },
        ]
      }
    ],
    [
      // Weekly data
      {
        "orders": [
          {
            "orderNumber": "4",
            "time": "Mon 10:00 AM",
            "onlineMode": "Yes",
            "earning": "₹ 230"
          },
          {
            "orderNumber": "5",
            "time": "Tue 11:30 AM",
            "onlineMode": "No",
            "earning": "₹ 220"
          },
          {
            "orderNumber": "6",
            "time": "Wed 01:00 PM",
            "onlineMode": "Yes",
            "earning": "₹ 100"
          },
        ]
      }
    ],
    [
      // Monthly data
      {
        "orders": [
          {
            "orderNumber": "7",
            "time": "Jan 10:00 AM",
            "onlineMode": "Yes",
            "earning": "₹ 300"
          },
          {
            "orderNumber": "8",
            "time": "Feb 11:30 AM",
            "onlineMode": "No",
            "earning": "₹ 190"
          },
          {
            "orderNumber": "9",
            "time": "Mar 01:00 PM",
            "onlineMode": "Yes",
            "earning": "₹ 200"
          },
        ]
      }
    ]
  ];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          child: Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _tabNames.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: mQuery.size.width * 0.47,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: _selectedIndex == index
                              ? const Color(0xFF29B2FE)
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        _tabNames[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'SatoshiBold',
                          color: _selectedIndex == index
                              ? const Color(0xFF29B2FE)
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        // const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: _tabData[_selectedIndex][0]["orders"]!.length,
            itemBuilder: (BuildContext context, int index) {
              var order = _tabData[_selectedIndex][0]["orders"]![index];
              return Container(
                height: mQuery.size.height * 0.08,
                margin: const EdgeInsets.only(bottom: 21.0),
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
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (order["onlineMode"] == "Yes")
                          SizedBox(
                              height: 30,
                              width: 30,
                              child: SvgPicture.asset(
                                "assets/earning1.svg",
                              )),
                        if (order["onlineMode"] == "No")
                          SizedBox(
                              height: 31,
                              width: 31,
                              child: SvgPicture.asset("assets/earning2.svg",
                                  color: Color(0xFF13A32B))),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order: ${order["orderNumber"]}',
                              style: const TextStyle(
                                  fontSize: 13.0,
                                fontFamily: 'SatoshiBold'),
                            ),
                            // SizedBox(height: 5.0),
                            Text(
                              '${order["time"]}',
                              style: const TextStyle(
                                  fontSize: 10.0,
                                  fontFamily: 'SatoshiMedium',
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        const Spacer(),
                        if (order["onlineMode"] == "Yes")
                          Text(
                            '${order["earning"]}',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily : "SatoshiBold",
                                color: Color(0xFF29B2FE)),
                          ),
                        if (order["onlineMode"] == "No")
                          Text(
                            '${order["earning"]}',
                            style: const TextStyle(
                                fontSize: 13.0,
                                fontFamily : "SatoshiBold",
                                color: Color(0xFF13A32B)),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
