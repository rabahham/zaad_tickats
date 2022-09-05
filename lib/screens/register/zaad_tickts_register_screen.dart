// import '../../bessiness-logic/login_cubit/login-state.dart';
// import '../../bessiness-logic/login_cubit/login_cubit.dart';
// import '../../bessiness-logic/register_cuibit/register-state.dart';
// import '../../bessiness-logic/register_cuibit/register_cubit.dart';
// import '../../layout/ZaadTickts_layout/ZaadTickts_layout.dart';
import '../login/zaad_tickts_login_screen.dart';
import 'zaad_tickts_register_screen.dart';
import '../../shered/components/components.dart';
import '../../shered/components/custom_logo.dart';
import '../../shered/network/local/chach_hlepr.dart';
import '../../shered/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ZaadTicktsRegisterScreen extends StatefulWidget {
  const ZaadTicktsRegisterScreen({Key? key}) : super(key: key);

  @override
  State<ZaadTicktsRegisterScreen> createState() =>
      _ZaadTicktsRegisterScreenState();
}

class _ZaadTicktsRegisterScreenState extends State<ZaadTicktsRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    // passwordVisible
    var passwordVisible = true;

    // editing controller
    final TextEditingController emailController = new TextEditingController();

    final TextEditingController passwordController =
        new TextEditingController();

    // editing controller
    final TextEditingController nameController = new TextEditingController();

    final TextEditingController phoneController = new TextEditingController();

    // string for displaying the error Message
    String? errorMessage;

    return
        //  BlocProvider(
        //   create: (context) => ZaadTicktsRegisterCubit(),
        //   child: BlocConsumer<ZaadTicktsRegisterCubit, ZaadTicktsRegisterState>(
        //     listener: (context, state) {
        //       // TODO: implement listener
        //       if (state is ZaadTicktsRegisterSuccessState) {
        //         if (state.regisetrModel.status!) {
        //           CacheHelper.saveData(
        //             key: 'token',
        //             value: state.regisetrModel.data!.token,
        //           ).then((value) {
        //             navigatToRomplace(context, ZaadTicktsLayout());
        //           });
        //           showToast(
        //               state: ToastStates.success,
        //               text: state.regisetrModel.message!);
        //         } else {
        //           showToast(
        //               state: ToastStates.error, text: state.regisetrModel.message!);
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
                // Name
                textdField(
                  controller: nameController,
                  hintText: 'Name',
                  prefixIconicon: Icon(Icons.person),
                ),
                SizedBox(
                  height: 20,
                ),
                // Phone
                textdField(
                  controller: phoneController,
                  hintText: 'Phone',
                  prefixIconicon: Icon(Icons.phone),
                ),
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
                  // ZaadTicktsRegisterCubit.get(context).passwordVisible,
                  controller: passwordController,
                  hintText: 'Password',
                  prefixIconicon: Icon(Icons.vpn_key),
                  onsubmit: (value) {
                    if (_formKey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);
                      // ZaadTicktsRegisterCubit.get(context).userRegister(
                      //     email: emailController.text,
                      //     phone: phoneController.text,
                      //     password: passwordController.text,
                      //     name: nameController.text);
                    }
                  },
                  function: () {
                    // ZaadTicktsRegisterCubit.get(context).passWordVisible();
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),

                SizedBox(
                  height: 20,
                ),

                // button login
                // (state is! ZaadTicktsRegisterSuccessState)
                //     ?
                defultButton(
                  text: 'Sign up',
                  function: () {
                    // _formKey.currentState!.validate();
                    // signIn(emailController.text, passwordController.text);
                    if (_formKey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);
                      // ZaadTicktsRegisterCubit.get(context).userRegister(
                      //     email: emailController.text,
                      //     phone: phoneController.text,
                      //     password: passwordController.text,
                      //     name: nameController.text);
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
                        "Are you want to signIn? ",
                        style: TextStyle(
                            //  color: defaultColor.withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      GestureDetector(
                        onTap: () {
                          navigatTo(context, ZaadTicktsLoginScreen());
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
