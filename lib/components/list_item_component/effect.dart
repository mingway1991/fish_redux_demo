import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<LBListItemState> buildEffect() {
  return combineEffects(<Object, Effect<LBListItemState>>{
    LBListItemAction.action: _onAction,
  });
}

void _onAction(Action action, Context<LBListItemState> ctx) {
}
