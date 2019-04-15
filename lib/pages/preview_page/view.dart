import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import '../../models/make_card_mode.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(LBPreviewState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
        centerTitle: true,
        title: const Text('预览'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_to_photos),
            tooltip: '保存',
            onPressed: () {
              dispatch(LBPreviewActionCreator.saveAction());
            },
          ),
        ]
    ),
    body: RepaintBoundary(
        key: state.captureKey,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Offstage(
                  offstage: state.mode != LBMakeCardMode.normal,
                  child: viewService.buildComponent('normal_card'),
                ),
                Offstage(
                  offstage: state.mode != LBMakeCardMode.textOverImage,
                  child: viewService.buildComponent('textOverImage_card'),
                ),
              ],
            ),
          ),
        ),
    ),
  );
}
