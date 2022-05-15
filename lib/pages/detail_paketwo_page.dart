import 'package:flutter/material.dart';
import 'package:middodaren/theme.dart';

class DetailPAketWoPge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(bottom: 5),
        child: Image.asset(
          'assets/gambar3.png',
          height: 276,
          fit: BoxFit.cover,
        ),
      );
    }

    Widget price() {
      return Container(
        padding: EdgeInsets.all(10),
        color: whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Paket Akad Nikah Siraman Engagement',
              style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Rp 45.000.000',
              style:
                  secondary3TextStyle.copyWith(fontSize: 17, fontWeight: bold),
            ),
          ],
        ),
      );
    }

    Widget ulasan() {
      return Container(
        margin: EdgeInsets.only(top: 15, left: 10, right: 10),
        child: Row(
          children: [
            Image.asset(
              'assets/star.png',
              height: 21,
            ),
            SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/Line3.png',
              height: 21,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '259 Ulasan',
              style: primaryTextStyle,
            )
          ],
        ),
      );
    }

    Widget detail() {
      return Container(
        margin: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deskripsi Produk',
              style:
                  primaryTextStyle.copyWith(fontSize: 20, fontWeight: semibold),
            ),
            Text(
              '*2 Wedding Consultant incharge \n* Pendampingan penyusuhan konsep, rundown, & layout acra \n*pendampingan dalam wedding Preparation (pemilihan vendor hingga kebutuhan acara\n*konsultasi terkait jenis pernikahan yang di ingginkan , pembahasan paket & anggaran pernikahan\n*pembuatan wedding moodboard /guidebook\n*pengadaan 2x meeting (meeting keluarga & vendor)\n*melakukan koordinasi Bersama panitia acara yang terlibat.\n*monitoring keseluruhan rangkaian acara pada hari H \n\nNotes\n*Wedding consultant tidak membawa crew\n*crew /panitia acara disediakan oleh client\n*wedding planner tidak bertanggungjawab apabila ada kelalaian dalam tugas panitia\n*pelaksanaan rangakai an acara max 1 hari',
              style: secondary2TextStyle.copyWith(),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      );
    }

    Widget botnav() {
      return Container(
        height: 65,
        color: Color(0xff6B705C),
        child: Row(
          children: [
            Container(
              color: primaryColor,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/konsultasi');
                      },
                      child: Image.asset(
                        'assets/chat.png',
                        height: 30,
                      ),
                    ),
                    Text(
                      'Konsultasi',
                      style: whiteTextStyle,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/Line2.png',
                  height: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/keranjang.png',
                      height: 30,
                    ),
                    Text(
                      'Keranjang',
                      style: whiteTextStyle,
                    ),
                  ],
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Pesan Sekarang ',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: botnav(),
      body: SafeArea(
          child: ListView(
        children: [
          header(),
          price(),
          ulasan(),
          detail(),
        ],
      )),
    );
  }
}
