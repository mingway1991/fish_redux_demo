import 'package:fish_redux/fish_redux.dart';

class LBNormalCardState implements Cloneable<LBNormalCardState> {

  String text;
  String image;

  @override
  LBNormalCardState clone() {
    return LBNormalCardState()
      ..text = text
      ..image = image
    ;
  }
}

LBNormalCardState initState(Map<String, dynamic> args) {
  return LBNormalCardState();
}
