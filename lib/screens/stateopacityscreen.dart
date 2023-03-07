import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/model/getx.dart';
import 'package:provider/provider.dart';
import '../model/provider.dart';

class StateOpacityScreen extends StatefulWidget {
  const StateOpacityScreen({super.key});

  @override
  State<StateOpacityScreen> createState() => _StateOpacityScreenState();
}

class _StateOpacityScreenState extends State<StateOpacityScreen> {
  // final stateController rangeController = Get.put(stateController());
  // double _opacity = 0.6;
  @override
  Widget build(BuildContext context) {
    final newData = Provider.of<OpacityRange>(context,listen: false);
    // print(rangeController.colorrange);
    print('newbuild');
    return Scaffold(
      
      body: Consumer<OpacityRange>(
        
        builder: (context, value, child) => 
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
             Container(
                  // margin: EdgeInsets.only(top: 50),
                  height: 300,
                  width: 300,
                  color: Colors.red.withOpacity(value.progress),
                ),
                
              
                Slider(
                  inactiveColor: Colors.grey,
                  activeColor: Colors.yellow,
                  value: newData.progress,
                 onChanged: (data){
                  value.newProgress(data);
                 })
                
          ],
        ),
      ),
    );
  }
}