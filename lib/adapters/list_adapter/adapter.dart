import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import '../../pages/make_card_page/state.dart';
import '../../components/list_item_component/component.dart';
import '../../components/list_item_component/state.dart';

class LBListAdapter extends DynamicFlowAdapter<LBMakeCardState> {
  LBListAdapter()
      : super(
          pool: <String, Component<Object>>{
            'listItem': LBListItemComponent(),
          },
          connector: _LBListConnector(),
          reducer: buildReducer(),
        );
}

class _LBListConnector extends ConnOp<LBMakeCardState, List<ItemBean>> {
  @override
  List<ItemBean> get(LBMakeCardState state) {
    if (state.list?.isNotEmpty == true) {
      return state.list
          .map<ItemBean>((LBListItemState data) => ItemBean('listItem', data))
          .toList(growable: true);
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(LBMakeCardState state, List<ItemBean> items) {
    if (items?.isNotEmpty == true) {
      state.list = List<LBListItemState>.from(
          items.map<LBMakeCardState>((ItemBean bean) => bean.data).toList());
    } else {
      state.list = <LBListItemState>[];
    }
  }
}
