import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'view.dart';
import 'state.dart';

class LBTextOverImageCardComponent extends Component<LBTextOverImageCardState> {
  LBTextOverImageCardComponent()
      : super(
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<LBTextOverImageCardState>(
                adapter: null,
                slots: <String, Dependent<LBTextOverImageCardState>>{
                }),);

}
