import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:getx/services/postapi.dart';

import './service.dart';
import 'package:http/http.dart'as http;

class Services{

  Future<List<PostModel>?> getallPost()async{
    var response = await  http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    try{

       if(response.statusCode == 200){
      // var jsonResponse = jsonDecode(response.body);
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<PostModel>((json) => PostModel.fromJson(json)).toList();

    }
    else{
      return null;
    }


    }
     on TimeoutException catch(_){
      print('Time Out Exception');
    }

   
  }
}