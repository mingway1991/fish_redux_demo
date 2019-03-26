import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';
import 'normal_card_component/component.dart';
import 'textoverimage_card_component/component.dart';

class LBMakeCardPage extends Page<LBMakeCardState, Map<String, dynamic>> {
  LBMakeCardPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<LBMakeCardState>(
                adapter: null,
                slots: <String, Dependent<LBMakeCardState>>{
                  'normal_card': LBNormalCardConnector() + LBNormalCardComponent(),
                  'textOverImage_card': LBTextOverImageCardConnector() + LBTextOverImageCardComponent()
                }),
            middlewares: <Middleware<LBMakeCardState>>[
            ],);

}
