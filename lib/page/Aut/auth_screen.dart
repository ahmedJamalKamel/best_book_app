import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/helpers/helpers.dart';
import 'package:best_book_app/widget/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with Helpers {
  late  TextEditingController _emailtextEditingController;
  late  TextEditingController _passtextEditingController;
  @override
  void initState() {
    _emailtextEditingController=TextEditingController();
    _passtextEditingController=TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailtextEditingController.dispose();
    _passtextEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 230.h,),
            Align(alignment: AlignmentDirectional.center,child: Text("Before you start",style: TextStyle(fontWeight: FontWeight.bold,color: Text1,fontSize:32.sp ),)),
            SizedBox(height: 20.h,),
            Text("Create an account to read our books, create your collection and more...",style: TextStyle(color: Text2,fontSize:14.sp ),textAlign: TextAlign.center,),
            SizedBox(height: 40.h,),
            const Text("Enter Email"),
            SizedBox(height: 8.h,),
            AppTextField(textEditingController: _emailtextEditingController, hint: "email", prefixIcon: Icons.email,textInputType: TextInputType.emailAddress,),
            SizedBox(height: 24.h,),
            const Text("Enter Password"),
            SizedBox(height: 8.h,),
            AppTextField(textEditingController: _passtextEditingController, hint: "password", prefixIcon: Icons.lock,se: true,),
            SizedBox(height: 8.h,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(MediaQuery.of(context).size.width,40.h)),
                onPressed: () {

            }, child: Text("SigUP")),
            SizedBox(height: 8.h,),
             InkWell(onTap: (){
               Navigator.of(context).pushNamed("/login_screen");
             },child: const Align(alignment: AlignmentDirectional.center,child: Text("Already have an account? Login now")))
          ],
        ),
      ),
    );
  }
  bool checkData() {
    if (
    _passtextEditingController.text.isNotEmpty &&
        _emailtextEditingController.text.isNotEmpty ) {
      return true;
    }
    //SNACKBAR
    showSnackBar(context: context, message: 'Enter required data!',error: true);
    return false;
  }
}
