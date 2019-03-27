import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'action.dart';
import 'state.dart';
import '../select_image_page/page.dart' as select_image_page;
import '../select_image_page/state.dart';
import '../preview_page/page.dart' as preview_page;
import '../preview_page/state.dart';
import '../../models/make_card_mode.dart';
import '../../models/make_card_model.dart';
import 'helper.dart';

Effect<LBMakeCardState> buildEffect() {
  return combineEffects(<Object, Effect<LBMakeCardState>>{
    Lifecycle.initState: _init,
    LBMakeCardAction.clickImage: _clickImageAction,
    LBMakeCardAction.clickRemoveImage: _clickRemoveImageAction,
    LBMakeCardAction.clickSave: _clickSaveAction,
  });
}

void _init(Action action, Context<LBMakeCardState> ctx) {

}

void _clickImageAction(Action action, Context<LBMakeCardState> ctx) {
  Navigator.of(ctx.context)
      .push<LBSelectImageState>(MaterialPageRoute<LBSelectImageState>(
      builder: (BuildContext buildCtx) =>
          select_image_page.LBSelectImagePage().buildPage({'images':ctx.state.images,'selectIndex':ctx.state.selectIndex}))).then((LBSelectImageState selectImageState) {
            if (selectImageState != null) {
              ctx.dispatch(LBMakeCardActionCreator.updateSelectIndex(selectImageState.selectIndex));
            }
  });
}

void _clickRemoveImageAction(Action action, Context<LBMakeCardState> ctx) async {
  showDialog(
    context: ctx.context,
    builder: (BuildContext context) => new CupertinoAlertDialog(
      title: new Text("提醒"),
      content: new Text("确定要移除图片吗？"),
      actions: [
        CupertinoDialogAction(
          isDefaultAction: true,
          isDestructiveAction: false,
          child: new Text("取消"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        CupertinoDialogAction(
          isDefaultAction: false,
          isDestructiveAction: true,
          child: new Text("确定"),
          onPressed: () {
            Navigator.of(context).pop();
            ctx.dispatch(LBMakeCardActionCreator.removeImages());
          },
        )
      ],
    ),
  );
}

void _clickSaveAction(Action action, Context<LBMakeCardState> ctx) {

  LBMakeCardMode mode = ctx.state.mode;
  LBMakeCardModel makeCardModel = generateMakeCardModel(ctx.state.text, ctx.state.images, ctx.state.selectIndex);

  Navigator.of(ctx.context)
      .push<LBPreviewState>(MaterialPageRoute<LBPreviewState>(
      builder: (BuildContext buildCtx) =>
          preview_page.LBPreviewPage().buildPage({'makeCardModel':makeCardModel,'mode':mode}))).then((LBPreviewState previewState) {

  });
}
