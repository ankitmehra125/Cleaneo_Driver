import 'package:cleaneo_driver_app/Home/BotNav.dart';
import 'package:cleaneo_driver_app/Home/Home_/Home.dart';
import 'package:cleaneo_driver_app/Home/Pickup/Components/report_disputePage.dart';
import 'package:cleaneo_driver_app/Screens/Welcome/TS_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DeliveredDetailsPage extends StatefulWidget {
  const DeliveredDetailsPage({Key? key}) : super(key: key);

  @override
  State<DeliveredDetailsPage> createState() => _DeliveredDetailsPageState();
}

class _DeliveredDetailsPageState extends State<DeliveredDetailsPage> {

  List<Map<String, dynamic>> itemList = [
    {"name": "1 Shirts", "price": "₹ 10 PER KG"},
    {"name": "3 Blouse Designer", "price": "₹ 30 PER KG"},
    {"name": "2 Lehenga Suit (Heavy)", "price": "₹ 180 PER KG"},
    {"name": "3 Evening Dress (Heavy Work)", "price": "₹ 190 PER KG"},
    {"name": "2 Night Suit", "price": "₹ 45 PER KG"},
    {"name": "1 Waistcoat", "price": "₹ 50 PER KG"},
    {"name": "4 Short", "price": "₹ 25 PER KG"},
    {"name": "2 Skirt", "price": "₹ 25 PER KG"},
    {"name": "2 Swimming Costume", "price": "₹ 30 PER KG"},
    {"name": "3 Inner wear", "price": "₹ 15 PER KG"},
    {"name": "6 Socks/Stocking", "price": "₹ 10 PER KG"},
    {"name": "4 Frock", "price": "₹ 35 PER KG"},
    {"name": "2 Jump Suits", "price": "₹ 50 PER KG"},
  ];

  double totalKgValue = 0;
  List<int> kgValues = List.filled(13, 0);
  var caddress = "B-702, Sarthak the Sarjak";

  void calculateTotalKgValue() {
    totalKgValue = kgValues.fold(0, (prev, curr) => prev + curr);
  }


  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
        body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff006acb),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.0347),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height * 0.058,
                bottom: mQuery.size.height * 0.03,
                left: mQuery.size.width * 0.045,
                right: mQuery.size.width * 0.045,
              ),
              child: GestureDetector(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: mQuery.size.width * 0.045,
                    ),
                    Text(
                      "Delivered Details",
                      style: TextStyle(
                          fontSize: mQuery.size.height * 0.027,
                          fontFamily: 'SatoshiBold',
                          color: Colors.white),
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
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.045),

                  child: ListView(
                    children: [
                      SizedBox(height: mQuery.size.height*0.023,),
                      Text("Details",style: TextStyle(
                        fontSize: mQuery.size.height*0.02
                      ),),
                      SizedBox(height: mQuery.size.height*0.016,),
                      Row(
                        children: [
                          ProfilePicture(
                            radius: mQuery.size.width * 0.05,
                            fontsize: 10,
                            name: "",
                            img:
                            "https://images.news18.com/ibnkhabar/uploads/2023/09/IFS-Apala-mishra-age-upsc-rank-education-biography-in-hindi-marksheet-salary-1.jpg",
                          ),
                          SizedBox(width: mQuery.size.width*0.03,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shweta"),
                              Text("9836373648",style: TextStyle(
                                fontSize: 12
                              ),),
                            ],
                          ),
                         Expanded(child: SizedBox()),
                         Text("Total amount: ₹1500",style: TextStyle(
                           fontSize: 12,
                         ),)
                        ],
                      ),
                      SizedBox(height: mQuery.size.height*0.03,),
                      Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.2,
                              blurRadius: 7,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: mQuery.size.height * 0.015),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                "WASH",
                                style: TextStyle(
                                  fontSize: mQuery.size.height*0.0173,
                                  fontFamily: 'SatoshiMedium',
                                  color: Color(0xff29b2fe),
                                ),
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.012),
                            Expanded(
                              child: ListView.builder(
                                itemCount: itemList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  double pricePerKg = double.parse(itemList[index]["price"].split(" ")[1]);
                                  double totalCost = kgValues[index] * pricePerKg;

                                  return Column(
                                    children: [
                                      buildItemContainer(
                                        mQuery,
                                        itemList[index]["name"],
                                        itemList[index]["price"],
                                        kgValues[index],
                                            () {
                                          setState(() {
                                            kgValues[index] = kgValues[index] > 0 ? kgValues[index] - 1 : 0;
                                          });
                                        },
                                            () {
                                          setState(() {
                                            kgValues[index]++;
                                            calculateTotalKgValue();
                                          });
                                        },
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(right: 28),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            // Text(
                                            //   '₹ ${(totalCost).toStringAsFixed(0)}',
                                            //   style: TextStyle(
                                            //     fontSize: mQuery.size.height*0.0173,
                                            //     fontFamily: 'SatoshiMedium',
                                            //     color: Color(0xff29b2fe),
                                            //   ),
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 10),
                            // Text("Hello Flutter")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildItemContainer(
      MediaQueryData mQuery,
      String itemName,
      String itemPrice,
      int kgValue,
      Function() onRemovePressed,
      Function() onAddPressed) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: mQuery.size.width*0.025
      ),
      width: double.infinity,
      height: mQuery.size.height * 0.07,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemName,
                style: TextStyle(
                  fontFamily: 'SatoshiMedium',
                  fontSize: mQuery.size.height*0.0165,
                ),
              ),
              // Text(
              //   itemPrice,
              //   style: TextStyle(
              //     fontSize: mQuery.size.height*0.0165,
              //     color: Colors.black54,
              //     fontFamily: 'SatoshiRegular',
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
