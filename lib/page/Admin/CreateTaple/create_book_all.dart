import 'package:best_book_app/get/book_all_getx_controller.dart';
import 'package:best_book_app/helpers/helpers.dart';
import 'package:best_book_app/models/book_all.dart';
import 'package:best_book_app/widget/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class CreateBookAll extends StatefulWidget {
  const CreateBookAll({Key? key}) : super(key: key);

  @override
  _CreateBookAllState createState() => _CreateBookAllState();
}

class _CreateBookAllState extends State<CreateBookAll> with Helpers {
  ImagePicker _imagePicker = ImagePicker();
  XFile? _pickedFile;

  late TextEditingController _nameTextController;
 // late TextEditingController _numberTextController;
  late TextEditingController _nameAuthorTextController;
  late TextEditingController _nameTopicTextController;
  late TextEditingController _descriptionTextController;
  late TextEditingController _pageNumberTextController;
  late TextEditingController _dateCreatedTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameTextController = TextEditingController();
   // _numberTextController = TextEditingController();
    _nameAuthorTextController = TextEditingController();
    _descriptionTextController = TextEditingController();
    _pageNumberTextController = TextEditingController();
    _dateCreatedTextController = TextEditingController();
    _nameTopicTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameTextController.dispose();
    //_numberTextController.dispose();
    _nameAuthorTextController.dispose();
    _descriptionTextController.dispose();
    _pageNumberTextController.dispose();
    _dateCreatedTextController.dispose();
    _nameTopicTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Author'),
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
            prefixIcon: Icons.book,
          ),
          const SizedBox(height: 10),
          AppTextField(
            textEditingController: _nameAuthorTextController,
            hint: 'nameAuthor',
            prefixIcon: Icons.person,
          ),
          const SizedBox(height: 10),
          AppTextField(
            textEditingController: _descriptionTextController,
            hint: 'description',
            prefixIcon: Icons.note,
          ),
          const SizedBox(height: 10),
          AppTextField(
            textEditingController: _pageNumberTextController,
            hint: 'pageNumber',
            prefixIcon: Icons.pages,
          ),
          const SizedBox(height: 10),
          AppTextField(
            textEditingController: _nameTopicTextController,
            hint: 'nameTopic',
            prefixIcon: Icons.pages,
          ),
          const SizedBox(height: 10),
          AppTextField(
            textEditingController: _dateCreatedTextController,
            hint: 'dateCreated',
            prefixIcon: Icons.date_range,
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
    if (_nameTextController.text.isNotEmpty &&_nameTextController.text.isNotEmpty &&
    _nameAuthorTextController.text.isNotEmpty &&
    _descriptionTextController.text.isNotEmpty &&
    _pageNumberTextController.text.isNotEmpty &&
    _dateCreatedTextController.text.isNotEmpty &&
    _nameTopicTextController.text.isNotEmpty &&
        _pickedFile!=null) {
      return true;
    }
    //SNACKBAR
    showSnackBar(context: context, message: 'Enter required data!',error: true);
    return false;
  }

  Future<void> create() async {
    //bool created = await Provider.of<ContactProvider>(context, listen: false).create(contact);
    bool created = await BookAllGetxController.to.createContact(topic);
    print(created.toString()+"Createahmed");
    if (created) clear();
    String message = created ? 'Created successfully' : 'Create failed';
    showSnackBar(context: context, message: message, error: !created);
  }

  BookAll get topic {
    BookAll c = BookAll();
    c.name = _nameTextController.text;
    c.nameAuthor=_nameAuthorTextController.text;
    c.nameTopic=_nameTopicTextController.text;
    c.description=_descriptionTextController.text;
    c.dateCreated=_dateCreatedTextController.text;
    c.pageNumber=_pageNumberTextController.text;
    c.image =_pickedFile!.path;
    return c;
  }

  void clear() {
    _nameTextController.text = '';
    _nameAuthorTextController.text = '';
    _nameTopicTextController.text = '';
    _descriptionTextController.text = '';
    _dateCreatedTextController.text = '';
    _pageNumberTextController.text = '';
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
