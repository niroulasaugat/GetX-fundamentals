
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
class ImageController extends GetxController{

  RxString ImagePath = ''.obs;
  
  

 Future getImage()async{
  final ImagePicker _imagePicker = ImagePicker();
  final newImage = await _imagePicker.pickImage(source: ImageSource.gallery);
  print('hello');
  print(newImage.toString());
  if(newImage != null ){
    ImagePath.value = newImage.path.toString();

  }

    
  }
}