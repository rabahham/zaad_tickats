import 'package:buy_tickets/screens/tickats_screen/trip_ticket_page.dart';
import 'package:flutter/material.dart';

import '../../shered/styles/colors.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 40,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Your Tickts',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TripTicketPage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(26),
                        margin: EdgeInsets.fromLTRB(26, 10, 26, 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 4,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 100,
                                  child: Center(
                                    child: Image.asset(
                                      'assets/images/Train_Logo.png',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 28),
                                Text(
                                  '29 OTC',
                                  style: TextStyle(
                                    fontSize: 32,
                                  ),
                                ),
                                SizedBox(height: 28),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'From',
                                          style:
                                              TextStyle(color: veppoLightGrey),
                                        ),
                                        Text('Porto Alegre'),
                                        SizedBox(height: 28),
                                        Text(
                                          'To',
                                          style:
                                              TextStyle(color: veppoLightGrey),
                                        ),
                                        Text('Florianópolis'),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Depart',
                                          style:
                                              TextStyle(color: veppoLightGrey),
                                        ),
                                        Text('6:30'),
                                        SizedBox(height: 28),
                                        Text(
                                          'Arrive',
                                          style:
                                              TextStyle(color: veppoLightGrey),
                                        ),
                                        Text('11:30'),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
