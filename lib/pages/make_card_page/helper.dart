import '../../models/make_card_model.dart';

LBMakeCardModel generateMakeCardModel(String text, List<String> images, int selectIndex) {
  LBMakeCardModel makeCardModel = LBMakeCardModel();
  makeCardModel.imageUrl = (images != null && images.length > 0) ? images[selectIndex] : null;
  makeCardModel.text = text;
  return makeCardModel;
}
