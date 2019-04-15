import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LBPreviewAction { saveAction }

class LBPreviewActionCreator {
  static Action saveAction() {
    return const Action(LBPreviewAction.saveAction);
  }
}
