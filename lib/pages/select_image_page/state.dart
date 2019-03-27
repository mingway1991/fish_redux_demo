import 'package:fish_redux/fish_redux.dart';

class LBSelectImageState implements Cloneable<LBSelectImageState> {

  List<String> images;
  int selectIndex = 0;

  @override
  LBSelectImageState clone() {
    return LBSelectImageState()
      ..images = images
      ..selectIndex = selectIndex
    ;
  }
}

LBSelectImageState initState(Map<String, dynamic> args) {
  LBSelectImageState state = LBSelectImageState();
  if (args.containsKey('images')) {
    state.images = args['images'];
  }
  if (args.containsKey('selectIndex')) {
    state.selectIndex = args['selectIndex'];
  }
  return state;
}
