import 'package:buy_tickets/screens/tickats_screen/trip_ticket_page.dart';
import 'package:flutter/material.dart';

import '../../shered/styles/colors.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 197, 197, 197),
                    borderRadius: BorderRadius.circular(25.0)),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25.0)),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      text: 'Old Ticktes',
                    ),
                    Tab(
                      text: 'New Teckts',
                    ),
                  ],
                ),
              ),
            ]),
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
                              builder: (context) => TripTicketPage(pagess: 1),
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
                                    height: 80,
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
                                            style: TextStyle(
                                                color: veppoLightGrey),
                                          ),
                                          Text('Porto Alegre'),
                                          SizedBox(height: 28),
                                          Text(
                                            'To',
                                            style: TextStyle(
                                                color: veppoLightGrey),
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
                                            style: TextStyle(
                                                color: veppoLightGrey),
                                          ),
                                          Text('6:30'),
                                          SizedBox(height: 28),
                                          Text(
                                            'Arrive',
                                            style: TextStyle(
                                                color: veppoLightGrey),
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
      )),
    );
  }
}
