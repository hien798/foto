import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foto/models/editor/editor.dart';
import 'package:foto/share/share.dart';
import 'bloc.dart';

class EditorCubit extends Cubit<EditorState> {
  final EditorModel model;

  EditorCubit(this.model) : super(EditorState()) {
    _initState();
  }

  void _initState() async {
    final size = await imageSize(model.image);
    emit(ImageLoaded(model.image, ratio: size.width/size.height));
    emit(FilterLoaded(model.filter));
    emit(ItemsLoaded(model.items));
  }

  void onUpdateFilter(String filter)async {
    emit(FilterLoaded(filter));
  }

  void onUpdateItems(List<ItemViewModel>? items)async {
    emit(ItemsLoaded(items));
  }



}
