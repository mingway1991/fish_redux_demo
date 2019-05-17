import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import '../../models/make_card_mode.dart';

Widget buildView(LBMakeCardState state, Dispatch dispatch, ViewService viewService) {
  final ListAdapter adapter = viewService.buildAdapter();
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: const Text('制卡'),
      actions: <Widget>[
          IconButton(
            icon: Icon(Icons.content_copy),
            tooltip: '预览',
            onPressed: () {
              dispatch(LBMakeCardActionCreator.saveAction());
            },
          ),
        ]
    ),
    body: Container(
      child: Column(
        children: <Widget>[
          Offstage(
            offstage: state.mode != LBMakeCardMode.list,
            child: Container(
              height: 44.0,
                child: ListView.builder(
                    itemBuilder: adapter.itemBuilder,
                    itemCount: adapter.itemCount
                ),
              ),
          ),
          Offstage(
            offstage: state.mode != LBMakeCardMode.normal,
            child: viewService.buildComponent('normal_card'),
          ),
          Offstage(
            offstage: state.mode != LBMakeCardMode.textOverImage,
            child: viewService.buildComponent('textOverImage_card'),
          ),
        ],
      )
    ),
    bottomNavigationBar: BottomAppBar(
      child: new Row(
        children: <Widget>[
          FlatButton(
            child: Text(
              '模式一',
              style: TextStyle(color: state.mode == LBMakeCardMode.normal ? Colors.black : Colors.grey),
            ),
            onPressed: () => dispatch(LBMakeCardActionCreator.changeModeAction(LBMakeCardMode.normal)),
          ),
          FlatButton(
            child: Text(
              '模式二',
              style: TextStyle(color: state.mode == LBMakeCardMode.textOverImage ? Colors.black : Colors.grey),
            ),
            onPressed: () => dispatch(LBMakeCardActionCreator.changeModeAction(LBMakeCardMode.textOverImage)),
          ),
          FlatButton(
            child: Text(
              '模式三',
              style: TextStyle(color: state.mode == LBMakeCardMode.list ? Colors.black : Colors.grey),
            ),
            onPressed: () => dispatch(LBMakeCardActionCreator.changeModeAction(LBMakeCardMode.list)),
          )
        ],
      ),
    ),
  );
}
