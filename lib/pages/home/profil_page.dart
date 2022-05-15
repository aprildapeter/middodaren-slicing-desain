import 'package:flutter/material.dart';
import 'package:middodaren/theme.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: whiteColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Row(children: [
            CircleAvatar(child: Icon(Icons.person), backgroundColor: dateText),
            SizedBox(
              width: 10,
            ),
            Text(
              'Nama User',
              style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            )
          ]),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        color: whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'Umum',
                style: primaryTextStyle.copyWith(
                    fontSize: 15, fontWeight: semibold),
              ),
            ),
            Divider(
              color: secondaryText,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Edit Profil',
                style:
                    subTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
              ),
            ),
            Divider(
              color: secondaryText,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Pesanan',
                style:
                    subTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
              ),
            ),
            Divider(
              color: secondaryText,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Ulasan',
                style:
                    subTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
              ),
            ),
            Divider(
              color: secondaryText,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Pusat Bantuan',
                style:
                    subTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
              ),
            ),
            Divider(
              color: secondaryText,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Logout',
                style:
                    subTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
              ),
            ),
            Divider(
              color: secondaryText,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: header(),
      body: content(),
    );
  }
}
