import 'package:fish_redux/fish_redux.dart';
import '../models/make_card_model.dart';
import 'normal_card_component/state.dart';
import 'textoverimage_card_component/state.dart';

class LBMakeCardState implements Cloneable<LBMakeCardState> {

  //接收参数
  String text;
  List<String> images;
  int selectIndex = 0;
  LBMakeCardMode mode = LBMakeCardMode.normal;

  @override
  LBMakeCardState clone() {
    return LBMakeCardState()
      ..text = text
      ..images = images
      ..selectIndex = selectIndex
      ..mode = mode
    ;
  }
}

LBMakeCardState initState(Map<String, dynamic> args) {
  LBMakeCardState state = LBMakeCardState();
  if (args.containsKey('text')) {
    state.text = args['text'];
  }
  if (args.containsKey('images')) {
    state.images = args['images'];
  }
  return state;
}

class LBNormalCardConnector extends ConnOp<LBMakeCardState, LBNormalCardState> {
  @override
  LBNormalCardState get(LBMakeCardState state) {
    final LBNormalCardState normalCardState = LBNormalCardState();
    normalCardState.text = state.text;
    normalCardState.image = (state.images != null && state.images.length > 0) ? state.images[state.selectIndex] : null;
    return normalCardState;
  }

  @override
  void set(LBMakeCardState state, LBNormalCardState subState) {}
}

class LBTextOverImageCardConnector extends ConnOp<LBMakeCardState, LBTextOverImageCardState> {
  @override
  LBTextOverImageCardState get(LBMakeCardState state) {
    final LBTextOverImageCardState textOverImageCardState = LBTextOverImageCardState();
    textOverImageCardState.text = state.text;
    textOverImageCardState.image = (state.images != null && state.images.length > 0) ? state.images[state.selectIndex] : null;
    return textOverImageCardState;
  }

  @override
  void set(LBMakeCardState state, LBTextOverImageCardState subState) {}
}
