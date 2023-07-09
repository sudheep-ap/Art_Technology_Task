import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/app_status_dart';
part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationInitial()) {
    on<OnRegistrationEvent>((event, emit) => {
          emit(RegistrationState(registrationState: AppStatus.loading)),
          Future.delayed(const Duration(seconds: 10)),
          emit(RegistrationState(registrationState: AppStatus.success))
        });
  }
}
