import 'package:best_book_app/Theme/colors.dart';
import 'package:best_book_app/prefs/shared_pref_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class GeneralTap extends StatefulWidget {
  const GeneralTap({Key? key}) : super(key: key);

  @override
  _GeneralTapState createState() => _GeneralTapState();
}

class _GeneralTapState extends State<GeneralTap> {
  late TextEditingController _email;
  late TextEditingController _name;

  @override
  void initState() {
    name=SharedPrefController().name;
    email=SharedPrefController().email;
    _email=TextEditingController();
    _name=TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    _email.dispose();
    _name.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  bool edit=true;
  late String name;
  late String email;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height/2,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
        children: [
          Text(
            "General Information",
            style: TextStyle(
                color: Text1, fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            "My name",
            style: TextStyle(fontSize: 12.sp, color: Text2),
          ),
          SizedBox(
            height: 8.h,
          ),
          TextField(
            controller: _name..text=name,
            readOnly: edit,
              decoration:edit?const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ): const InputDecoration(
              )
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            "Email",
            style: TextStyle(fontSize: 12.sp, color: Text2),
          ),
          SizedBox(
            height: 8.h,
          ),
          TextField(
            readOnly: edit,
            controller: _email..text=email,
            decoration:edit?const InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ): const InputDecoration(
            )
          ),
          SizedBox(
            height: 32.h,
          ),
          ElevatedButton(
            onPressed: ()
            {
           setState(() {
             if(!edit)
             {
               SharedPrefController().setUserName(name: _name.text.toString());
               SharedPrefController().setUserEmail(email: _email.text.toString());
               email=SharedPrefController().email;
               name=SharedPrefController().name;
               edit=true;
             }
             else{
               edit=false;
             }
           });
            },
            child: Text(
              edit?"Edit":"Done",
              style: TextStyle(color: Text1),
            ),
            style: ElevatedButton.styleFrom(
              maximumSize: Size(double.infinity, 52.h),
              primary: Colors.white54,
              elevation: 0,
              shape:  RoundedRectangleBorder(side: BorderSide(width: .2.w,color: Colors.grey),borderRadius: BorderRadius.all(Radius.circular(4))),
            ),
          )
        ],
      ),
    );
  }


}
