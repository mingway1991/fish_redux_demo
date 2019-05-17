import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LBListItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<LBListItemState>>{
      LBListItemAction.action: _onAction,
    },
  );
}

LBListItemState _onAction(LBListItemState state, Action action) {
  final LBListItemState newState = state.clone();
  return newState;
}
