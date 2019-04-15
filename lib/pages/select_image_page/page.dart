import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class LBSelectImagePage extends Page<LBSelectImageState, Map<String, dynamic>> {
  LBSelectImagePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<LBSelectImageState>(
                adapter: null,
                slots: <String, Dependent<LBSelectImageState>>{
                }),
            middleware: <Middleware<LBSelectImageState>>[
            ],);

}
