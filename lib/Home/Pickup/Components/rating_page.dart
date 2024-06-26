import 'package:cleaneo_driver_app/Home/BotNav.dart';
import 'package:cleaneo_driver_app/Home/Home_/Home.dart';
import 'package:cleaneo_driver_app/Home/Pickup/Components/report_disputePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  var userName = "Shweta";
  TextEditingController messageController = TextEditingController();
  late GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    super.initState();
    _scaffoldKey = GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      key: _scaffoldKey,
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
                      "Rate Your Experience",
                      style: TextStyle(
                          fontSize: 20,
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
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.045),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: mQuery.size.height * 0.03,
                        ),
                        Text(
                          "Hey $userName! Let us know about \n     your "
                          "experience with us.",
                          style: TextStyle(
                              fontSize: mQuery.size.height * 0.02,
                              fontFamily: 'SatoshiMedium'),
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.055,
                        ),
                        SvgPicture.asset(
                          "assets/images/mainlogo.svg",
                          color: Colors.black,
                          height: mQuery.size.height * 0.037,
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.045,
                        ),
                        RatingBar.builder(
                          initialRating: 0,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Color(0xff29b2fe),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.055,
                        ),
                        Row(
                          children: [
                            Text(
                              "Message",
                              style: TextStyle(
                                  fontFamily: 'SatoshiMedium',
                                  fontSize: mQuery.size.height * 0.022),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.02,
                        ),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.175,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 0), // changes the position of the shadow
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: messageController,
                            cursorColor: Colors.black54,
                            maxLines: null,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Write message here",
                                hintStyle: TextStyle(
                                    fontSize: mQuery.size.height * 0.02,
                                    fontFamily: 'SatoshiMedium',
                                    color: Colors.black54),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 8)),
                          ),
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.08,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const ReportDisputePage();
                                }));
                              },
                              child: SvgPicture.asset(
                                "assets/images/alert.svg",
                                width: mQuery.size.width * 0.058,
                              ),
                            ),
                            SizedBox(
                              width: mQuery.size.width * 0.033,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const ReportDisputePage();
                                }));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.warning_amber_outlined,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Report Dispute",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.02,
                                      color: Colors.red,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.07,
                        ),
                        GestureDetector(
                          onTap: () {
                            _showConfirmationDialog();
                          },
                          child: Container(
                            width: double.infinity,
                            height: mQuery.size.height * 0.06,
                            decoration: BoxDecoration(
                                color: const Color(0xff29b2fe),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'SatoshiBold',
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        var mQuery = MediaQuery.of(context);
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              "Thank You!",
              style: TextStyle(
                color: Color(0xff29b2fe),
                fontFamily: 'SatoshiBold',
              ),
            ),
          ),
          content: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mQuery.size.width * 0.033,
              vertical: mQuery.size.height * 0.01, // Adjusted vertical padding
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Set to min to reduce height
              children: [
                Text(
                  "Your review is successfully ",
                  style: TextStyle(
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
                Text(
                  "submitted!",
                  style: TextStyle(
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Container(
              width: double.infinity,
              height: mQuery.size.height * 0.05, // Adjusted height
              decoration: BoxDecoration(
                color: const Color(0xff29b2fe),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                        return const BotNav();
                      }));
                },
                child: Center(
                  child: Text(
                    "Okay",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SatoshiBold',
                      fontSize: mQuery.size.height * 0.024,
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

}
