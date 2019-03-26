import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class LBPreviewPage extends Page<LBPreviewState, Map<String, dynamic>> {
  LBPreviewPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<LBPreviewState>(
                adapter: null,
                slots: <String, Dependent<LBPreviewState>>{
                }),
            middlewares: <Middleware<LBPreviewState>>[
            ],);

}
