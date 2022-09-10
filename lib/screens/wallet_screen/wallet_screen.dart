
import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';

import '../../shered/styles/light_color.dart';
import '../../shered/widgets/balance_card.dart';
import '../../shered/widgets/title_text.dart';

class WalletScreen extends StatefulWidget {
 const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  Widget _appBar() {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://c8.alamy.com/compfr/2g7ft77/parametre-fictif-de-photo-d-avatar-par-defaut-icone-d-image-de-profil-grise-homme-en-t-shirt-2g7ft77.jpg"),
        ),
        SizedBox(width: 15),
        TitleText(text: "Hello,"),
        Text(' Rabah,',
            style: GoogleFonts.mulish(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                // color: LightColor.navyBlue2
                ),
                ),
        Expanded(
          child: SizedBox(),
        ),
        Icon(
          Icons.notifications_active,
          color: Theme.of(context).iconTheme.color,
        )
      ],
    );
  }

  Widget _operationsWidget() {
    return
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        InkWell(child: _icon(Icons.transfer_within_a_station, "Transfer"),),
        _icon(Icons.downloading, "Buy"),
        _icon(Icons.payment, "Pay Bills"),
        _icon(Icons.code, "Qr Pay"),
      ],
    );
  }

  Widget _icon(IconData icon, String text) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/transfer');
          },
          child: Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color(0xfff3f3f3),
                      offset: Offset(5, 5),
                      blurRadius: 10)
                ]),
            child: Icon(icon),
          ),
        ),
        Text(text,
            style: GoogleFonts.mulish(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xff76797e))),
      ],
    );
  }

  Widget _transectionList() {
    return Column(
      children: <Widget>[
        _transection("Flight Ticket", "23 Feb 2022"),
        _transection("Tram Bill", "25 Feb 2021"),
        _transection("Flight Ticket", "03 Mar 2022"),
      ],
    );
  }

  Widget _transection(String text, String time) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: LightColor.navyBlue1,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Icon(Icons.hd, color: Colors.white),
      ),
      contentPadding: EdgeInsets.symmetric(),
      title: TitleText(
        text: text,
        fontSize: 14,
      ),
      subtitle: Text(time),
      trailing: Container(
          height: 30,
          width: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: LightColor.lightGrey,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Text('-20 DZ',
              style: GoogleFonts.mulish(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: LightColor.navyBlue2))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 35),
                  _appBar(),
                  SizedBox(
                    height: 40,
                  ),
                  TitleText(text: "My wallet"),
                  SizedBox(
                    height: 20,
                  ),
                  BalanceCard(),
                  SizedBox(
                    height: 50,
                  ),
                  TitleText(
                    text: "Operations",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _operationsWidget(),
                  SizedBox(
                    height: 40,
                  ),
                  TitleText(
                    text: "Transactions",
                  ),
                  _transectionList(),
                ],
              )),
        )));
  }
}