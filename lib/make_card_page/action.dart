import 'package:fish_redux/fish_redux.dart';
import '../models/make_card_model.dart';

enum LBMakeCardAction {
  clickImage,
  clickRemoveImage,
  removeImages,
  updateSelectIndex,
  preview,
  save,
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

  static Action previewAction() {
    return const Action(LBMakeCardAction.preview);
  }

  static Action saveAction() {
    return const Action(LBMakeCardAction.save);
  }

  static Action changeModeAction(LBMakeCardMode mode) {
    return Action(LBMakeCardAction.changeMode, payload: mode);
  }
}
