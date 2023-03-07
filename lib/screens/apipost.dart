import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/postcontroller.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  final AppController appControl = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appControl.getPosts.length.toString()),),
      body: ListView.builder(
      itemCount: appControl.getPosts.length,
      
      itemBuilder: (context, i){
        var item = appControl.getPosts[i];
        return Card(
          child: ListTile(
            leading: Text(item.title!),
          ),
          
        );
        
      }
      
      )
    );
    
    
  }
}