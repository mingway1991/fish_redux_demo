import 'package:fish_redux/fish_redux.dart';

enum LBSelectImageAction {
  clickImage,
  updateSelectIndex,
  doneAction
}

class LBSelectImageActionCreator {
  static Action clickImageAction(int newIndex) {
    return Action(LBSelectImageAction.clickImage, payload: newIndex);
  }

  static Action updateSelectIndex(int newIndex) {
    return Action(LBSelectImageAction.updateSelectIndex, payload: newIndex);
  }

  static Action doneAction() {
    return const Action(LBSelectImageAction.doneAction);
  }
}
