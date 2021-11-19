import 'dart:io';
import 'package:best_book_app/get/topic_getx_controller.dart';
import 'package:best_book_app/helpers/helpers.dart';
import 'package:best_book_app/models/topics.dart';
import 'package:best_book_app/widget/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class CreateTopic extends StatefulWidget {
  const CreateTopic({Key? key}) : super(key: key);

  @override
  _CreateTopicState createState() => _CreateTopicState();
}

class _CreateTopicState extends State<CreateTopic>
    with Helpers {
  ImagePicker _imagePicker = ImagePicker();
  XFile? _pickedFile;
  // final ContactGetxController _contactGetxController = Get.find<ContactGetxController>();

  late TextEditingController _nameTextController;
  late TextEditingController _numberTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameTextController = TextEditingController();
    _numberTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameTextController.dispose();
    _numberTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Topic'),
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Text(
            'Enter new contact details',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 15),
          AppTextField(
            textEditingController: _nameTextController,
            hint: 'Name',
            prefixIcon: Icons.person,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async => await _pickImage(),
            child: const Text('GetImage'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 50),
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () async => await performCreate(),
            child: const Text('SAVE'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 50),
            ),
          )
        ],
      ),
    );
  }

  Future<void> performCreate() async {
    if(checkData()){
      print("Createahmed");
      await create();
      print("endCreateahmed");
    }
  }

  bool checkData() {
    if (_nameTextController.text.isNotEmpty &&
        _pickedFile!=null) {
      return true;
    }
    //SNACKBAR
    showSnackBar(context: context, message: 'Enter required data!',error: true);
    return false;
  }

  Future<void> create() async {
    //bool created = await Provider.of<ContactProvider>(context, listen: false).create(contact);
    bool created = await TopicGetxController.to.createContact(topic);
    print(created.toString()+"Createahmed");
    if (created) clear();
    String message = created ? 'Created successfully' : 'Create failed';
    showSnackBar(context: context, message: message, error: !created);
  }

  Topics get topic {
    Topics c = Topics();
    c.name = _nameTextController.text;
    c.image =_pickedFile!.path;
    return c;
  }

  void clear() {
    _nameTextController.text = '';
    _pickedFile = null;
  }
  Future<void> _pickImage() async {
    XFile? imageFile = await _imagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);
    if (imageFile != null) {
      setState(() {
        _pickedFile = imageFile;
      });
    }
  }
}
