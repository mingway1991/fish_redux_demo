import 'package:fish_redux/fish_redux.dart';

class LBTextOverImageCardState implements Cloneable<LBTextOverImageCardState> {

  String text;
  String image;

  @override
  LBTextOverImageCardState clone() {
    return LBTextOverImageCardState()
      ..text = text
      ..image = image
    ;
  }
}

LBTextOverImageCardState initState(Map<String, dynamic> args) {
  return LBTextOverImageCardState();
}
