import 'package:fish_redux/fish_redux.dart';
import 'package:demo/models/make_card_mode.dart';

enum LBMakeCardAction {
  clickImage,
  clickRemoveImage,
  removeImages,
  updateSelectIndex,
  clickSave,
  changeMode,
}

class LBMakeCardActionCreator {
  static Action clickImageAction() {
    return const Action(LBMakeCardAction.clickImage);
  }
  
  static Action clickRemoveImageAction() {
    return const Action(LBMakeCardAction.clickRemoveImage);
  }

  static Action removeImages() {
    return const Action(LBMakeCardAction.removeImages);
  }

  static Action updateSelectIndex(int newIndex) {
    return Action(LBMakeCardAction.updateSelectIndex, payload: newIndex);
  }

  static Action saveAction() {
    return const Action(LBMakeCardAction.clickSave);
  }

  static Action changeModeAction(LBMakeCardMode mode) {
    return Action(LBMakeCardAction.changeMode, payload: mode);
  }
}
