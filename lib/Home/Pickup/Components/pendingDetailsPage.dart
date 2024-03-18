import 'package:camera/camera.dart';
import 'package:cleaneo_driver_app/Home/Pickup/Components/cameraScreen.dart';
import 'package:cleaneo_driver_app/Home/StartTrip/Starttrip.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:url_launcher/url_launcher.dart';

class PendingDetailsPage extends StatefulWidget {
  const PendingDetailsPage({Key? key}) : super(key: key);

  @override
  State<PendingDetailsPage> createState() => _PendingDetailsPageState();
}

class _PendingDetailsPageState extends State<PendingDetailsPage> {

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    var distance = 1.2;
    var userName = "Shweta";
    TextEditingController searchController2 = TextEditingController();

    var _itemValue = ValueNotifier<int>(1); // for shirt
    var _itemValue1 = ValueNotifier<int>(1); // for lehenga

    var _itemValue2 = ValueNotifier<int>(1);
    var _itemValue3 = ValueNotifier<int>(1); // for night suit
    var _itemValue4 = ValueNotifier<int>(1); // for waistcoat

    var _itemValue5 = ValueNotifier<int>(1); // for Blouse Designer
    var _itemValue6 = ValueNotifier<int>(1); // for shorts
    var _itemValue7 = ValueNotifier<int>(1); // for skirt
    var _itemValue8 = ValueNotifier<int>(1); // for swimming costume
    var _itemValue9 = ValueNotifier<int>(1); // for innerWear
    var _itemValue10 = ValueNotifier<int>(1); // for socks
    var _itemValue11 = ValueNotifier<int>(1); // for frock
    var _itemValue12 = ValueNotifier<int>(1); // for jump suit

    bool _editTapped = false;

    var blouseNo = 03;
    var lehengaNo = 01;
    var evDressNo = 01;
    var nightSuiteNo = 02;
    var waistSuitNo = 02;
    var shortNo = 02;
    var skirtNo = 02;
    var sCNo = 01;
    var inWearNo = 06;
    var socksNo = 01;
    var frockNo = 02;
    var jumpSuitNo = 02;

    var kurtaDesignerNo = 02;
    var bedSheetNo = 01;
    var batheMateNo = 01;

    var shirtPrice = 10.0;
    var blousePrice = 30.0;
    var lehengaPrice = 180.0;
    var evPrice = 190.0;
    var nightSuitPrice = 45.0;
    var waistCoatPrice = 50.0;
    var shortPrice = 25.0;
    var skirtPrice = 25.0;
    var sCPrice = 30.0;
    var inWearPrice = 15.0;
    var socksPrice = 10.0;
    var frockPrice = 35.0;
    var jumpSuitePrice = 50.0;
    var kurtaDesignerPrice = 30.0;
    var bedSheetPrice = 50.0;
    var bathMatePrice = 30.0;

    double totalShirtPrice = _itemValue.value * shirtPrice;
    double totalBlousePrice = blouseNo * blousePrice;
    double totalLehengaPrice = lehengaNo * lehengaPrice;
    double totalEvPrice = evDressNo * evPrice;
    double totalNighSuitPrice = nightSuiteNo * nightSuitPrice;
    double totalWaistCoastPrice = waistSuitNo * waistCoatPrice;
    double totalShortPrice = shortNo * shortPrice;
    double totalSkirtPrice = skirtNo * skirtPrice;
    double totalScPrice = sCNo * sCPrice;
    double totalinWearPrice = inWearNo * inWearPrice;
    double totalSocksPrice = socksNo * socksPrice;
    double totalfrockPrice = frockNo * frockPrice;
    double totalJumpSuitPrice = jumpSuitNo * jumpSuitePrice;

    double totalKurtaDesignerPrice = kurtaDesignerNo * kurtaDesignerPrice;
    double totalBedSheetPrice = bedSheetNo * bedSheetPrice;
    double totalBathMatePrice = batheMateNo * bathMatePrice;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006acb),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height * 0.058,
                bottom: mQuery.size.height * 0.03,
                left: mQuery.size.width * 0.045,
                right: mQuery.size.width * 0.045,
              ),
              child: Row(
                children: [
                  GestureDetector(
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
                    "Pending Details",
                    style: TextStyle(
                      fontSize: mQuery.size.height * 0.027,
                      color: Colors.white,
                      fontFamily: 'SatoshiBold',
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  child:  Container(
                    width: double.infinity,
                    height: mQuery.size.height * 0.9,

                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: mQuery.size.height * 0.03,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: mQuery.size.width * 0.045),
                            child: Text(
                              "Pickup Order Summary",
                              style: TextStyle(
                                  fontSize: mQuery.size.height * 0.024,
                                  fontFamily: 'SatoshiBold'),
                            ),
                          ),
                          SizedBox(
                            height: mQuery.size.height * 0.025,
                          ),
                          Container(
                            width: double.infinity,
                            height: mQuery.size.height * 0.12,
                            padding: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width * 0.04),
                            color: const Color(0xffebf7ed),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ProfilePicture(
                                    radius: mQuery.size.width * 0.07,
                                    fontsize: 10,
                                    name: "",
                                    img:
                                    "https://images.news18.com/ibnkhabar/uploads/2023/09/IFS-Apala-mishra-age-upsc-rank-education-biography-in-hindi-marksheet-salary-1.jpg",
                                  ),
                                  SizedBox(
                                    width: mQuery.size.width * 0.025,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: mQuery.size.height * 0.016,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            userName,
                                            style: TextStyle(
                                                fontSize: mQuery.size.height * 0.022,
                                                fontFamily: 'SatoshiBold'),
                                          ),
                                          SizedBox(
                                            width: mQuery.size.width * 0.36,
                                          ),
                                          Row(children: [
                                            Container(
                                              width: mQuery.size.width * 0.05,
                                              height: mQuery.size.height * 0.04,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xff29b2fe)),
                                              child: Center(
                                                child: Icon(
                                                  Icons.home,
                                                  color: Colors.white,
                                                  size: mQuery.size.width * 0.033,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: mQuery.size.width * 0.02,
                                            ),
                                            Text(
                                              "$distance km",
                                              style: TextStyle(
                                                  fontSize: mQuery.size.height * 0.018,
                                                  fontFamily: 'SatoshiBold'),
                                            ),
                                          ])
                                        ],
                                      ),
                                      Text(
                                        "B-702, Sarthak the Sarjak, Bhaijipura Chokdi, PDPU \n"
                                            "Crossroad , Beside Pulse Mall, Seventhn Floor , Kudasan",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: mQuery.size.height * 0.025,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            padding: const EdgeInsets.only(left: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: TextField(
                              cursorColor: Colors.grey,
                              controller: searchController2,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: TextStyle(
                                    fontSize: mQuery.size.height * 0.02,
                                    color: Colors.grey.shade600,
                                    fontFamily: 'SatoshiMedium'),
                                suffixIcon:
                                const Icon(Icons.search, color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: mQuery.size.height * 0.025,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Clothes Detail",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'SatoshiBold',
                                      fontSize: mQuery.size.height * 0.0215),
                                ),
                                SizedBox(
                                  height: mQuery.size.height * 0.025,
                                ),

                                Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: mQuery.size.height * 0.7,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: mQuery.size.width * 0.036),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 5,
                                            spreadRadius: 0,
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: mQuery.size.height * 0.02),
                                            Text(
                                              "WASH",
                                              style: TextStyle(
                                                color: Color(0xff29b2fe),
                                                fontWeight: FontWeight.w500,
                                                fontSize: mQuery.size.height * 0.018,
                                                fontFamily: 'SatoshiMedium',
                                              ),
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.016),
                                            /// update shirt
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue,
                                                  builder: (context, value, child) {
                                                    double totalPrice = value * lehengaPrice;
                                                    return Text(
                                                      "$value Shirt",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),

                                                Expanded(child: SizedBox()),
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    setState(() {
                                                      _editTapped = !_editTapped;
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if (!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if (_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: ()
                                                              {
                                                                if (_itemValue.value > 0)
                                                                {
                                                                  _itemValue.value--;
                                                                }
                                                              },
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.remove,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () => _itemValue.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),


                                            Padding(
                                              padding: EdgeInsets.only(right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${shirtPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue,
                                                    builder: (context, value, child) {
                                                      double totalPrice = value * shirtPrice;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(
                                                          fontSize:
                                                          mQuery.size.height * 0.017,
                                                          fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),

                                                ],
                                              ),
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.016),

                                            // update Blouse designer
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue5,
                                                  builder: (context, value5, child) {
                                                    double totalPrice1 = value5 * lehengaPrice;
                                                    return Text(
                                                      "$value5 Blouse Designer)",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),

                                                Expanded(child: SizedBox()),
                                                // SizedBox(width: mQuery.size.width*0.043,),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _editTapped = !_editTapped;
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if(!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if(_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: ()
                                                              {
                                                                if (_itemValue5.value > 0) {
                                                                  _itemValue5.value--;
                                                                }
                                                              },
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.remove,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),

                                                            GestureDetector(
                                                              onTap: () => _itemValue5.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),

                                                          ],
                                                        )
                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),

                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${blousePrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue5,
                                                    builder: (context, value5, child) {
                                                      double totalPrice = value5 * blousePrice;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(
                                                          fontSize: mQuery.size.height * 0.017,
                                                          fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.016),


                                            ///  update lehenga
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue1,
                                                  builder: (context, value1, child) {
                                                    double totalPrice1 = value1 * lehengaPrice;
                                                    return Text(
                                                      "$value1 Lehenga Suit(Heavy)",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),
                                                Expanded(child: SizedBox()),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _editTapped = !_editTapped; // Toggle the value of _editTapped
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if (!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if (_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () {
                                                                if (_itemValue1.value > 0) {
                                                                  _itemValue1.value--;
                                                                }
                                                              },
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.remove,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),

                                                            GestureDetector(
                                                              onTap: () => _itemValue1.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )


                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),

                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${lehengaPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue1,
                                                    builder: (context, value, child) {
                                                      double totalPrice = value * lehengaPrice;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(
                                                          fontSize:
                                                          mQuery.size.height * 0.017,
                                                          fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.016),

                                            // update ev
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue2,
                                                  builder: (context, value2, child) {
                                                    double totalPrice1 = value2 * lehengaPrice;
                                                    return Text(
                                                      "$value2 Evening Dress(Heavy Work)",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),
                                                const Expanded(child: SizedBox()),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _editTapped = !_editTapped;
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if (!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if(_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                                onTap: ()
                                                                {
                                                                  if(_itemValue2.value > 0 )
                                                                  {
                                                                    _itemValue2.value--;
                                                                  }
                                                                },
                                                                child: Container(
                                                                  width: mQuery.size.width * 0.1,
                                                                  height: mQuery.size.height * 0.023,
                                                                  decoration: BoxDecoration(
                                                                    shape: BoxShape.circle,
                                                                    border: Border.all(
                                                                        color: Color(0xff29b2fe)),
                                                                  ),
                                                                  child: Center(
                                                                    child: Icon(Icons.remove,
                                                                        size: mQuery.size.width * 0.045,
                                                                        color: Color(0xff29b2fe)),
                                                                  ),
                                                                )
                                                            ),
                                                            GestureDetector(
                                                              onTap: () => _itemValue2.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),


                                                          ],
                                                        )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${evPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue2,
                                                    builder: (context, value, child) {
                                                      double totalPrice = value * evPrice;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(fontSize:
                                                        mQuery.size.height * 0.017, fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.016),

                                            // update night suit
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue3,
                                                  builder: (context, value3, child) {
                                                    double totalPrice1 = value3 * nightSuitPrice;
                                                    return Text(
                                                      "$value3 Night Suit",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),

                                                Expanded(child: SizedBox()),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _editTapped = !_editTapped; // Toggle the value of _editTapped
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if (!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if (_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () {
                                                                if (_itemValue3.value > 0) {
                                                                  _itemValue3.value--;
                                                                }
                                                              },
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.remove,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),

                                                            GestureDetector(
                                                              onTap: () => _itemValue3.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${nightSuitPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue3,
                                                    builder: (context, value3, child) {
                                                      double totalPrice = value3 * nightSuitPrice;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(
                                                          fontSize: mQuery.size.height * 0.017,
                                                          fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),

                                                ],
                                              ),
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.016),


                                            // update waistcoat
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue4,
                                                  builder: (context, value4, child) {
                                                    double totalPrice1 = value4 * waistCoatPrice;
                                                    return Text(
                                                      "$value4 Waistcoat ",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),

                                                Expanded(child: SizedBox()),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _editTapped = !_editTapped;
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if (!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if(_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                                onTap: ()
                                                                {
                                                                  if (_itemValue4.value > 0) {
                                                                    _itemValue4.value--;
                                                                  }
                                                                },
                                                                child: Container(
                                                                    width: mQuery.size.width * 0.1,
                                                                    height: mQuery.size.height * 0.023,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      border: Border.all(
                                                                          color: Color(0xff29b2fe)),
                                                                    ),
                                                                    child: Center(
                                                                      child: Icon(Icons.remove,
                                                                          size: mQuery.size.width * 0.045,
                                                                          color: Color(0xff29b2fe)),
                                                                    )
                                                                )
                                                            ),
                                                            GestureDetector(
                                                              onTap: () => _itemValue4.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),

                                                          ],
                                                        )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${waistCoatPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue4,
                                                    builder: (context, value, child) {
                                                      double totalPrice = value * waistCoatPrice ;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(
                                                          fontSize:
                                                          mQuery.size.height * 0.017,
                                                          fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),

                                                ],
                                              ),
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.016),

                                            // update short
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue6,
                                                  builder: (context, value6, child) {
                                                    double totalPrice1 = value6 * lehengaPrice;
                                                    return Text(
                                                      "$value6 Short",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),
                                                Expanded(child: SizedBox()),
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    setState(() {
                                                      _editTapped = !_editTapped;
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if (!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if (_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: ()
                                                              {
                                                                if (_itemValue6.value > 0)
                                                                {
                                                                  _itemValue6.value--;
                                                                }
                                                              },
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.remove,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () => _itemValue6.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${shortPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue6,
                                                    builder: (context, value, child) {
                                                      double totalPrice = value * shortPrice;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(
                                                          fontSize:
                                                          mQuery.size.height * 0.017,
                                                          fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),

                                                ],
                                              ),
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.016),

                                            // update skirt
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue7,
                                                  builder: (context, value7, child) {
                                                    double totalPrice1 = value7 * lehengaPrice;
                                                    return Text(
                                                      "$value7 Skirt",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),
                                                Expanded(child: SizedBox()),
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    setState(() {
                                                      _editTapped = !_editTapped;
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if (!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if (_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: ()
                                                              {
                                                                if (_itemValue7.value > 0)
                                                                {
                                                                  _itemValue7.value--;
                                                                }
                                                              },
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.remove,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () => _itemValue7.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${skirtPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue7,
                                                    builder: (context, value, child) {
                                                      double totalPrice = value * skirtPrice;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(
                                                          fontSize:
                                                          mQuery.size.height * 0.017,
                                                          fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.016),

                                            // update Swimming Costume
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue8,
                                                  builder: (context, value8, child) {
                                                    double totalPrice1 = value8 * lehengaPrice;
                                                    return Text(
                                                      "$value8 Swimming Costume",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),
                                                Expanded(child: SizedBox()),
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    setState(() {
                                                      _editTapped = !_editTapped;
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if (!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if (_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: ()
                                                              {
                                                                if (_itemValue6.value > 0)
                                                                {
                                                                  _itemValue8.value--;
                                                                }
                                                              },
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.remove,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () => _itemValue8.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${sCPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  Expanded(child: SizedBox()),
                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue8,
                                                    builder: (context, value, child) {
                                                      double totalPrice = value * sCPrice;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(
                                                          fontSize:
                                                          mQuery.size.height * 0.017,
                                                          fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),


                                            SizedBox(height: mQuery.size.height * 0.016),

                                            //  update Inner Wear
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue9,
                                                  builder: (context, value9, child) {
                                                    double totalPrice1 = value9 * inWearPrice;
                                                    return Text(
                                                      "$value9 Inner wear",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),

                                                Expanded(child: SizedBox()),
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    setState(() {
                                                      _editTapped = !_editTapped;
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if (!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if (_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: ()
                                                              {
                                                                if (_itemValue9.value > 0)
                                                                {
                                                                  _itemValue9.value--;
                                                                }
                                                              },
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.remove,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () => _itemValue9.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${inWearPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue9,
                                                    builder: (context, value, child) {
                                                      double totalPrice = value * inWearPrice;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(
                                                          fontSize:
                                                          mQuery.size.height * 0.017,
                                                          fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),



                                                ],
                                              ),
                                            ),


                                            SizedBox(height: mQuery.size.height * 0.016),
                                            // update socks
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue10,
                                                  builder: (context, value10, child) {
                                                    double totalPrice1 = value10 * lehengaPrice;
                                                    return Text(
                                                      "$value10 Socks/Stocking",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),
                                                Expanded(child: SizedBox()),
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    setState(() {
                                                      _editTapped = !_editTapped;
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if (!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if (_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: ()
                                                              {
                                                                if (_itemValue10.value > 0)
                                                                {
                                                                  _itemValue10.value--;
                                                                }
                                                              },
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.remove,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () => _itemValue10.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${socksPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),

                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue10,
                                                    builder: (context, value, child) {
                                                      double totalPrice = value * socksPrice;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(
                                                          fontSize:
                                                          mQuery.size.height * 0.017,
                                                          fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),

                                                ],
                                              ),
                                            ),

                                            SizedBox(height: mQuery.size.height * 0.016),

                                            // update Frock
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue11,
                                                  builder: (context, value11, child) {
                                                    double totalPrice1 = value11 * frockPrice;
                                                    return Text(
                                                      "$value11 Frock",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),
                                                Expanded(child: SizedBox()),
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    setState(() {
                                                      _editTapped = !_editTapped;
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if (!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if (_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: ()
                                                              {
                                                                if (_itemValue11.value > 0)
                                                                {
                                                                  _itemValue11.value--;
                                                                }
                                                              },
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.remove,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () => _itemValue11.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${frockPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue11,
                                                    builder: (context, value, child) {
                                                      double totalPrice = value * frockPrice;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(
                                                          fontSize:
                                                          mQuery.size.height * 0.017,
                                                          fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),


                                                ],
                                              ),
                                            ),


                                            SizedBox(height: mQuery.size.height * 0.016),

                                            // update jup suit
                                            Row(
                                              children: [
                                                ValueListenableBuilder<int>(
                                                  valueListenable: _itemValue12,
                                                  builder: (context, value12, child) {
                                                    double totalPrice1 = value12 * jumpSuitePrice;
                                                    return Text(
                                                      "$value12 Jump Suits",
                                                      style: TextStyle(
                                                        fontSize: mQuery.size.height * 0.017,
                                                        fontFamily: 'SatoshiBold',
                                                      ),
                                                    );
                                                  },
                                                ),
                                                Expanded(child: SizedBox()),
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    setState(() {
                                                      _editTapped = !_editTapped;
                                                    });
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      if (!_editTapped)
                                                        Image.asset(
                                                          "assets/images/drawer-images/edit.png",
                                                          color: Color(0xff29b2fe),
                                                          width: mQuery.size.width * 0.04,
                                                        ),
                                                      if (_editTapped)
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: ()
                                                              {
                                                                if (_itemValue12.value > 0)
                                                                {
                                                                  _itemValue12.value--;
                                                                }
                                                              },
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.remove,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () => _itemValue12.value++,
                                                              child: Container(
                                                                width: mQuery.size.width * 0.1,
                                                                height: mQuery.size.height * 0.023,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  border: Border.all(
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                                child: Center(
                                                                  child: Icon(Icons.add,
                                                                      size: mQuery.size.width * 0.045,
                                                                      color: Color(0xff29b2fe)),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                    ],
                                                  ),
                                                )

                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${jumpSuitePrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  ValueListenableBuilder<int>(
                                                    valueListenable: _itemValue12,
                                                    builder: (context, value, child) {
                                                      double totalPrice = value * jumpSuitePrice;
                                                      return Text(
                                                        "₹ ${totalPrice.toStringAsFixed(0)}",
                                                        style: TextStyle(
                                                          fontSize:
                                                          mQuery.size.height * 0.017,
                                                          fontFamily: 'SatoshiBold',
                                                        ),
                                                      );
                                                    },
                                                  ),

                                                ],
                                              ),
                                            ),


                                            Divider(),
                                            SizedBox(height: mQuery.size.height*0.006,),
                                            Row(
                                              children: [
                                                Text("Add-On(Cloth Softener)",style: TextStyle(
                                                  color: Color(0xff009c1a),
                                                ),),
                                                Expanded(child: SizedBox()),
                                                Text("₹ 240",style: TextStyle(
                                                    color: Color(0xff29b2fe)
                                                ),)
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("₹ 10 PER PIECE"),
                                                Expanded(child: SizedBox()),
                                                Text("REMOVE",style: TextStyle(
                                                  fontSize: mQuery.size.height*0.016,
                                                  color: Color(0xffff474b),
                                                ),)
                                              ],
                                            ),

                                            SizedBox(height: mQuery.size.height*0.01,),
                                            Divider(),
                                            Text("WASH & STREAM IRON",style: TextStyle(
                                                color: Color(0xff29b2fe),
                                                fontSize: mQuery.size.height *0.016
                                            ),),


                                            SizedBox(height: mQuery.size.height * 0.01),
                                            Row(
                                              children: [
                                                Text(
                                                  "$kurtaDesignerNo Kurta Designer",
                                                  style: TextStyle(
                                                    fontSize: mQuery.size.height * 0.017,
                                                    fontFamily: 'SatoshiBold',
                                                  ),
                                                ),
                                                Expanded(child: SizedBox()),
                                                Image.asset(
                                                  "assets/images/drawer-images/edit.png",
                                                  color: Color(0xff29b2fe),
                                                  width: mQuery.size.width * 0.04,
                                                )
                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${kurtaDesignerPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  Text(
                                                    "₹ ${totalKurtaDesignerPrice.toStringAsFixed(0)}",
                                                    style: TextStyle(
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiBold',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.018),



                                            Row(
                                              children: [
                                                Text(
                                                  "$bedSheetNo Bed-Sheet Single",
                                                  style: TextStyle(
                                                    fontSize: mQuery.size.height * 0.017,
                                                    fontFamily: 'SatoshiBold',
                                                  ),
                                                ),
                                                Expanded(child: SizedBox()),
                                                Image.asset(
                                                  "assets/images/drawer-images/edit.png",
                                                  color: Color(0xff29b2fe),
                                                  width: mQuery.size.width * 0.04,
                                                )
                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${bedSheetPrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  Text(
                                                    "₹ ${totalBedSheetPrice.toStringAsFixed(0)}",
                                                    style: TextStyle(
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiBold',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(),

                                            Text("DRY CLEAN",style: TextStyle(
                                                color: Color(0xff29b2fe),
                                                fontSize: mQuery.size.height *0.016
                                            ),),

                                            SizedBox(height: mQuery.size.height * 0.01),
                                            Row(
                                              children: [
                                                Text(
                                                  "$batheMateNo Bath Mate",
                                                  style: TextStyle(
                                                    fontSize: mQuery.size.height * 0.017,
                                                    fontFamily: 'SatoshiBold',
                                                  ),
                                                ),
                                                Expanded(child: SizedBox()),
                                                Image.asset(
                                                  "assets/images/drawer-images/edit.png",
                                                  color: Color(0xff29b2fe),
                                                  width: mQuery.size.width * 0.04,
                                                )
                                              ],
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: mQuery.size.width * 0.02),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "₹ ${bathMatePrice.toStringAsFixed(0)} PER PIECE",
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiMedium',
                                                    ),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  Text(
                                                    "₹ ${totalBathMatePrice.toStringAsFixed(0)}",
                                                    style: TextStyle(
                                                      fontSize: mQuery.size.height * 0.017,
                                                      fontFamily: 'SatoshiBold',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: mQuery.size.height * 0.003),



                                            SizedBox(
                                              height: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),

                          Container(
                            width: double.infinity,
                            height: mQuery.size.height*0.35,
                            color: Color(0xfff8fcfe),
                            margin: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width*0.033
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width*0.012
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: mQuery.size.height*0.01,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Item Total",
                                              style: TextStyle(
                                                fontFamily: 'SatoshiRegular',
                                                fontSize: mQuery.size.height*0.018,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Text(
                                              "₹ 1,640",
                                              style: TextStyle(
                                                fontSize: mQuery.size.height*0.018,
                                                color: Colors.black54,
                                                fontFamily: 'SatoshiRegular',
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: mQuery.size.height * 0.01,),
                                        DottedLine(
                                          direction: Axis.horizontal,
                                          alignment: WrapAlignment.center,
                                          lineLength: double.infinity,
                                          lineThickness: 1.0,
                                          dashLength: 4.0,
                                          dashColor: Colors.black54,
                                          dashRadius: 0.0,
                                          dashGapLength: 4.0,
                                          dashGapRadius: 0.0,
                                        ),
                                        SizedBox(height: mQuery.size.height * 0.01,),
                                        Row(
                                          children: [
                                            Text(
                                              "Revised Total",
                                              style: TextStyle(
                                                fontSize: mQuery.size.height*0.018,
                                                color: Color(0xfffe6165),
                                                fontFamily: 'SatoshiRegular',
                                              ),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Text(
                                              "₹ 1,660",
                                              style: TextStyle(
                                                fontSize: mQuery.size.height*0.018,
                                                color: Color(0xfffe6165),
                                                fontFamily: 'SatoshiRegular',
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: mQuery.size.height * 0.01,),

                                        DottedLine(
                                          direction: Axis.horizontal,
                                          alignment: WrapAlignment.center,
                                          lineLength: double.infinity,
                                          lineThickness: 1.0,
                                          dashLength: 4.0,
                                          dashColor: Colors.black54,
                                          dashRadius: 0.0,
                                          dashGapLength: 4.0,
                                          dashGapRadius: 0.0,
                                        ),
                                        SizedBox(height: mQuery.size.height * 0.01,),
                                        Row(
                                          children: [
                                            Text(
                                              "Delivery Charges",
                                              style: TextStyle(
                                                fontSize: mQuery.size.height*0.018,
                                                color: Colors.black54,
                                                fontFamily: 'SatoshiRegular',
                                              ),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Text(
                                              "₹ 50",
                                              style: TextStyle(
                                                fontSize: mQuery.size.height*0.018,
                                                color: Colors.black54,
                                                fontFamily: 'SatoshiRegular',
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: mQuery.size.height * 0.01,),
                                        DottedLine(
                                          direction: Axis.horizontal,
                                          alignment: WrapAlignment.center,
                                          lineLength: double.infinity,
                                          lineThickness: 1.0,
                                          dashLength: 4.0,
                                          dashColor: Colors.black54,
                                          dashRadius: 0.0,
                                          dashGapLength: 4.0,
                                          dashGapRadius: 0.0,
                                        ),

                                        SizedBox(height: mQuery.size.height * 0.01,),
                                        Row(
                                          children: [
                                            Text("Tax",
                                              style: TextStyle(
                                                fontSize: mQuery.size.height*0.018,
                                                color: Colors.black54,
                                                fontFamily: 'SatoshiRegular',
                                              ),
                                            ),
                                            Expanded(child: SizedBox(),),
                                            Text(
                                              "₹ 60",
                                              style: TextStyle(
                                                fontSize: mQuery.size.height*0.018,
                                                color: Colors.black54,
                                                fontFamily: 'SatoshiRegular',
                                              ),
                                            )
                                          ],
                                        ),
                                        Divider(),
                                        Row(
                                          children: [
                                            Text("Grand Total",
                                              style: TextStyle(
                                                  fontSize: mQuery.size.height*0.02,
                                                  fontFamily: 'SatoshiMedium'
                                              ),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Text("₹ 1,770",
                                              style: TextStyle(
                                                  fontSize: mQuery.size.height*0.02,
                                                  color: Color(0xff29b2fe),
                                                  fontFamily: 'SatoshiMedium'
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: mQuery.size.height*0.03,),

                                  Container(
                                    width: double.infinity,
                                    height: mQuery.size.height*0.06,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: mQuery.size.width*0.03
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: mQuery.size.width*0.033
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Color(0xffff474b)
                                    ),
                                    child: Row(
                                      children: [
                                        Text("Cash to be collected",style: TextStyle(
                                            color: Colors.white
                                        ),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Text("₹ 20.00",style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: mQuery.size.height*0.02,),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width*0.033
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Extra Note"),
                                SizedBox(height: mQuery.size.height*0.015,),
                                Text("Lorem Ipsum is a dummy text in advertising and \n"
                                    "typesetting industry since 1500"),
                                SizedBox(height: mQuery.size.height*0.015,),

                                Container(
                                  width: double.infinity,
                                  height: mQuery.size.height*0.1,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 0,
                                            blurRadius: 10,
                                            offset: Offset(0,0)
                                        )
                                      ]
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(width: mQuery.size.width*0.047,),
                                          Container(
                                            width: mQuery.size.width*0.06,
                                            height: mQuery.size.height*0.02,
                                            decoration: BoxDecoration(
                                                color: Color(0xff29b2fe),
                                                shape: BoxShape.circle
                                            ),
                                            child: Center(
                                              child: Icon(Icons.check,
                                                color: Colors.white,
                                                size: mQuery.size.width*0.032,),
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width*0.012,),
                                          Text("Additional Instructions")
                                        ],
                                      ),
                                      Text("Hand the order directly and don't ring the bell",style: TextStyle(
                                        color: Color(0xff009c1a),
                                      ),)
                                    ],
                                  ),
                                ),

                                SizedBox(height: mQuery.size.height*0.015,),
                                Container(
                                  width: double.infinity,
                                  height: mQuery.size.height*0.1,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 0,
                                            blurRadius: 10,
                                            offset: Offset(0,0)
                                        )
                                      ]
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: mQuery.size.width*0.046,),
                                          Container(
                                            width: mQuery.size.width*0.06,
                                            height: mQuery.size.height*0.02,
                                            decoration: BoxDecoration(
                                                color: Color(0xff29b2fe),
                                                shape: BoxShape.circle
                                            ),
                                            child: Center(
                                              child: Icon(Icons.check,
                                                color: Colors.white,
                                                size: mQuery.size.width*0.032,),
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width*0.012,),
                                          Text("Delivery Instructions")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: mQuery.size.width*0.042,),
                                          Icon(Icons.arrow_right,
                                            color: Color(0xff29b2fe),),
                                          Column(
                                            children: [
                                              Text("Play voice directions",style: TextStyle(
                                                color: Color(0xff29b2fe),
                                              ),),
                                              Container(
                                                width: mQuery.size.width*0.38,
                                                height: mQuery.size.height*0.001,
                                                color: Color(0xff29b2fe),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),



                          SizedBox(height: mQuery.size.height*0.02,),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: ()
                                {
                                  _openBottomOrderSummary2(context);
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: mQuery.size.height * 0.065,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: mQuery.size.width*0.03
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: mQuery.size.width * 0.03),
                                  decoration: BoxDecoration(
                                      color: Color(0xff29b2fe),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: mQuery.size.height*0.01,),
                                          Text("TOTAL 33 ITEMS",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: mQuery.size.height*0.017
                                          ),),
                                          Text("₹ 1770.00",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: mQuery.size.height*0.019
                                          ),),
                                        ],
                                      ),
                                      Expanded(child: SizedBox()),
                                      Row(
                                        children: [
                                          Text("Confirm Payment",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: mQuery.size.height*0.021
                                          ),),
                                          SizedBox(width: mQuery.size.width*0.01,),
                                          Icon(Icons.arrow_right,color: Colors.white,)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: mQuery.size.height*0.02,)
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  void _openBottomOrderSummary2(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    TextEditingController searchController2 = TextEditingController();

    var _itemValue = ValueNotifier<int>(0);
    var _itemValue1 = ValueNotifier<int>(0);

    var shirtsNo1 = 01;
    var blouseNo = 03;
    var lehengaNo = 01;
    var evDressNo = 01;
    var nightSuiteNo = 02;
    var waistSuitNo = 02;
    var shortNo = 02;
    var skirtNo = 02;
    var sCNo = 01;
    var inWearNo = 06;
    var socksNo = 01;
    var frockNo = 02;
    var jumpSuitNo = 02;

    var kurtaDesignerNo = 02;
    var bedSheetNo = 01;
    var batheMateNo = 01;


    var shirtPrice1 = 10.0;
    var blousePrice = 30.0;
    var lehengaPrice = 180.0;
    var evPrice = 190.0;
    var nightSuitPrice = 45.0;
    var waistCoatPrice = 50.0;
    var shortPrice = 25.0;
    var skirtPrice = 25.0;
    var sCPrice = 30.0;
    var inWearPrice = 15.0;
    var socksPrice = 10.0;
    var frockPrice = 35.0;
    var jumpSuitePrice = 50.0;
    var kurtaDesignerPrice = 30.0;
    var bedSheetPrice = 50.0;
    var bathMatePrice = 30.0;




    double totalShirtPrice1 = shirtsNo1 * shirtPrice1;
    double totalBlousePrice = blouseNo * blousePrice;
    double totalLehengaPrice = lehengaNo * lehengaPrice;
    double totalEvPrice = evDressNo * evPrice;
    double totalNighSuitPrice = nightSuiteNo * nightSuitPrice;
    double totalWaistCoastPrice = waistSuitNo * waistCoatPrice;
    double totalShortPrice = shortNo * shortPrice;
    double totalSkirtPrice = skirtNo * skirtPrice;
    double totalScPrice = sCNo * sCPrice;
    double totalinWearPrice = inWearNo * inWearPrice;
    double totalSocksPrice = socksNo * socksPrice;
    double totalfrockPrice = frockNo * frockPrice;
    double totalJumpSuitPrice = jumpSuitNo * jumpSuitePrice;

    double totalKurtaDesignerPrice = kurtaDesignerNo * kurtaDesignerPrice;
    double totalBedSheetPrice = bedSheetNo * bedSheetPrice;
    double totalBathMatePrice = batheMateNo * bathMatePrice;

    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          var userName = "Shweta";
          var distance = 1.2;
          return Container(
            width: double.infinity,
            height: mQuery.size.height * 0.9,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: mQuery.size.height * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: mQuery.size.width * 0.045),
                    child: Text(
                      "Pickup Order Summary",
                      style: TextStyle(
                          fontSize: mQuery.size.height * 0.024,
                          fontFamily: 'SatoshiBold'),
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.025,
                  ),
                  Container(
                    width: double.infinity,
                    height: mQuery.size.height * 0.12,
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width * 0.04),
                    color: Color(0xffebf7ed),
                    child: Row(
                      children: [
                        ProfilePicture(
                          radius: mQuery.size.width * 0.07,
                          fontsize: 10,
                          name: "",
                          img:
                          "https://images.news18.com/ibnkhabar/uploads/2023/09/IFS-Apala-mishra-age-upsc-rank-education-biography-in-hindi-marksheet-salary-1.jpg",
                        ),
                        SizedBox(
                          width: mQuery.size.width * 0.025,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: mQuery.size.height * 0.016,
                            ),
                            Row(
                              children: [
                                Text(
                                  "$userName",
                                  style: TextStyle(
                                      fontSize: mQuery.size.height * 0.022,
                                      fontFamily: 'SatoshiBold'),
                                ),
                                SizedBox(
                                  width: mQuery.size.width * 0.36,
                                ),
                                Row(children: [
                                  Container(
                                    width: mQuery.size.width * 0.05,
                                    height: mQuery.size.height * 0.04,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff29b2fe)),
                                    child: Center(
                                      child: Icon(
                                        Icons.home,
                                        color: Colors.white,
                                        size: mQuery.size.width * 0.033,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: mQuery.size.width * 0.02,
                                  ),
                                  Text(
                                    "$distance km",
                                    style: TextStyle(
                                        fontSize: mQuery.size.height * 0.018,
                                        fontFamily: 'SatoshiBold'),
                                  ),
                                ])
                              ],
                            ),
                            Text(
                              "B-702, Sarthak the Sarjak, Bhaijipura Chokdi, PDPU \n"
                                  "Crossroad , Beside Pulse Mall, Seventhn Floor , Kudasan",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.025,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: TextField(
                      cursorColor: Colors.grey,
                      controller: searchController2,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                            fontSize: mQuery.size.height * 0.02,
                            color: Colors.grey.shade600,
                            fontFamily: 'SatoshiMedium'),
                        suffixIcon:
                        const Icon(Icons.search, color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.025,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width * 0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Clothes Detail",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SatoshiBold',
                              fontSize: mQuery.size.height * 0.0215),
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.025,
                        ),

                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: mQuery.size.height * 0.7,
                              padding: EdgeInsets.symmetric(
                                  horizontal: mQuery.size.width * 0.033),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 5,
                                    spreadRadius: 0,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: mQuery.size.height * 0.02),
                                    Text(
                                      "WASH",
                                      style: TextStyle(
                                        color: Color(0xff29b2fe),
                                        fontWeight: FontWeight.w500,
                                        fontSize: mQuery.size.height * 0.018,
                                        fontFamily: 'SatoshiMedium',
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.016),
                                    Row(
                                      children: [
                                        Text(
                                          "$shirtsNo1 Shirts",
                                          style: TextStyle(
                                            fontSize: mQuery.size.height * 0.017,
                                            fontFamily: 'SatoshiBold',
                                          ),
                                        ),
                                        SizedBox(
                                          width: mQuery.size.width * 0.25,
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${shirtPrice1.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalShirtPrice1.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.016),

                                    Row(
                                      children: [
                                        Text(
                                          "$blouseNo Blouse Designer",
                                          style: TextStyle(
                                            fontSize: mQuery.size.height * 0.017,
                                            fontFamily: 'SatoshiBold',
                                          ),
                                        ),
                                        SizedBox(
                                          width: mQuery.size.width * 0.25,
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${blousePrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalBlousePrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.016),

                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$lehengaNo Lehenga Suit(Heavy)",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.38),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${lehengaPrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalLehengaPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.016),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$evDressNo Evening Dress(Heavy Work)",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.2),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${evPrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "Changed",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                              color: Color(0xffff474b),
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width*0.04,),
                                          Text(
                                            "₹ ${totalEvPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.016),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$nightSuiteNo Night Suit",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.54),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${nightSuitPrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalNighSuitPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.016),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$waistSuitNo Waistcoat",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.54),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${waistCoatPrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalWaistCoastPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.016),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$shortNo Short",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(
                                            width: mQuery.size.width * 0.42,
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.05),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${shortPrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "Changed",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                              color: Color(0xffff474b),
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width*0.042,),
                                          Text(
                                            "₹ ${totalShortPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.016),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$skirtNo Skirt",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.61),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${skirtPrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalSkirtPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.016),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$sCNo Swimming Costume",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.37),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${sCPrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalScPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),


                                    SizedBox(height: mQuery.size.height * 0.016),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$inWearNo Inner wear",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.52),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${inWearPrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalinWearPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),


                                    SizedBox(height: mQuery.size.height * 0.016),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$socksNo Socks/Stocking",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.43),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${socksPrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalSocksPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(height: mQuery.size.height * 0.016),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$frockNo Frock",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.58),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${frockPrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalfrockPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),


                                    SizedBox(height: mQuery.size.height * 0.016),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$jumpSuitNo Jump Suits",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.47),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${jumpSuitePrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalJumpSuitPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),


                                    Divider(),
                                    SizedBox(height: mQuery.size.height*0.006,),
                                    Row(
                                      children: [
                                        Text("Add-On(Cloth Softener)",style: TextStyle(
                                          color: Color(0xff009c1a),
                                        ),),
                                        Expanded(child: SizedBox()),
                                        Text("₹ 240",style: TextStyle(
                                            color: Color(0xff29b2fe)
                                        ),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("₹ 10 PER PIECE"),
                                        Expanded(child: SizedBox()),
                                      ],
                                    ),

                                    SizedBox(height: mQuery.size.height*0.01,),
                                    Divider(),
                                    Text("WASH & STREAM IRON",style: TextStyle(
                                        color: Color(0xff29b2fe),
                                        fontSize: mQuery.size.height *0.016
                                    ),),


                                    SizedBox(height: mQuery.size.height * 0.01),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$kurtaDesignerNo Kurta Designer",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.48),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${kurtaDesignerPrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalKurtaDesignerPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(height: mQuery.size.height * 0.018),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$bedSheetNo Bed-Sheet Single",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.43),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${bedSheetPrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalBedSheetPrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(),

                                    Text("DRY CLEAN",style: TextStyle(
                                        color: Color(0xff29b2fe),
                                        fontSize: mQuery.size.height *0.016
                                    ),),

                                    SizedBox(height: mQuery.size.height * 0.01),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            "$batheMateNo Bath Mate",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.54),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: mQuery.size.width * 0.02),
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹ ${bathMatePrice.toStringAsFixed(0)} PER PIECE",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Text(
                                            "₹ ${totalBathMatePrice.toStringAsFixed(0)}",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.017,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.003),



                                    SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    height: mQuery.size.height*0.35,
                    color: Color(0xfff8fcfe),
                    margin: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.033
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.012
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: mQuery.size.height*0.01,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Item Total",
                                      style: TextStyle(
                                        fontFamily: 'SatoshiRegular',
                                        fontSize: mQuery.size.height*0.018,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      "₹ 1,640",
                                      style: TextStyle(
                                        fontSize: mQuery.size.height*0.018,
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: mQuery.size.height * 0.01,),
                                DottedLine(
                                  direction: Axis.horizontal,
                                  alignment: WrapAlignment.center,
                                  lineLength: double.infinity,
                                  lineThickness: 1.0,
                                  dashLength: 4.0,
                                  dashColor: Colors.black54,
                                  dashRadius: 0.0,
                                  dashGapLength: 4.0,
                                  dashGapRadius: 0.0,
                                ),
                                SizedBox(height: mQuery.size.height * 0.01,),
                                Row(
                                  children: [
                                    Text(
                                      "Revised Total",
                                      style: TextStyle(
                                        fontSize: mQuery.size.height*0.018,
                                        color: Color(0xfffe6165),
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      "₹ 1,660",
                                      style: TextStyle(
                                        fontSize: mQuery.size.height*0.018,
                                        color: Color(0xfffe6165),
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: mQuery.size.height * 0.01,),

                                DottedLine(
                                  direction: Axis.horizontal,
                                  alignment: WrapAlignment.center,
                                  lineLength: double.infinity,
                                  lineThickness: 1.0,
                                  dashLength: 4.0,
                                  dashColor: Colors.black54,
                                  dashRadius: 0.0,
                                  dashGapLength: 4.0,
                                  dashGapRadius: 0.0,
                                ),
                                SizedBox(height: mQuery.size.height * 0.01,),
                                Row(
                                  children: [
                                    Text(
                                      "Delivery Charges",
                                      style: TextStyle(
                                        fontSize: mQuery.size.height*0.018,
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      "₹ 50",
                                      style: TextStyle(
                                        fontSize: mQuery.size.height*0.018,
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: mQuery.size.height * 0.01,),
                                DottedLine(
                                  direction: Axis.horizontal,
                                  alignment: WrapAlignment.center,
                                  lineLength: double.infinity,
                                  lineThickness: 1.0,
                                  dashLength: 4.0,
                                  dashColor: Colors.black54,
                                  dashRadius: 0.0,
                                  dashGapLength: 4.0,
                                  dashGapRadius: 0.0,
                                ),

                                SizedBox(height: mQuery.size.height * 0.01,),
                                Row(
                                  children: [
                                    Text("Tax",
                                      style: TextStyle(
                                        fontSize: mQuery.size.height*0.018,
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    ),
                                    Expanded(child: SizedBox(),),
                                    Text(
                                      "₹ 60",
                                      style: TextStyle(
                                        fontSize: mQuery.size.height*0.018,
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    )
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Text("Grand Total",
                                      style: TextStyle(
                                          fontSize: mQuery.size.height*0.02,
                                          fontFamily: 'SatoshiMedium'
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text("₹ 1,770",
                                      style: TextStyle(
                                          fontSize: mQuery.size.height*0.02,
                                          color: Color(0xff29b2fe),
                                          fontFamily: 'SatoshiMedium'
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: mQuery.size.height*0.03,),

                          Container(
                            width: double.infinity,
                            height: mQuery.size.height*0.06,
                            margin: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width*0.03
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width*0.033
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0xff009c1a)
                            ),
                            child: Row(
                              children: [
                                Text("Cash collected",style: TextStyle(
                                    color: Colors.white
                                ),
                                ),
                                Expanded(child: SizedBox()),
                                Text("₹ 20.00",style: TextStyle(
                                    color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: mQuery.size.height*0.02,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.033
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Extra Note"),
                        SizedBox(height: mQuery.size.height*0.015,),
                        Text("Lorem Ipsum is a dummy text in advertising and \n"
                            "typesetting industry since 1500"),
                        SizedBox(height: mQuery.size.height*0.015,),

                        Container(
                          width: double.infinity,
                          height: mQuery.size.height*0.1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                    offset: Offset(0,0)
                                )
                              ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: mQuery.size.width*0.047,),
                                  Container(
                                    width: mQuery.size.width*0.06,
                                    height: mQuery.size.height*0.02,
                                    decoration: BoxDecoration(
                                        color: Color(0xff29b2fe),
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Icon(Icons.check,
                                        color: Colors.white,
                                        size: mQuery.size.width*0.032,),
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width*0.012,),
                                  Text("Additional Instructions")
                                ],
                              ),
                              Text("Hand the order directly and don't ring the bell",style: TextStyle(
                                color: Color(0xff009c1a),
                              ),)
                            ],
                          ),
                        ),

                        SizedBox(height: mQuery.size.height*0.015,),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height*0.1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                    offset: Offset(0,0)
                                )
                              ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: mQuery.size.width*0.046,),
                                  Container(
                                    width: mQuery.size.width*0.06,
                                    height: mQuery.size.height*0.02,
                                    decoration: BoxDecoration(
                                        color: Color(0xff29b2fe),
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Icon(Icons.check,
                                        color: Colors.white,
                                        size: mQuery.size.width*0.032,),
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width*0.012,),
                                  Text("Delivery Instructions")
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: mQuery.size.width*0.042,),
                                  Icon(Icons.arrow_right,
                                    color: Color(0xff29b2fe),),
                                  Column(
                                    children: [
                                      Text("Play voice directions",style: TextStyle(
                                        color: Color(0xff29b2fe),
                                      ),),
                                      Container(
                                        width: mQuery.size.width*0.38,
                                        height: mQuery.size.height*0.001,
                                        color: Color(0xff29b2fe),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),



                  SizedBox(height: mQuery.size.height*0.03,),
                  GestureDetector(
                    onTap: ()
                    {
                      _showConfirmationDialog(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.065,
                      margin: EdgeInsets.symmetric(
                          horizontal: mQuery.size.width*0.03
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: mQuery.size.width * 0.03),
                      decoration: BoxDecoration(
                          color: Color(0xff29b2fe),
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: mQuery.size.height*0.01,),
                              Text("TOTAL 33 ITEMS",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mQuery.size.height*0.018
                              ),),
                              Text("₹ 1770.00",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mQuery.size.height*0.019
                              ),),
                            ],
                          ),
                          Expanded(child: SizedBox()),
                          Row(
                            children: [
                              Text("Confirm Pickup",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mQuery.size.height*0.021
                              ),),
                              SizedBox(width: mQuery.size.width*0.01,),
                              Icon(Icons.arrow_right,color: Colors.white,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height*0.01,)
                ],
              ),
            ),
          );
        });
  }

  void _showConfirmationDialog(BuildContext context) async {
    var mQuery = MediaQuery.of(context);
    // Open camera
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Congratulations!",
              style: TextStyle(
                color: Color(0xff29b2fe),
                fontFamily: 'SatoshiBold',
              ),
            ),
          ),
          content: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.033),
            child: Text(
              "You have successfully picked up the order.",
              style: TextStyle(
                fontFamily: 'SatoshiMedium',
              ),
            ),
          ),
          actions: <Widget>[
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Close dialog
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CameraScreen(camera: firstCamera)),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: mQuery.size.height * 0.056,
                    decoration: BoxDecoration(
                      color: Color(0xff29b2fe),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        "Take Pictures",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SatoshiBold',
                          fontSize: mQuery.size.height * 0.024,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return StartTripPage();
                    }));
                  },
                  child: Container(
                    width: double.infinity,
                    height: mQuery.size.height * 0.06,
                    decoration: BoxDecoration(
                      color: Color(0xff29b2fe),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Start Next Trip",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SatoshiBold',
                          fontSize: mQuery.size.height * 0.024,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
