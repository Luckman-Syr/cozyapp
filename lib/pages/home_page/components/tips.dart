import 'package:flutter/material.dart';
import '../../../themes/theme.dart';

class Tips extends StatelessWidget {
  const Tips({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: homePadding,
      margin: const EdgeInsets.only(
        right: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tips & Guidance",
            style: primaryTextStyle,
          ),
          SizedBox(height: subTitlePadding),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/cover/guide.png",
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "City Guidelines",
                            style: ContentTitleTextStyle,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Updated 21 May",
                            style: basicTextStyle.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/errorpage');
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xffC9C9C9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/cover/fairship.png",
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jakarta Fairship",
                            style: ContentTitleTextStyle,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Updated 11 Dec",
                            style: basicTextStyle.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xffC9C9C9),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
