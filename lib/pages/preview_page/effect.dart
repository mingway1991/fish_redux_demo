import 'package:fish_redux/fish_redux.dart';
import 'dart:typed_data';
import 'action.dart';
import 'state.dart';
import '../../utils/utils.dart';

Effect<LBPreviewState> buildEffect() {
  return combineEffects(<Object, Effect<LBPreviewState>>{
    LBPreviewAction.saveAction: _saveAction,
  });
}

void _saveAction(Action action, Context<LBPreviewState> ctx) async {
  Uint8List screenshot = await capturePng(ctx.state.captureKey);
  saveFile(screenshot);
}
