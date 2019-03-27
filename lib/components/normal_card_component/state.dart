import 'package:fish_redux/fish_redux.dart';
import '../../models/make_card_model.dart';

class LBNormalCardState implements Cloneable<LBNormalCardState> {

  bool isPreview = false;
  LBMakeCardModel makeCardModel;

  @override
  LBNormalCardState clone() {
    return LBNormalCardState()
      ..makeCardModel = makeCardModel
    ;
  }
}

LBNormalCardState initState(Map<String, dynamic> args) {
  return LBNormalCardState();
}
