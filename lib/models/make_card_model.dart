
//制作卡片模式
enum LBMakeCardMode {
  normal, //上图下文样式
  textOverImage, //文字浮于图片上方
}

class LBMakeCardModel {
  LBMakeCardMode mode = LBMakeCardMode.normal;
  String text;
  String imageUrl;
}