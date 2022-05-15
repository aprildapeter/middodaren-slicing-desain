import 'package:flutter/material.dart';
import 'package:middodaren/theme.dart';

class paketWoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-paket');
      },
      child: Container(
        width: 180,
        color: whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/gambar2.png',
                  height: 110,
                  width: 160,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Paket Akad Nikah Siraman Engagement',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Rp. 7.000.000',
                style: secondaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
