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
              width: double.infinity,
              height: mQuery.size.height * 0.285,
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
              child: ListView(
                // padding: EdgeInsets.zero,
                // physics: ClampingScrollPhysics(),
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
                                size: 30,
                              ),
                              color: Colors.white,
                            );
                          },
                        ),
                        SvgPicture.asset(
                          "assets/images/Home/mainlogo.svg",
                          width: 30,
                          height: 22,
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
                            radius: 16,
                            fontsize: 10,
                            img:
                                "https://a.storyblok.com/f/191576/1200x800/faa88c639f/round_profil_picture_before_.webp",
                          ),
                        )
                      ],
                    ),
                  ),
                  // SizedBox(height: mQuery.size.height*0.01,),
                  Column(
                    children: [
                      SizedBox(height: mQuery.size.height * 0.006),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Welcome Back!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mQuery.size.height * 0.02,
                                  fontFamily: 'PoppinsSemiBold'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shweta",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mQuery.size.height * 0.018,
                              fontFamily: 'PoppinsBold'),
                        ),
                        SizedBox(height: mQuery.size.height*0.01,),
                        Row(
                          children: [
                            Text(
                              status ? 'Online' : 'Offline',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                              ),
                            ),
                            SizedBox(width: mQuery.size.width*0.012,),
                            Transform.scale(
                              scale: 0.7,
                              child: Switch(
                                value: status,
                                activeTrackColor: Colors.white,
                                onChanged: (newValue) {
                                  setState(() {
                                    status = newValue;
                                  });
                                },
                                thumbColor: MaterialStateProperty.resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                    // Set thumb color to green when switch is active (on)
                                    if (states.contains(MaterialState.selected)) {
                                      return Colors.green;
                                    }
                                    // Return null to use default color for other states
                                    return null;
                                  },
                                ),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                  // Expanded(child: SizedBox()),
                 // SizedBox(height: 32,),
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
                  Row(
                    children: List.generate(gridItems1.length, (index) {
                      var item = gridItems1[index];
                      return Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => _pages1[index],
                              ),
                            );
                          },
                          child: Container(
                            width: mQuery.size.width*0.4,
                            height: mQuery.size.height*0.14,
                            margin: EdgeInsets.symmetric(
                              horizontal: 20
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
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
                                  width: mQuery.size.width * 0.15,
                                  height: mQuery.size.height * 0.07,
                                  child: Image.asset(
                                    item["image"],
                                  ),
                                ),
                                SizedBox(height: mQuery.size.height * 0.006),
                                Text(
                                  item["text"],
                                  style: TextStyle(
                                    fontSize: mQuery.size.height * 0.014,
                                    fontFamily: 'PoppinsSemiBold',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),

                  SizedBox(height: mQuery.size.height * 0.04),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StartTripPage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.06,
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
                                width: mQuery.size.width * 0.03,
                                height: mQuery.size.height * 0.026,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Start Trip",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.018,
                                    color: Colors.white,
                                    fontFamily: 'PoppinsSemiBold'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.04),

                  //second
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => _pages2[0],
                              ),
                            );
                          },
                          child: Container(
                            width: mQuery.size.width*0.4,
                            height: mQuery.size.height*0.14,
                            margin: EdgeInsets.symmetric(
                              horizontal: 20
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
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
                                  width: mQuery.size.width * 0.15,
                                  height: mQuery.size.height * 0.05,
                                  child: Image.asset(
                                    gridItems2[0]["image"],
                                  ),
                                ),
                                SizedBox(height: mQuery.size.height * 0.006),
                                Text(
                                  gridItems2[0]["text"],
                                  style: TextStyle(
                                    fontSize: mQuery.size.height * 0.014,
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
                                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      gridItems2[0]["earnings"],
                                      style: TextStyle(
                                        fontSize: mQuery.size.height * 0.012,
                                        fontFamily: 'PoppinsSemiBold',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => _pages2[1],
                              ),
                            );
                          },
                          child: Container(
                            height: mQuery.size.height*0.14,
                            margin: EdgeInsets.symmetric(
                              horizontal: 20
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
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
                                  width: mQuery.size.width * 0.15,
                                  height: mQuery.size.height * 0.05,
                                  child: Image.asset(
                                    gridItems2[1]["image"],
                                  ),
                                ),
                                SizedBox(height: mQuery.size.height * 0.006),
                                Text(
                                  gridItems2[1]["text"],
                                  style: TextStyle(
                                    fontSize: mQuery.size.height * 0.014,
                                    fontFamily: 'PoppinsSemiBold',
                                  ),
                                ),

                                Container(
                                  width: mQuery.size.width * 0.13,
                                  height: mQuery.size.height * 0.022,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      gridItems2[1]["earnings"],
                                      style: TextStyle(
                                        fontSize: mQuery.size.height * 0.012,
                                        fontFamily: 'PoppinsSemiBold',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
