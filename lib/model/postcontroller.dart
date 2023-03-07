import 'dart:developer';

import 'package:get/get.dart';
import 'package:getx/services/postapi.dart';

import '../services/service.dart';
class AppController extends GetxController{

  // getPost = PostModel()
  
  var getPosts =<PostModel>[].obs;
  Services newService = Services();


  getpost()async{
   var result = await newService.getallPost();
   getPosts.assignAll(result as Iterable<PostModel>);


  }

}