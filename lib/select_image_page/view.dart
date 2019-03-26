import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LBSelectImageState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: const Text('选择图片'),
    ),
    body: Container(
      color: Colors.white,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
          itemCount: (state.images != null) ? state.images.length : 0,
          itemBuilder: (BuildContext context, int position) {
            return Container(
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      child:  CachedNetworkImage(
                        imageUrl: (state.images != null && state.images.length > 0) ? state.images[position] : '',
                        placeholder: (context, url) => new CircularProgressIndicator(),
                        errorWidget: (context, url, error) => new Icon(Icons.error),
                      ),
                      onTap:(
                        () => dispatch(LBSelectImageActionCreator.clickImageAction(position))
                      ),
                    ),
                    Offstage(
                      offstage: position == (state.images.length-1),
                      child: Padding(padding: EdgeInsets.only(top: 10)),
                    )
                  ],
                ),
            );
          }),
    )
  );
}
