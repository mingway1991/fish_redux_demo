import 'package:fish_redux/fish_redux.dart';
import '../../models/make_card_mode.dart';
import '../../components/normal_card_component/state.dart';
import '../../components/textoverimage_card_component/state.dart';
import 'helper.dart';
import '../../components/list_item_component/state.dart';

class LBMakeCardState implements Cloneable<LBMakeCardState> {

  //接收参数
  String text;
  List<String> images;
  int selectIndex = 0;
  LBMakeCardMode mode = LBMakeCardMode.normal;
  List<LBListItemState> list = [ LBListItemState(), LBListItemState() ];

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
    normalCardState.makeCardModel = generateMakeCardModel(state.text, state.images, state.selectIndex);
    return normalCardState;
  }

  @override
  void set(LBMakeCardState state, LBNormalCardState subState) {}
}

class LBTextOverImageCardConnector extends ConnOp<LBMakeCardState, LBTextOverImageCardState> {
  @override
  LBTextOverImageCardState get(LBMakeCardState state) {
    final LBTextOverImageCardState textOverImageCardState = LBTextOverImageCardState();
    textOverImageCardState.makeCardModel = generateMakeCardModel(state.text, state.images, state.selectIndex);
    return textOverImageCardState;
  }

  @override
  void set(LBMakeCardState state, LBTextOverImageCardState subState) {}
}
