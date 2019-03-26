import 'package:flutter/material.dart';
import 'make_card_page/page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(home: LBMakeCardPage().buildPage(<String, dynamic>{
        'text':'测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds'
            '测试文本，啊啊啊啊啊啊啊啊啊啊啊啊啊啊\neddcscsdcsdc\ndscdscsccdsfcsdcds',
        'images':[
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553505386597&di=24641c5d776ec047fc86efb6f2392f45&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201401%2F21%2F155537y0e0377jrjbowq7b.jpg',
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553505386597&di=c5170ab8fcd05caacc79fff9cedd2164&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F10dfa9ec8a136327f94c71c69b8fa0ec09fac7a6.jpg',
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553505386597&di=ed13df78c4736cfb35c856ecfcb44a9d&imgtype=0&src=http%3A%2F%2Fpic16.nipic.com%2F20110820%2F8169360_083153346000_2.jpg'
        ]
      }));
}
