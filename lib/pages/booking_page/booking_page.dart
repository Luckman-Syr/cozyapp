import 'package:flutter/material.dart';
import '.././../../themes/theme.dart';

class BookingPage extends StatelessWidget {
  static const routeName = '/booking_page';
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 65),
              padding: EdgeInsets.all(10),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: primaryColor, width: 2),
              ),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    'https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg',
                  ),
                ),
              ),
            ),
            Text(
              'Amanda Shayna',
              style: TitleTextStyle,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "12 : 30 minutes",
              style: basicTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/icons/btn_close.png',
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
