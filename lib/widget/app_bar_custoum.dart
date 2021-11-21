import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class AppBarCustoum extends StatelessWidget {
  const AppBarCustoum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:56.h ),
      child: Row(
        children: [
          Expanded(
            child: Container(
                alignment: AlignmentDirectional.topStart,
              //  margin: EdgeInsets.only(left: 24.w),
                child: SvgPicture.asset("image/BookLover.svg")),
          ),
          InkWell(
            onTap: ()
            {
              Navigator.of(context).pushNamed("/search_book_screen");
            },
            child: Container(
              margin: EdgeInsets.only(right: 12.w),
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: const Icon(Icons.search),
            ),
          ),
          // Container(
          //     padding: EdgeInsets.all(12.w),
          //    // margin: EdgeInsets.only(right: 24.w),
          //     height: 40.h,
          //     width: 40.w,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(40),
          //       color: Colors.white,
          //       boxShadow: const [
          //         BoxShadow(
          //           color: Colors.grey,
          //           offset: Offset(0.0, 1.0), //(x,y)
          //           blurRadius: 6.0,
          //         ),
          //       ],
          //     ),
          //     child:  SvgPicture.asset("image/menu.svg")),
        ],
      ),
    );
  }
}