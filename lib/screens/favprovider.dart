import 'package:flutter/material.dart';
import 'package:getx/model/provider.dart';
import 'package:provider/provider.dart';

class FavProviderScreen extends StatefulWidget {
  const FavProviderScreen({super.key});

  @override
  State<FavProviderScreen> createState() => _FavProviderScreenState();
}

class _FavProviderScreenState extends State<FavProviderScreen> {
  

  // List<String> SelectedItem = [];
  @override
  Widget build(BuildContext context) {
    final newProvider = Provider.of<FavouriteProvider>(context, listen: false);
    print('build new item');
    return Scaffold(
      appBar: AppBar(title: Text('Fav Data'),centerTitle: true,),

      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index){
          final item = newProvider.SelectedItem;
          return Card(
            child: Consumer<FavouriteProvider>(
              builder: (context, value, child) => 
               ListTile(
                leading: Text('List : ' + index.toString(), 
                         style: TextStyle(color: Colors.black, fontSize: 30)),
                trailing: IconButton(icon: value.SelectedItem.contains(index)? Icon(Icons.favorite, size: 35, color: Colors.red,): Icon(Icons.favorite_border, size: 35,),
                 onPressed: (){
                  if(item.contains(index)){
                    // newProvider.addFavItem(index);
                    value.removeFavItem(index);
                    
                  }
                  else{
                    value.addFavItem(index);
                  }
                 
                 },),
            
                 
                 ),
            ),
          );
        }),
    );
  }
}