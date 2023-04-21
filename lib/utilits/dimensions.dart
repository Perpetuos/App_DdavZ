import 'package:get/get.dart';

class Dimensions {
  static double screenHight = Get.context!.height;
  static double screenWidth = Get.context!.width;
// dimensões do aplicativo, ele vai seguir esse calculo para deixar o mesmo tamanho em todos os aparelhos
// o calculo para saber o tamanho de cada item, é dividir o valor da altura da tela que é 844 pelo tamanho do item
  static double pageView = screenHight / 2.91;
  static double pageViewContainer = screenHight / 1.68;
  static double pageViewTextContainer = screenHight / 7.03;

  static double pageStartContainer = screenHight / 2.11;

  static double height10 = screenHight / 84.4;
  static double height15 = screenHight / 56.27;
  static double height20 = screenHight / 42.2;
  static double heigth30 = screenHight / 28.13;
  static double heigth40 = screenHight / 21.10;
  static double heigth50 = screenHight / 16.88;
  static double heigth70 = screenHight / 12.05;
  static double heigth100 = screenHight / 8.44;
  static double heigth250 = screenHight / 3.37;
  static double heigth400 = screenHight / 2.11;

  static double width5 = screenHight / 168.8;
  static double width10 = screenHight / 84.4;
  static double width15 = screenHight / 56.27;
  static double width20 = screenHight / 42.2;
  static double width30 = screenHight / 28.13;
  static double width90 = screenHight / 9.37;
  static double width210 = screenHight / 4.01;

//fonte size
  static double font14 = screenHight / 60.28;
  static double font18 = screenHight / 46.88;
  static double font20 = screenHight / 42.2;
  static double font26 = screenHight / 32.46;
  static double font44 = screenHight / 19.18;

  //radius
  static double radius5 = screenHight / 168.8;
  static double radius15 = screenHight / 56.27;
  static double radius20 = screenHight / 42.2;
  static double radius30 = screenHight / 28.3;
  static double radius40 = screenHight / 21.10;

  //icon Size
  static double iconSize16 = screenHight / 52.75;
  static double iconSize24 = screenHight / 35.37;
  static double iconSize28 = screenHight / 30.14;

  //list view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;

  //popular detail
  static double popularImgSize = screenHight / 2.41;
}
