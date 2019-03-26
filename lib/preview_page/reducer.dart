import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LBPreviewState> buildReducer() {
  return asReducer(
    <Object, Reducer<LBPreviewState>>{
      LBPreviewAction.action: _onAction,
    },
  );
}

LBPreviewState _onAction(LBPreviewState state, Action action) {
  final LBPreviewState newState = state.clone();
  return newState;
}
