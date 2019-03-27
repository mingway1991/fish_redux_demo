import 'package:fish_redux/fish_redux.dart';

import '../../pages/make_card_page/action.dart';
import 'state.dart';

Reducer<LBTextOverImageCardState> buildReducer() {
  return asReducer(
    <Object, Reducer<LBTextOverImageCardState>>{
      LBMakeCardAction.removeImages: _removeImages,
    },
  );
}

LBTextOverImageCardState _removeImages(LBTextOverImageCardState state, Action action) {
  final LBTextOverImageCardState newState = state.clone();
  newState.makeCardModel.imageUrl = null;
  return newState;
}