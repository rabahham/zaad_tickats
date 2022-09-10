import 'package:credit_card_input_form/credit_card_input_form.dart';
import 'package:credit_card_input_form/constants/constanst.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  // translate and customize captions
  final Map<String, String> customCaptions = {
    'PREV': 'Prev',
    'NEXT': 'Next',
    'DONE': 'Done',
    'CARD_NUMBER': 'Card Number',
    'CARDHOLDER_NAME': 'Cardholder Name',
    'VALID_THRU': 'Valid Thru',
    'SECURITY_CODE_CVC': 'Security Code (CVC)',
    'NAME_SURNAME': 'Name Surname',
    'MM_YY': 'MM/YY',
    'RESET': 'successfuly!',
  };

  final buttonStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(30.0),
    gradient: LinearGradient(
        colors: [
          const Color(0xfffcdf8a),
          const Color(0xfff38381),
        ],
        begin: const FractionalOffset(1.0, 1.0),
        end: const FractionalOffset(1.0, 0.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp),
  );

  final cardDecoration = BoxDecoration(
      boxShadow: <BoxShadow>[
        BoxShadow(color: Colors.black54, blurRadius: 15.0, offset: Offset(0, 8))
      ],
      gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.blue,
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
      borderRadius: BorderRadius.all(Radius.circular(15)));

  final buttonTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Add card',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              child: Stack(children: [
                CreditCardInputForm(
                  showResetButton: true,
                  onStateChange: (currentState, cardInfo) {
                    print(currentState);
                    print(cardInfo);
                  },
                  initialAutoFocus: false,
                  customCaptions: customCaptions,
                  cardCVV: '222',
                  cardName: 'Hammmani rabah',
                  cardNumber: '1111111111111111',
                  cardValid: '12/12',
                  intialCardState: InputState.DONE,
                  frontCardDecoration: cardDecoration,
                  backCardDecoration: cardDecoration,
                  // prevButtonStyle: buttonStyle,
                  // nextButtonStyle: buttonStyle,
                  prevButtonTextStyle: buttonTextStyle,
                  nextButtonTextStyle: buttonTextStyle,
                  resetButtonTextStyle: buttonTextStyle,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
