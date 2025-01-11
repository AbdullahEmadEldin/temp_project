import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';


part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  /// UI logic handling
  ///
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    emit(LoginLoading());
    try {
   
    } catch (e) {
      log('Login Error: ${e.toString()}');
      emit(LoginError(e.toString()));
    }
  }

  Future<void> googleLogin() async {
    emit(LoginLoading());
    try {
    
    } catch (e) {
      log('Login Error: ${e.toString()}');
      emit(LoginError(e.toString()));
    }
  }


}
