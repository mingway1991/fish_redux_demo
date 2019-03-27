import 'package:fish_redux/fish_redux.dart';

import '../../pages//make_card_page/action.dart';
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
  newState.makeCardModel.imageUrl = null;
  return newState;
}