import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum RegistrationStatus { initial, loading, success, error }

class RegisterCubit extends Cubit<RegistrationStatus> {
  RegisterCubit() : super(RegistrationStatus.initial);

  Future<void> register() async {
    emit(RegistrationStatus.loading);

    // Здесь вы можете имитировать регистрацию с задержкой
    await Future.delayed(Duration(seconds: 2));

    // Если регистрация прошла успешно
    if (true) {
      emit(RegistrationStatus.success);
    } else {
      emit(RegistrationStatus.error);
    }
  }
}


