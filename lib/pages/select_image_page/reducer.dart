import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LBSelectImageState> buildReducer() {
  return asReducer(
    <Object, Reducer<LBSelectImageState>>{
      LBSelectImageAction.updateSelectIndex: _updateSelectIndex,
    },
  );
}

LBSelectImageState _updateSelectIndex(LBSelectImageState state, Action action) {
  final int newIndex = action.payload ?? state.selectIndex;
  final LBSelectImageState newState = state.clone();
  newState.selectIndex = newIndex;
  return newState;
}
