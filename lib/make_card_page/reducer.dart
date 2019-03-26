import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';
import '../models/make_card_model.dart';

Reducer<LBMakeCardState> buildReducer() {
  return asReducer(
    <Object, Reducer<LBMakeCardState>>{
      LBMakeCardAction.removeImages: _removeImages,
      LBMakeCardAction.updateSelectIndex: _updateSelectIndex,
      LBMakeCardAction.changeMode: _changeMode,
    },
  );
}

LBMakeCardState _removeImages(LBMakeCardState state, Action action) {
  final LBMakeCardState newState = state.clone();
  newState.images.clear();
  return newState;
}

LBMakeCardState _updateSelectIndex(LBMakeCardState state, Action action) {
  final int newIndex = action.payload ?? state.selectIndex;
  final LBMakeCardState newState = state.clone();
  newState.selectIndex = newIndex;
  return newState;
}

LBMakeCardState _changeMode(LBMakeCardState state, Action action) {
  final LBMakeCardMode newMode = action.payload ?? state.mode;
  final LBMakeCardState newState = state.clone();
  newState.mode = newMode;
  return newState;
}
