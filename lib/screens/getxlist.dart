import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/model/opacitcontroller.dart';
import 'package:getx/screens/favscreen.dart';
import '../model/opacitcontroller.dart';


class GetXList extends StatefulWidget {
  const GetXList({super.key});

  @override
  State<GetXList> createState() => _GetXListState();
}

class _GetXListState extends State<GetXList> {
  final ListController newList = Get.put(ListController());

  // List<String> fruits = ['Mango', 'Orange', 'Banana', 'pineapple', 'Lemon', 'strawberry'];
  // List<String> favFruits = [];
  @override
  Widget build(BuildContext context) {
    print('Hello');
    return Scaffold(
  
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>FavScreen())));
        }, icon: Icon(Icons.favorite))],
        centerTitle: true,
        title: Text('Fruit List',),
      ),
    body: ListView.builder(
      itemCount: newList.fruits.length,
      itemBuilder: (context, index){
        return Obx(() => 
         Card(
          child: ListTile(
            leading: Text(newList.fruits[index].toString(), style: TextStyle(color: Colors.black, fontSize: 30),),
            trailing: Obx(() => 
             IconButton(icon: newList.favFruits.contains(newList.fruits[index])? Icon(Icons.favorite, color: Colors.red,):Icon(Icons.favorite_border_outlined),
             onPressed: (){
             if(newList.favFruits.contains(newList.fruits[index].toString())){
              newList.RemoveFruit(newList.fruits[index].toString());
             }
             else{
              newList.addFavourite(newList.fruits[index].toString());

             }
             
            },),
            )
          ),
        ));
      }),
    );

  }
}