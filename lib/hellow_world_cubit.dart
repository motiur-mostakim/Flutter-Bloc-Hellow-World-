import 'package:bloc/bloc.dart';

class HelloWorldCubit extends Cubit<String> {
  HelloWorldCubit() : super('MR Mostakim');

  // void changeMessage(String message) => emit(message);
}
