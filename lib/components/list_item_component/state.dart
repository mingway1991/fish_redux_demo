import 'package:fish_redux/fish_redux.dart';

class LBListItemState implements Cloneable<LBListItemState> {

  String title;
  String desc;

  @override
  LBListItemState clone() {
    return LBListItemState();
  }
}

LBListItemState initState(Map<String, dynamic> args) {
  return LBListItemState();
}
