import 'package:flutter_bloc/flutter_bloc.dart';

class TrashCubit extends Cubit<int> {
  TrashCubit() : super(0);

  void onUpdate(int value) async {
    emit(value);
  }
}
