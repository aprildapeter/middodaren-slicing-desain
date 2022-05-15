import 'package:flutter/material.dart';
import 'package:middodaren/theme.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: [
            Text(
              'Midodaren',
              style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            Text(
              'WEEDING ORGANIZER',
              style: secondary2TextStyle.copyWith(
                  fontSize: 16, fontWeight: semibold),
            ),
          ],
        ),
      );
    }

    Widget Inputemail() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 50, right: 50, bottom: 10),
        child: TextFormField(
          decoration: InputDecoration(hintText: 'Username / email'),
        ),
      );
    }

    Widget Inputpass() {
      return Container(
        margin: EdgeInsets.only(top: 20, left: 50, right: 50, bottom: 30),
        child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(hintText: 'Password'),
        ),
      );
    }

    Widget ButtonLogin() {
      return Container(
          height: 50,
          margin: EdgeInsets.only(top: 30, left: 50, right: 50, bottom: 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 5,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text(
                'LOGIN',
                style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              )));
    }

    Widget GarisOr() {
      return Container(
          height: 50,
          margin: EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
          ),
          child: Text(
              '---------------------------------------  OR  --------------------------------------'));
    }

    Widget ButtonGoogle() {
      return Container(
          height: 50,
          margin: EdgeInsets.only(
            left: 50,
            right: 50,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: whiteColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 5,
            ),
            onPressed: () {},
            child: Row(
              children: [
               Image.asset('assets/google.png',
               height: 30,
               width: 30,),
                SizedBox(
                  width: 70,
                ),
                Text(
                  'GOOGLE',
                  style:
                      primaryTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                ),
              ],
            ),
          ));
    }

    Widget ButtonRegister() {
      return Container(
          height: 50,
          margin: EdgeInsets.only(left: 50, right: 50, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have an account?',
                style: primaryTextStyle.copyWith(fontWeight: reguler),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
                child: Text(
                  ' REGISTER',
                  style: primary2TextStyle.copyWith(fontWeight: bold),
                ),
              ),
            ],
          ));
    }

    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          header(),
          Inputemail(),
          Inputpass(),
          ButtonLogin(),
          GarisOr(),
          ButtonGoogle(),
          ButtonRegister(),
        ],
      )),
    );
  }
}
