import 'package:buy_tickets/screens/home_screen/home_screen.dart';
import 'package:buy_tickets/screens/profile_screen/profile_screen.dart';
import 'package:buy_tickets/screens/tickats_screen/tickat_screen.dart';
import 'package:buy_tickets/screens/wallet_screen/wallet_screen.dart';
import 'package:flutter/material.dart';

class LayoutZaadTickets extends StatefulWidget {
  LayoutZaadTickets({Key? key}) : super(key: key);

  @override
  State<LayoutZaadTickets> createState() => _LayoutZaadTicketsState();
}

class _LayoutZaadTicketsState extends State<LayoutZaadTickets> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    // Text(
    //   ' Home page',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Wallet Page',
    //   style: optionStyle,
    // ),
    // Text(
    //   ' Tickts page',
    //   style: optionStyle,
    // ),
    // Text(
    //   'profile page',
    //   style: optionStyle,
    // ),

    homeScreen(),
    WalletScreen(),
    TickatScreen(),
    ProphiletScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.blueGrey,
        onTap: _onItemTapped,
      ),
    );
  }
}
