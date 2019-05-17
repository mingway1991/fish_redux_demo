import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import '../../pages/make_card_page/state.dart';

Reducer<LBMakeCardState> buildReducer() {
  return asReducer(
    <Object, Reducer<LBMakeCardState>>{
      LBListAction.action: _onAction,
    },
  );
}

LBMakeCardState _onAction(LBMakeCardState state, Action action) {
  final LBMakeCardState newState = state.clone();
  return newState;
}
