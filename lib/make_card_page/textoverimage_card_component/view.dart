import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'state.dart';
import '../action.dart';

Widget buildView(LBTextOverImageCardState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.red,
    alignment: Alignment.center,
    padding: const EdgeInsets.all(20.0),
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Offstage(
              offstage: state.image == null,
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    child:  CachedNetworkImage(
                      imageUrl: (state.image != null) ? state.image : '',
                      placeholder: (context, url) => new CircularProgressIndicator(),
                      errorWidget: (context, url, error) => new Icon(Icons.error),
                    ),
                    onTap: () => dispatch(LBMakeCardActionCreator.clickImageAction()),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => dispatch(LBMakeCardActionCreator.clickRemoveImageAction()),
                      color: Colors.white,
                      highlightColor: Colors.white,
                    ),
                  )
                ],
              )
          ),
          Offstage(
              offstage: state.image == null,
              child: Padding(padding: EdgeInsets.only(top: 10))
          ),
          Offstage(
              offstage: state.text == null,
              child: Text(
                state.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16,color: Colors.black87),
              )
          ),
        ],
      ),
    ),
  );
}
