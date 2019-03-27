import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'state.dart';
import '../../pages/make_card_page/action.dart';

Widget buildView(LBNormalCardState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.white,
    alignment: Alignment.center,
    padding: const EdgeInsets.all(20.0),
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Offstage(
              offstage: state.makeCardModel.imageUrl == null,
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    child: CachedNetworkImage(
                      imageUrl: (state.makeCardModel.imageUrl != null) ? state.makeCardModel.imageUrl : '',
                      placeholder: (context, url) => new CircularProgressIndicator(),
                      errorWidget: (context, url, error) => new Icon(Icons.error),
                    ),
                    onTap: () {
                      if (!state.isPreview) {
                        dispatch(LBMakeCardActionCreator.clickImageAction());
                      }
                    },
                  ),
                  Offstage(
                    offstage: state.isPreview,
                    child: Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => dispatch(LBMakeCardActionCreator.clickRemoveImageAction()),
                        color: Colors.white,
                        highlightColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
          ),
          Offstage(
              offstage: state.makeCardModel.imageUrl == null,
              child: Padding(padding: EdgeInsets.only(top: 10))
          ),
          Offstage(
              offstage: state.makeCardModel.text == null,
              child: Text(
                state.makeCardModel.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16,color: Colors.black87),
              )
          ),
        ],
      ),
    ),
  );
}
