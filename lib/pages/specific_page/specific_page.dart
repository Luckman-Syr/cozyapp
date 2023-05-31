// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:porto_mobile1/pages/specific_page/components/facilities.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../themes/theme.dart';
import '../../widgets/button.dart';

class SpecificPage extends StatefulWidget {
  static const routeName = '/specificpage';

  final Map data;
  const SpecificPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<SpecificPage> createState() => _SpecificPageState();
}

class _SpecificPageState extends State<SpecificPage> {
  List data = [
    "assets/images/specific/preview1.png",
    "assets/images/specific/preview2.png",
    "assets/images/specific/preview3.png"
  ];

  _launchInBrowser(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalNonBrowserApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'assets/images/specific/image.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 300,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    padding: const EdgeInsets.only(left: 24),
                    child: Column(
                      children: [
                        Padding(
                          padding: homePadding,
                          child: Container(
                            margin: const EdgeInsets.only(right: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.data['name'],
                                      style: ContentTitleTextStyle,
                                    ),
                                    const SizedBox(height: 2),
                                    RichText(
                                      text: TextSpan(
                                        text: "\$ ${widget.data['price']}",
                                        style: PriceTextStyle,
                                        children: [
                                          TextSpan(
                                            text: " / month",
                                            style: basicTextStyle.copyWith(
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          'assets/icons/Icon_star_solid.png',
                                          width: 18,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: homePadding,
                          margin: const EdgeInsets.only(right: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Main Facilities",
                                style: primaryTextStyle,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Facilities(
                                    imageUrl:
                                        'assets/icons/specific/bar-counter.svg',
                                    name: 'kitchen',
                                    value: '2',
                                  ),
                                  Facilities(
                                    imageUrl:
                                        'assets/icons/specific/double-bed.svg',
                                    name: 'bedroom',
                                    value: '3',
                                  ),
                                  Facilities(
                                    imageUrl:
                                        'assets/icons/specific/cupboard.svg',
                                    name: 'cupboard',
                                    value: '1',
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: homePadding,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Photos",
                                style: primaryTextStyle,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              SizedBox(
                                height: 88,
                                child: ListView.builder(
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: popularPadding,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.asset(
                                          data[index],
                                          width: 110,
                                          height: 88,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount: 3,
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(right: 24),
                          padding: homePadding,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Location",
                                style: primaryTextStyle,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Jln. Kappan Sukses No. 20",
                                        style: basicTextStyle,
                                      ),
                                      Text(
                                        "Palembang",
                                        style: basicTextStyle,
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _launchInBrowser(Uri.parse(
                                            "https://goo.gl/maps/MsfQ6TgwusPNjUeb8?coh=178573&entry=tt"));
                                      });
                                    },
                                    child: Image.asset(
                                      'assets/icons/specific/btn_location.png',
                                      width: 40,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(right: 24),
                          child: Button(
                            text: "Book Now",
                            route: "/booking_page",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/icons/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/icons/btn_wishlist.png',
                    width: 40,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
