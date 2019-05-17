import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LBListItemAction { action }

class LBListItemActionCreator {
  static Action onAction() {
    return const Action(LBListItemAction.action);
  }
}
