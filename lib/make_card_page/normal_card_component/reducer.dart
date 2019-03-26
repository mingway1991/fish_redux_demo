import 'package:fish_redux/fish_redux.dart';

import '../action.dart';
import 'state.dart';

Reducer<LBNormalCardState> buildReducer() {
  return asReducer(
    <Object, Reducer<LBNormalCardState>>{
      LBMakeCardAction.removeImages: _removeImages,
    },
  );
}

LBNormalCardState _removeImages(LBNormalCardState state, Action action) {
  final LBNormalCardState newState = state.clone();
  newState.image = null;
  return newState;
}