import 'package:fish_redux/fish_redux.dart';

class LBPreviewState implements Cloneable<LBPreviewState> {

  @override
  LBPreviewState clone() {
    return LBPreviewState();
  }
}

LBPreviewState initState(Map<String, dynamic> args) {
  return LBPreviewState();
}
