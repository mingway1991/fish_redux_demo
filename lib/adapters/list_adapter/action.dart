import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LBListAction { action }

class LBListActionCreator {
  static Action onAction() {
    return const Action(LBListAction.action);
  }
}
