abstract class ShopRegisterState {}

class ShopregisterInitialState extends ShopRegisterState {}

class ShopRegisterLoadingState extends ShopRegisterState {}

class ShopRegisterSuccessState extends ShopRegisterState {
  // ShopLoginModel regisetrModel;
  // ShopRegisterSuccessState({
  //   required this.regisetrModel,
  // });
}

class ShopregisterErrorState extends ShopRegisterState {
  String? error;
  ShopregisterErrorState({
    this.error,
  });
}

class ShopRegistersPasswordVisibleState extends ShopRegisterState {}
