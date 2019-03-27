import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'action.dart';
import 'state.dart';

Effect<LBSelectImageState> buildEffect() {
  return combineEffects(<Object, Effect<LBSelectImageState>>{
    Lifecycle.initState: _init,
    LBSelectImageAction.clickImage: _clickImageAction,
    LBSelectImageAction.doneAction: _doneAction,
  });
}

void _init(Action action, Context<LBSelectImageState> ctx) {

}

void _clickImageAction(Action action, Context<LBSelectImageState> ctx) {
  final int newIndex = action.payload ?? 0;
  ctx.dispatch(LBSelectImageActionCreator.updateSelectIndex(newIndex));
  ctx.dispatch(LBSelectImageActionCreator.doneAction());
}

void _doneAction(Action action, Context<LBSelectImageState> ctx) {
  Navigator.of(ctx.context).pop(ctx.state);
}