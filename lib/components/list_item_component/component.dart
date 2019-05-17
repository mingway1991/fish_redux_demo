import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class LBListItemComponent extends Component<LBListItemState> {
  LBListItemComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<LBListItemState>(
                adapter: null,
                slots: <String, Dependent<LBListItemState>>{
                }),);

}
