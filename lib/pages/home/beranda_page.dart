import 'package:flutter/material.dart';
import 'package:middodaren/theme.dart';

class BerandaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        centerTitle: true,
        toolbarHeight: 80,
        flexibleSpace: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.list,
                  color: whiteColor,
                  size: 30,
                ),
                Container(
                  child: Image.asset(
                    'assets/appbar.png',
                    height: 50,
                  ),
                ),
                Image.asset(
                  'assets/keranjang.png',
                  height: 30,
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget hero() {
      return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 5),
        height: 145,
        child: Image.asset('assets/Capture1.png'),
      );
    }

    Widget layanan() {
      return Container(
        height: 135,
        color: whiteColor,
        margin: EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(children: [
                Image.asset(
                  'assets/Line.png',
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Layanan',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                  ),
                )
              ]),
              SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 77,
                    width: 77,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: primaryText),
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/paket-wo');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/couple.png',
                              height: 45,
                            ),
                            Text(
                              'Paket WO',
                              style: primaryTextStyle.copyWith(fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 77,
                    width: 77,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: primaryText),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/consultant.png',
                            height: 45,
                          ),
                          Text(
                            'Konsultasi',
                            style: primaryTextStyle.copyWith(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget ulasan() {
      return Container(
        height: 135,
        color: whiteColor,
        margin: EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(children: [
                Image.asset(
                  'assets/Line.png',
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Ulasan 5.0',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                  ),
                )
              ]),
            ],
          ),
        ),
      );
    }

    Widget office() {
      return Container(
        height: 300,
        color: whiteColor,
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 5,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(children: [
                Image.asset(
                  'assets/Line1.png',
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'OFFICE',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                  ),
                )
              ]),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset('assets/Capture.png'),
              )
            ],
          ),
        ),
      );
    }

    Widget follow() {
      return Container(
        height: 67,
        color: whiteColor,
        margin: EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(children: [
                Image.asset(
                  'assets/Line1.png',
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Follow kami',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                  ),
                )
              ]),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/instagram.png',
                      height: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '@midodaren.wo',
                      style: primaryTextStyle,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      'assets/tiktok.png',
                      height: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '@midodaren.wo',
                      style: primaryTextStyle,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget galeri() {
      return Container(
        height: 270,
        color: whiteColor,
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 5,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(children: [
                Image.asset(
                  'assets/Line1.png',
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Galeri',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                  ),
                )
              ]),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/gambar7.png',
                          width: 165,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Image.asset(
                          'assets/gambar4.png',
                          width: 165,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/gambar6.png',
                          width: 165,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Image.asset(
                          'assets/gambar5.png',
                          width: 165,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget vendor() {
      return Container(
        height: 250,
        color: whiteColor,
        margin: EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(children: [
                Image.asset(
                  'assets/Line1.png',
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Vendor',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                  ),
                )
              ]),
              SizedBox(
                height: 7,
              ),
              Wrap(
                spacing: 15,
                children: [
                  Container(
                    height: 77,
                    width: 77,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: primaryText),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/museum.png',
                            height: 45,
                          ),
                          Text(
                            'Venue',
                            style: primaryTextStyle.copyWith(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 77,
                    width: 77,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: primaryText),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/garland.png',
                            height: 45,
                          ),
                          Text(
                            'Dekorasi',
                            style: primaryTextStyle.copyWith(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 77,
                    width: 77,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: primaryText),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/dish.png',
                            height: 45,
                          ),
                          Text(
                            'Catering',
                            style: primaryTextStyle.copyWith(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 77,
                    width: 77,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: primaryText),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/makeup.png',
                            height: 45,
                          ),
                          Text(
                            'MUA',
                            style: primaryTextStyle.copyWith(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 77,
                    width: 77,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: primaryText),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/mic.png',
                            height: 45,
                          ),
                          Text(
                            'MC',
                            style: primaryTextStyle.copyWith(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 77,
                    width: 77,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: primaryText),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/photo.png',
                            height: 45,
                          ),
                          Text(
                            'Fotografer',
                            style: primaryTextStyle.copyWith(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 77,
                    width: 77,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: primaryText),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/henna.png',
                            height: 45,
                          ),
                          Text(
                            'Hena',
                            style: primaryTextStyle.copyWith(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget partner() {
      return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
        child: Column(
          children: [
            Row(children: [
              Image.asset(
                'assets/Line1.png',
                height: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Wedding Vendor Partner',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                ),
              )
            ]),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/vendor4.png',
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
                Column(children: [
                  Image.asset(
                    'assets/vendor7.png',
                    height: 43,
                    width: 224,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    'assets/vendor6.png',
                    height: 55,
                    width: 147,
                    fit: BoxFit.cover,
                  ),
                ]),
                Image.asset(
                  'assets/vendor.png',
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/vendor2.png',
                  height: 70,
                  width: 125,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/vendor5.png',
                  height: 76,
                  width: 107,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/vendor3.png',
                  height: 76,
                  width: 122,
                  fit: BoxFit.cover,
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: header(),
      body: ListView(
        children: [
          hero(),
          layanan(),
          vendor(),
          ulasan(),
          office(),
          galeri(),
          follow(),
          partner()
        ],
      ),
    );
  }
}
