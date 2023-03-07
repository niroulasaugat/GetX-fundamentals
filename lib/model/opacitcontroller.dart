import 'package:get/get.dart';
class OpacityController extends GetxController{
  RxDouble opacity = 0.4.obs;

  onTapOpacity(double val){
    opacity.value = val;

    print(opacity.value);

  }
}

class SwitchController extends GetxController{
  RxBool initialSwitch = false.obs;

  onchangedSwitch(bool val){
    initialSwitch.value = val;
    print(initialSwitch.value);
  }
}

class ListController extends GetxController{

RxList<String> fruits = ['Mango', 'Orange', 'Banana', 'pineapple', 'Lemon', 'strawberry'].obs;
RxList<dynamic> favFruits = [].obs;

addFavourite(String val){
  favFruits.add(val);
  print(favFruits);

}
RemoveFruit(String val){
  favFruits.remove(val);
  print(favFruits);
}
}