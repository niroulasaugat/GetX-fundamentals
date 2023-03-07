import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/model/opacitcontroller.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  final ListController favlist = Get.put(ListController());
  @override
  Widget build(BuildContext context) {
    print('fav screen');
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout))],
        centerTitle: true,
        title: Text('Fav Fruits',),
      ),

      body:
       ListView.builder(
        itemCount: favlist.favFruits.length,
        itemBuilder: (ctx, i){
          var item = favlist.favFruits;
          return Obx(() => 
           Card(
            child:
             ListTile(
              leading:
              Text(item[i].toString(), 
              style: TextStyle(color: Colors.black, fontSize: 30),),
              trailing: 
              Obx(() => 
               TextButton(child: Text('REMOVE PRODUCT'), onPressed: (){
              favlist.RemoveFruit(favlist.fruits[i].toString());
              },),
              ),
              
            
            )
           )
          
          );
        }),
      


    );
  }
}