import 'package:flutter/material.dart';

import '../../shered/components/components.dart';
import '../../shered/components/constants.dart';
import '../../shered/styles/colors.dart';

class TripTicketPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final int? pagess;
  const TripTicketPage({
    Key? key,
    required this.pagess,
  }) : super(key: key);

  @override
  State<TripTicketPage> createState() => _TripTicketPageState();
}

class _TripTicketPageState extends State<TripTicketPage> {
  var dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: veppoBlue,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(52),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 28, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: AlertDialog(
                              title: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'tickets',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // color: Colors.blueAccent,
                              ),
                              content:
                                  ModifyTickets(context, dateController, fnc),
                            ),
                          );
                        });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Center(
                        child: Row(
                      children: [
                        // Icon(Icons.sell),
                        widget.pagess == 0
                            ? Text(
                                'Buy Now',
                                style: TextStyle(
                                    color: Colors.green[300],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )
                            : Text(
                                'Modify',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                      ],
                    )),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Booking details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Total \$49,00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(26, 26, 26, 5),
                margin: EdgeInsets.fromLTRB(26, 26, 26, 12),
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
                          height: 60,
                          child: Center(
                            child: Image.asset(
                              'assets/images/Train_Logo.png',
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          '29 OTC',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'From',
                                  style: TextStyle(color: veppoLightGrey),
                                ),
                                Text('Porto Alegre'),
                                SizedBox(height: 20),
                                Text(
                                  'To',
                                  style: TextStyle(color: veppoLightGrey),
                                ),
                                Text('Florianópolis'),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Depart',
                                  style: TextStyle(color: veppoLightGrey),
                                ),
                                Text('6:30'),
                                SizedBox(height: 20),
                                Text(
                                  'Arrive',
                                  style: TextStyle(color: veppoLightGrey),
                                ),
                                Text('11:30'),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(
                      height: 2,
                      color: Color.fromARGB(255, 189, 189, 189),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Passenger',
                                  style: TextStyle(color: veppoLightGrey),
                                ),
                                Text(
                                  'Rabah Hammani',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Gate',
                                  style: TextStyle(color: veppoLightGrey),
                                ),
                                Text(
                                  '2H',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Seat',
                                  style: TextStyle(color: veppoLightGrey),
                                ),
                                Text(
                                  '11B',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            Spacer(flex: 2),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(
                      height: 4,
                      color: Color.fromARGB(255, 189, 189, 189),
                    ),
                    SizedBox(height: 25),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'barccodebarcodeb',
                          style: TextStyle(
                            fontFamily: 'Barcode',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'ticket ID: 18128239487912',
                style: TextStyle(
                  color: veppoLightGrey,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  fnc(String? value) {
    // This is called when the user selects an item.
    setState(() {
      items1 = value!;
    });
  }
}
