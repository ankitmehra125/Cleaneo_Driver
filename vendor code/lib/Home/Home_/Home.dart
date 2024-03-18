
import 'package:cleaneo_driver_app/Home/CashCollected/CashCollected.dart';
import 'package:cleaneo_driver_app/Home/Delivery/Delivery.dart';
import 'package:cleaneo_driver_app/Home/MyEarnings/MyEarnings.dart';
import 'package:cleaneo_driver_app/Home/Pickup/Pickup.dart';
import 'package:cleaneo_driver_app/Home/StartTrip/Starttrip.dart';
import 'package:cleaneo_driver_app/Home/myProfile_page.dart';
import 'package:cleaneo_driver_app/Screens/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var orderNo = 3;
  int selectedContainerIndex = -1;

  TextEditingController searchController = TextEditingController();

  final List<Widget> _pages1 = [
    const PickUp(),
    const Delivery(),
  ];
  final List<Widget> _pages2 = [
    const MyEarnings(),
    const CashCollected(),
  ];
  List<Map<String, dynamic>> gridItems1 = [
    {
      "image": "assets/images/Home/Order Requests.png",
      "text": "Pickup",
    },
    {
      "image": "assets/images/Home/Delivery.png",
      "text": "Delivery",
    },
  ];
  List<Map<String, dynamic>> gridItems2 = [
    {
      "image": "assets/images/Home/My Earnings.png",
      "text": "My Earnings",
      "earnings": "₹ 1000"
    },
    {
      "image": "assets/images/Home/Cash Collected.png",
      "text": "Cash Collected",
      "earnings": "₹ 500"
    },
  ];
  bool status = false;
  // List<String> dealImages = [
  //   "https://img.freepik.com/premium-vector/super-deal-text-effect-editable-3d-text-style-suitable-banner-promotion_16148-1552.jpg",
  //   "https://cdn.vectorstock.com/i/preview-1x/10/75/amazing-deals-sign-over-colorful-cut-out-foil-vector-48291075.jpg",
  //   // Add more image filenames as needed
  // ];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    return Scaffold(
      drawer: MyDrawer(),
      body: Container(
        color: const Color(0xfff3fbff),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 32, bottom: 25),
              width: double.infinity,
              height: mQuery.size.height * 0.38,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/Home/splash.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Builder(
                          builder: (BuildContext context) {
                            return IconButton(
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                              icon: const Icon(
                                Icons.menu,
                                size: 35,
                              ),
                              color: Colors.white,
                            );
                          },
                        ),
                        SvgPicture.asset(
                          "assets/images/Home/mainlogo.svg",
                          width: 30,
                          height: 25,
                        ),
                        const Expanded(child: SizedBox()),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MyProfilePage();
                                },
                              ),
                            );
                          },
                          child: const ProfilePicture(
                            name: "",
                            radius: 18,
                            fontsize: 10,
                            img:
                                "https://a.storyblok.com/f/191576/1200x800/faa88c639f/round_profil_picture_before_.webp",
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: mQuery.size.height * 0.035,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Welcome Back!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mQuery.size.height * 0.035,
                                  fontFamily: 'PoppinsSemiBold'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shweta",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mQuery.size.height * 0.025,
                              fontFamily: 'PoppinsBold'),
                        ),
                        Row(
                          children: [
                            FlutterSwitch(
                              activeColor: Colors.green,
                              inactiveColor: Colors.white,
                              activeToggleColor: Colors.white,
                              inactiveToggleColor: Colors.black38,
                              inactiveText: "Offline",
                              activeText: "Online",
                              inactiveTextColor: Colors.black38,
                              activeTextColor: Colors.white,
                              width: mQuery.size.height * 0.11,
                              height: mQuery.size.height * 0.04,
                              valueFontSize: 12.0,
                              toggleSize: 30.0,
                              value: status,
                              borderRadius: 30.0,
                              padding: 5.0,
                              showOnOff: true,
                              onToggle: (val) {
                                setState(() {
                                  status = val;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.02),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    height: mQuery.size.height * 0.055,
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: TextField(
                      cursorColor: Colors.grey,
                      controller: searchController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                            fontSize: mQuery.size.height * 0.018,
                            color: const Color.fromARGB(255, 179, 179, 179),
                            fontFamily: 'PoppinsMedium'),
                        suffixIcon: const Icon(Icons.search,
                            color: Color.fromARGB(255, 179, 179, 179)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //First
            Expanded(
              child: ListView(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      var item = gridItems1[index];
                      return Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _pages1[index],
                                ),
                              );
                            },
                            child: Container(
                              width: mQuery.size.width * 0.45,
                              height: mQuery.size.height * 0.35,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              padding: EdgeInsets.only(
                                  top: mQuery.size.height * 0.046),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 85,
                                    height: 85,
                                    child: Image.asset(
                                      item["image"],
                                    ),
                                  ),
                                  SizedBox(height: mQuery.size.height * 0.01),
                                  Text(
                                    item["text"],
                                    style: TextStyle(
                                        fontSize: mQuery.size.height * 0.02,
                                        fontFamily: 'PoppinsSemiBold'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: mQuery.size.height * 0.01,
                            right: mQuery.size.width * 0.05,
                            child: Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: item["text"] == "Pickup"
                                    ? Colors.green
                                    : Colors.red,
                              ),
                              child: Center(
                                child: Text(
                                  item["text"] == "Pickup"
                                      ? "3"
                                      : "2", // Can be dynamic using map
                                  style: TextStyle(
                                      fontSize: mQuery.size.height * 0.013,
                                      fontFamily: 'PoppinsBold',
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: gridItems1.length,
                  ),
                  SizedBox(height: mQuery.size.height * 0.028),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StartTripPage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.065,
                        decoration: BoxDecoration(
                            color: const Color(0xff29b2fe),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/route.svg",
                                width: mQuery.size.width * 0.035,
                                height: mQuery.size.height * 0.035,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Start Trip",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.022,
                                    color: Colors.white,
                                    fontFamily: 'PoppinsSemiBold'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.028),

                  //second
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      var item = gridItems2[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => _pages2[index],
                            ),
                          );
                        },
                        child: Container(
                          width: mQuery.size.width * 0.45,
                          height: mQuery.size.height * 0.35,
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          padding:
                              EdgeInsets.only(top: mQuery.size.height * 0.046),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 75,
                                height: 75,
                                child: Image.asset(
                                  item["image"],
                                ),
                              ),
                              SizedBox(height: mQuery.size.height * 0.02),
                              Text(
                                item["text"],
                                style: TextStyle(
                                  fontSize: mQuery.size.height * 0.02,
                                  fontFamily: 'PoppinsSemiBold',
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                width: mQuery.size.width * 0.13,
                                height: mQuery.size.height * 0.022,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                ),
                                child: Center(
                                  child: Text(
                                    item["earnings"],
                                    style: TextStyle(
                                        fontSize: mQuery.size.height * 0.012,
                                        fontFamily: 'PoppinsSemiBold',
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: gridItems2.length,
                  ),
                  SizedBox(height: mQuery.size.height * 0.03),
                ],
              ),
            ),
          ],
        ),
      ),
      // drawer: const MyDrawer(),
    );
  }
}
