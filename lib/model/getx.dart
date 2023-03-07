import 'package:get/get.dart';

// class Countercontroller extends GetxController{

//   RxInt counter = 100.obs;
//   // print(counter);

//   // ignore: non_constant_identifier_names
//    Increment(){
//  final newvalue = counter.value++;
//  print(newvalue);
 
    
//   }

// }

class counterController extends GetxController{
  RxInt counter = 1.obs;

  increment(){
    counter.value++;
  }
}

class stateController extends GetxController{

  RxDouble colorrange = 0.4.obs;

  ChnageRange(double val){
    colorrange.value = val;
    print(colorrange.value);
  }
}

