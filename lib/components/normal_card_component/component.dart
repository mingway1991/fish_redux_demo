import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class LBNormalCardComponent extends Component<LBNormalCardState> {
  LBNormalCardComponent()
      : super(
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<LBNormalCardState>(
                adapter: null,
                slots: <String, Dependent<LBNormalCardState>>{
                }),);

}
