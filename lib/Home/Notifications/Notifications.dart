import 'package:cleaneo_driver_app/Home/Notifications/Components/notiData.dart';
import 'package:cleaneo_driver_app/Home/Notifications/Components/reportDispute.dart';
import 'package:cleaneo_driver_app/Home/Pickup/Components/rating_page.dart';
import 'package:cleaneo_driver_app/Screens/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/svg.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
                  top: 45, left: 16, bottom: 20),
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
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16
                    ),
                    child: Row(
                      children: [
                        const Text(
                          "Notifications",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily : "SatoshiBold",
                              color: Colors.white,
                          ),
                        ),
                        SizedBox(width: mQuery.size.width*0.24,),
                        Text(
                          "Clear All",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'SatoshiBold'),
                        ),
                      ],
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
                      blurRadius: 0,
                      offset: const Offset(0,0), // changes the position of the shadow
                    ),
                  ],
                ),
                child: ListView.builder(
                  itemCount: NotificationsData
                      .length, // Replace dataList with your list of dynamic data
                  itemBuilder: (context, index) {
                    final Map<String, dynamic> data = NotificationsData[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                data['notidate'],
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 181, 181, 181),
                                    fontFamily: 'SatoshiMedium',
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            width: mQuery.size.width * 0.9,
                            // height: mQuery.size.height * 0.28,
                            decoration: BoxDecoration(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(12.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 0,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                            ),
                            // padding: EdgeInsets.all(mQuery.size.width * 0.02),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                    color: Colors.white,
                                  ),
                                  width: double.infinity,
                                  height: mQuery.size.height * 0.06,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: mQuery.size.width * 0.03),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(top: 8.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${data['notitype']}',
                                                style: TextStyle(
                                                    fontFamily : "SatoshiBold",
                                                    color: Color(0xff29b2fe)),
                                              ),
                                              data["status"] == 'pickup'
                                                  ? const Text(
                                                "You successfully picked up the order from ",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontFamily: 'SatoshiMedium',
                                                    color: Colors.black),
                                              )
                                                  : Text(
                                                "You successfully delivered the order to",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontFamily: 'SatoshiMedium',
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Icon(
                                        Icons.delete_outline_rounded,
                                        size: mQuery.size.width * 0.047,
                                        color: const Color(0xff29b2fe),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: mQuery.size.height * 0.01,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Row(
                                    children: [
                                      const ProfilePicture(
                                        name: "",
                                        radius: 18,
                                        fontsize: 10,
                                        img:
                                        "https://a.storyblok.com/f/191576/1200x800/faa88c639f/round_profil_picture_before_.webp",
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${data["name"]}',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize:
                                                mQuery.size.height * 0.012,
                                                fontFamily: 'SatoshiMedium'),
                                          ),
                                          Text(
                                            '${data['ordernumber']}',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize:
                                                mQuery.size.height * 0.012,
                                                fontFamily: 'SatoshiMedium'),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: mQuery.size.height * 0.01,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: mQuery.size.height * 0.08,
                                  color: const Color(
                                    0xFFF3FBFF,
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Please share your valuable feedback with us.",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'SatoshiMedium'
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 6.0,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    RatingPage(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: 85,
                                            height: 22,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFF29B2FE),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(3.0),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "SUBMIT REVIEW",
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  fontFamily: 'SatoshiBold',
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: mQuery.size.height * 0.01,
                                ),
                                const Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Divider(
                                    color: Color.fromARGB(255, 212, 212, 212),
                                    thickness: 0.7,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Text(
                                    data["notitime"],
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'SatoshiMedium',
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: mQuery.size.height * 0.01,
                                ),
                                if (data["notitype"] == 'Order Received')
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                          const ReportDispute(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      color: const Color(0xFFF3FBFF),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.warning_amber_rounded,
                                            color: Colors.red,
                                          ),
                                          SizedBox(
                                            width: 8.0,
                                          ),
                                          Text(
                                            "Report Dispute",
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                if (data["notitype"] == 'Order Delivered')
                                  Container(
                                    width: double.infinity,
                                    height: 50,
                                    color: const Color(0xFFF3FBFF),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.download_done_rounded,
                                          color: Colors.green,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          "Order Delivered Succesfully",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
