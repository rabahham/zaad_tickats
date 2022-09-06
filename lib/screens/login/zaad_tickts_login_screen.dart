import 'package:buy_tickets/layout/zaad_tickets_layout/layout_zaad_tickets.dart';
import 'package:buy_tickets/screens/register/zaad_tickts_register_screen.dart';

import '../../shered/components/components.dart';
import '../../shered/components/custom_logo.dart';
import '../../shered/network/local/chach_hlepr.dart';
import '../../shered/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ZaadTicktsLoginScreen extends StatefulWidget {
  const ZaadTicktsLoginScreen({Key? key}) : super(key: key);

  @override
  State<ZaadTicktsLoginScreen> createState() => _ZaadTicktsLoginScreenState();
}

class _ZaadTicktsLoginScreenState extends State<ZaadTicktsLoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    // passwordVisible
    var passwordVisible = false;

    void visible () { setState(() {
      passwordVisible = !passwordVisible;
    });    };

    // editing controller
    final TextEditingController emailController = new TextEditingController();

    final TextEditingController passwordController =
        new TextEditingController();

    // string for displaying the error Message
    String? errorMessage;

    return
        //  BlocProvider(
        //   create: (context) => ZaadTicktsLoginCubit(),
        //   child: BlocConsumer<ZaadTicktsLoginCubit, ZaadTicktsLginState>(
        //     listener: (context, state) {
        //       // TODO: implement listener
        //       if (state is ZaadTicktsLoginSuccessState) {
        //         if (state.loginModel.status!) {
        //           CacheHelper.saveData(
        //             key: 'token',
        //             value: state.loginModel.data!.token,
        //           ).then((value) {
        //             navigatToRomplace(context, ZaadTicktsLayout());
        //           });
        //           showToast(
        //               state: ToastStates.success, text: state.loginModel.message!);
        //         } else {
        //           // Fluttertoast.showToast(
        //           //     msg: state.loginModel.message!,
        //           //     toastLength: Toast.LENGTH_LONG,
        //           //     gravity: ToastGravity.BOTTOM,
        //           //     timeInSecForIosWeb: 5,
        //           //     backgroundColor: Colors.red[300],
        //           //     textColor: Colors.white,
        //           //     fontSize: 16.0);
        //           showToast(
        //               state: ToastStates.error, text: state.loginModel.message!);
        //         }
        //       }
        //     },
        //     builder: (context, state) {
        //       return
        Scaffold(
            body: Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                CustomLogo(),

                SizedBox(
                  height: 20,
                ),
                // Email
                emailField(
                  controller: emailController,
                  hintText: 'Email',
                ),
                SizedBox(
                  height: 20,
                ),
                // passwordFielde,
                passwordField(
                  obscureText: true,
                  // ZaadTicktsLoginCubit.get(context).passwordVisible,
                  controller: passwordController,
                  hintText: 'Password',
                  prefixIconicon: Icon(Icons.vpn_key),
                  onsubmit: (value) {
                    if (_formKey.currentState!.validate()) {
                      // print(emailController.text);
                      // print(passwordController.text);
                      // ZaadTicktsLoginCubit.get(context).userLogin(
                      //     email: emailController.text,
                      //     password: passwordController.text);
                    }
                  },
                  function: visible,
                ),

                SizedBox(
                  height: 20,
                ),

                // button login
                // (state is! ZaadTicktsLoginLoadingState)
                //     ?
                defultButton(
                  text: 'Log In',
                  function: () {
                    // _formKey.currentState!.validate();
                    // signIn(emailController.text, passwordController.text);
                    if (_formKey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);
                      navigatTo(context, LayoutZaadTickets());
                      // ZaadTicktsLoginCubit.get(context).userLogin(
                      //     email: emailController.text,
                      //     password: passwordController.text);
                    }
                  },
                  background: defaultColor,
                )
                // : Center(
                //     child: CircularProgressIndicator(),
                //   ),
                ,

                SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Doun't have an account? ",
                        style: TextStyle(
                            //  color: defaultColor.withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      GestureDetector(
                        onTap: () {
                          navigatTo(context, ZaadTicktsRegisterScreen());
                        },
                        child: Text(
                          "ZaadTickts ",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    // copyWith for modfai,
                                    color: defaultColor.withOpacity(0.6),
                                  ),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    ));
    //     },
    //   ),
    // );
  }
}
