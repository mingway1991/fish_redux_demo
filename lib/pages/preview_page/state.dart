import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import '../../models/make_card_mode.dart';
import '../../models/make_card_model.dart';
import '../../components/normal_card_component/state.dart';
import '../../components/textoverimage_card_component/state.dart';

class LBPreviewState implements Cloneable<LBPreviewState> {

  LBMakeCardMode mode = LBMakeCardMode.normal;
  LBMakeCardModel makeCardModel;
  GlobalKey captureKey = GlobalKey();

  @override
  LBPreviewState clone() {
    return LBPreviewState();
  }
}

LBPreviewState initState(Map<String, dynamic> args) {
  LBPreviewState state = LBPreviewState();
  if (args.containsKey('mode')) {
    state.mode = args['mode'];
  }
  if (args.containsKey('makeCardModel')) {
    state.makeCardModel = args['makeCardModel'];
  }
  return state;
}

class LBNormalCardConnector extends ConnOp<LBPreviewState, LBNormalCardState> {
  @override
  LBNormalCardState get(LBPreviewState state) {
    final LBNormalCardState normalCardState = LBNormalCardState();
    normalCardState.makeCardModel = state.makeCardModel;
    normalCardState.isPreview = true;
    return normalCardState;
  }

  @override
  void set(LBPreviewState state, LBNormalCardState subState) {}
}

class LBTextOverImageCardConnector extends ConnOp<LBPreviewState, LBTextOverImageCardState> {
  @override
  LBTextOverImageCardState get(LBPreviewState state) {
    final LBTextOverImageCardState textOverImageCardState = LBTextOverImageCardState();
    textOverImageCardState.makeCardModel = state.makeCardModel;
    textOverImageCardState.isPreview = true;
    return textOverImageCardState;
  }

  @override
  void set(LBPreviewState state, LBTextOverImageCardState subState) {}
}
