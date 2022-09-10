import 'package:buy_tickets/shered/components/constants.dart';
import 'package:intl/intl.dart';

import '../../screens/tickats_screen/trip_ticket_page.dart';
import '../../screens/wallet_screen/add_card_screen.dart';
import '../styles/colors.dart';
import 'package:flutter/material.dart';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget defultButton({
  // required context,
  required String text,
  required VoidCallback function,
  Color? background,
  double borderRadius = 30,
  double elevation = 5,
  Color colorText = Colors.white,
  double minWidth = 300,
}) =>
    Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(borderRadius),
      color: background!,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          // minWidth: MediaQuery.of(context).size.width,
          minWidth: minWidth,
          onPressed: function,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: colorText, fontWeight: FontWeight.bold),
          )),
    );

Widget defultButtonIcon({
  required String? text,
  required Function? function,
  required Icon icon,
  double borderRadius = 30,
  Color? background,
  Color colorText = Colors.white,
  bool opositeIcon = true,
}) =>
    Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(0),
      child: OutlinedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(background!),
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.fromLTRB(25, 12, 25, 12)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: () {
          function!();
        },
        icon: opositeIcon
            ? Transform.rotate(
                // roate
                angle: 180 * 3.14 / 180,

                child: icon,
              )
            : icon,
        label: Text(
          text!,
          style: TextStyle(
              fontSize: 20, color: colorText, fontWeight: FontWeight.bold),
        ),
      ),
    );

//password field
Widget passwordField({
  required TextEditingController controller,
  required VoidCallback function,
  Function(String)? onsubmit,
  required String hintText,
  required bool obscureText,
  bool autofocus = false,
  required Icon prefixIconicon,
  double borderRadius = 10,
  cursorColors = defaultColor,
  selectionControlss = defaultColor,
}) =>
    TextFormField(
        cursorColor: cursorColors,
        autofocus: autofocus,
        controller: controller,
        obscureText: obscureText,
        onFieldSubmitted: onsubmit,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("$hintText must not be  empty");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }

          return null;
        },
        onSaved: (value) {
          controller.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          iconColor: defaultColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: defaultColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: defaultColor),
          ),
          prefixIcon: prefixIconicon,
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: function,
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ));

//Text field
Widget textdField({
  required TextEditingController controller,
  required String hintText,
  var onSubmit,
  var onchange,
  TextInputType keyboardType = TextInputType.text,
  bool autofocus = false,
  required Icon prefixIconicon,
  double borderRadius = 10,
  int maxlines = 1,
}) =>
    TextFormField(
        maxLines: maxlines,
        autofocus: autofocus,
        controller: controller,
        keyboardType: keyboardType,
        validator: (value) {
          if (value!.isEmpty) {
            return ("$hintText must not be  empty");
          }

          return null;
        },
        onSaved: (value) {
          controller.text = value!;
        },
        textInputAction: TextInputAction.done,
        onFieldSubmitted: onSubmit,
        onChanged: onchange,
        decoration: InputDecoration(
          iconColor: defaultColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: defaultColor),
          ),
          prefixIcon: prefixIconicon,
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ));

//Text field
Widget dafaulttextdField({
  required TextEditingController controller,
  required String hintText,
  var onSubmit,
  var onchange,
  TextInputType keyboardType = TextInputType.text,
  bool autofocus = false,
  required Icon prefixIconicon,
  double borderRadius = 10,
  int maxlines = 1,
}) =>
    TextFormField(
        maxLines: maxlines,
        autofocus: autofocus,
        controller: controller,
        keyboardType: keyboardType,
        validator: (value) {
          if (value!.isEmpty) {
            return ("$hintText must not be  empty");
          }

          return null;
        },
        onSaved: (value) {
          controller.text = value!;
        },
        textInputAction: TextInputAction.done,
        onFieldSubmitted: onSubmit,
        onChanged: onchange,
        decoration: InputDecoration(
          iconColor: defaultColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: defaultColor),
          ),
          prefixIcon: prefixIconicon,
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ));

Widget emailField({
  required TextEditingController controller,
  required String hintText,
  TextInputType keyboardType = TextInputType.emailAddress,
  bool autofocus = false,
  var prefixIconicon = const Icon(Icons.email),
  double borderRadius = 10,
  int maxlines = 1,
  Color colorr = defaultColor,
}) =>
    TextFormField(
        cursorColor: colorr,
        maxLines: maxlines,
        autofocus: autofocus,
        controller: controller,
        keyboardType: keyboardType,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Email");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          controller.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          iconColor: colorr,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: defaultColor),
          ),
          prefixIcon: prefixIconicon,
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: hintText,
          focusColor: colorr,
          fillColor: colorr,
          hoverColor: colorr,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ));

// Widget ChekBoxWidhet({
//   required bool? value,
//   required Function function,
// }) =>
//     Row(
//       children: [
//         Checkbox(
//           value: value!,
//           onChanged: (value) {
//             function();
//           },
//         ),
//         SizedBox(
//           width: 10.0,
//         ),
//         Text('3 mois-1500  DA'),
//       ],
//     );

Widget buildImage(String urlImages, int index) => Container(
      // margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      child: Image.network(
        urlImages,
        fit: BoxFit.cover,
      ),
    );

Widget buildImages(urlImages, int index) => Container(
      // margin: EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,

      color: Colors.grey,

      child: Image.file(
        urlImages,
        fit: BoxFit.cover,
      ),
    );

Widget BuildIndicatore(int activeIndex, int lengthList) =>
    AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: lengthList,
      //  effect: JumpingDotEffect(dotWidth: 20, dotHeight: 20, activeDoColor: Colors.purpel,doColor: Colors.blak12,), // for animation its bown
    );

void navigatTo(context, widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ));

void navigatToRomplace(context, widget) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ), (route) {
      return false;
    });

//  showToast
void showToast({
  required String text,
  required ToastStates state,
}) =>
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseToastColor(state),
        textColor: Colors.white,
        fontSize: 16.0);

enum ToastStates { success, error, warning }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.success:
      color = Colors.green;
      break;
    case ToastStates.warning:
      color = Colors.yellow;
      break;
    case ToastStates.error:
      color = Colors.red;
      break;
  }
  return color;
}

Widget defaultFornField({
  var NameController,
  double margin = 3.0,
  String? text,
  double hintStylefontSise = 15.0,
  double labelStylefontSize = 20.0,
  VoidCallback? onTap,
  IconData? iconText,
  TextInputType keyboardType = TextInputType.text,
  bool isClickable = true,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(0),
      child: TextFormField(
        enabled: isClickable,
        controller: NameController,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            labelText: "$text",
            labelStyle: TextStyle(fontSize: labelStylefontSize),
            hintText: "Enter $text",
            hintStyle: TextStyle(fontSize: hintStylefontSise),
            prefixIcon: Icon(iconText)),
        keyboardType: keyboardType,
        onTap: onTap,
        validator: (value) {
          if (value!.isEmpty) {
            return 'password must not be empty';
          }
          return null;
        },
      ),
    );

ShowTickts(context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        color: Colors.grey,
        height: 400.0, // Change as per your requirement
        width: 320.0, // Change as per your requirement
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
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
                          builder: (context) => TripTicketPage(pagess: 0),
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
                                height: 40,
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
                                        style: TextStyle(color: veppoLightGrey),
                                      ),
                                      Text('Porto Alegre'),
                                      SizedBox(height: 28),
                                      Text(
                                        'To',
                                        style: TextStyle(color: veppoLightGrey),
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
                                        style: TextStyle(color: veppoLightGrey),
                                      ),
                                      Text('6:30'),
                                      SizedBox(height: 28),
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
      Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Cancel"),
        ),
      )
    ],
  );
}

ModifyTickets(context, dateController, fnc) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        color: Colors.grey,
        height: 400.0, // Change as per your requirement
        width: 320.0, // Change as per your requirement
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            defaultFornField(
              iconText: Icons.location_city,
              text: 'Departure',
            ),
            defaultFornField(iconText: Icons.location_city, text: 'Arrival'),
            defaultFornField(
                iconText: Icons.person,
                text: 'Number ',
                keyboardType: TextInputType.number),
            defaultFornField(
                NameController: dateController,
                iconText: Icons.date_range,
                text: 'date',
                onTap: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.parse('2023-02-02'))
                      .then(
                    (value) {
                      dateController.text = DateFormat.yMMMMd(value).toString();
                    },
                  );
                }),
            // defaultFornField(
            //   iconText: Icons.location_city,
            //   text: 'Class',
            // ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              margin: EdgeInsets.all(3),
              padding: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.class_,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DropdownButton<String>(
                    value: items1,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style:
                        const TextStyle(color: Color.fromARGB(255, 92, 91, 91)),
                    onChanged: (v) {},
                    items: classTravling
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                navigatTo(context, MyCard());
              },
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: defaultColor),
                child: Center(
                    child: Text(
                  'Applay',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Cancel"),
        ),
      )
    ],
  );
}

DropDownClas(func) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    margin: EdgeInsets.all(3),
    padding: EdgeInsets.only(left: 10, right: 10),
    width: double.infinity,
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.class_,
          color: Colors.grey,
        ),
        SizedBox(
          width: 10,
        ),
        DropdownButton<String>(
          value: items1,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Color.fromARGB(255, 92, 91, 91)),
          onChanged: func,
          items: classTravling.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    ),
  );
}
