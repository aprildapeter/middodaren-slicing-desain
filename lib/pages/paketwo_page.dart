import 'package:flutter/material.dart';
import 'package:middodaren/theme.dart';
import 'package:middodaren/widget/paketwo-card.dart';

class PaketWOPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        centerTitle: true,
        backgroundColor: whiteColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        flexibleSpace: SafeArea(
            child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffD9D9D9)),
          height: 45,
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Cari di Midodaren',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )),
      );
    }

    Widget paket() {
      return Container(
        margin: EdgeInsets.all(10),
        child: Wrap(
          runSpacing: 10,
          spacing: 10,
          children: [
            paketWoCard(),
            paketWoCard(),
            paketWoCard(),
            paketWoCard(),
            paketWoCard(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: header(),
      body: ListView(
        children: [paket()],
      ),
    );
  }
}
