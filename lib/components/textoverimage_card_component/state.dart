import 'package:fish_redux/fish_redux.dart';
import '../../models/make_card_model.dart';

class LBTextOverImageCardState implements Cloneable<LBTextOverImageCardState> {

  bool isPreview = false;
  LBMakeCardModel makeCardModel;

  @override
  LBTextOverImageCardState clone() {
    return LBTextOverImageCardState()
      ..makeCardModel = makeCardModel
    ;
  }
}

LBTextOverImageCardState initState(Map<String, dynamic> args) {
  return LBTextOverImageCardState();
}
