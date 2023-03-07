import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/opacitcontroller.dart';
import '../model/getx.dart';

class OpacityScreen extends StatefulWidget {
  const OpacityScreen({super.key});

  @override
  State<OpacityScreen> createState() => _OpacityScreenState();
}


class _OpacityScreenState extends State<OpacityScreen> {
  
  final OpacityController newOpacity = Get.put(OpacityController());
  final SwitchController newSwitch = Get.put(SwitchController());

 
  @override
  Widget build(BuildContext context) {
    print('Hello WORLD');
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => 
              Container(
                // margin: EdgeInsets.only(top: 50),
                height: 300,
                width: 300,
                color: Colors.red.withOpacity(newOpacity.opacity.value),
              ),
              ),
              Obx(() => 
              Slider(value: newOpacity.opacity.value,
               onChanged: (data){
                newOpacity.onTapOpacity(data);
              })
              ),

              Divider(color: Colors.green, thickness: 0.8,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Notification'),
                    Obx(() => 
                    Switch(value: newSwitch.initialSwitch.value, onChanged: (val){
                      newSwitch.onchangedSwitch(val);
                      
                    })
                )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}