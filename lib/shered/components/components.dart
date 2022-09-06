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
  cursorColors = Colors.purple,
  selectionControlss = Colors.purple,
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
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
          ),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple),),
          prefixIcon: prefixIconicon,
          suffixIcon: IconButton(
            icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off,),
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
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
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
  Color colorr = Colors.purple,
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
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
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
