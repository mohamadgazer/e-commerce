import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'view_item_state.dart';

class ViewItemCubit extends Cubit<ViewItemState> {
  ViewItemCubit() : super(ViewItemInitial());
  final PageController? controller = PageController(initialPage: 0);
  int selected = 0;

  void updateSelected(int value) {
    emit(ViewItemInitial());

    selected = value;
    emit(ViewItemChange());
  }
}
