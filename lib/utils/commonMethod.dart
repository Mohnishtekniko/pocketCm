import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




extension DateTimeX on DateTime {
  bool isUnderage() =>
      (DateTime(DateTime.now().year, month, day).isAfter(DateTime.now())
          ? DateTime.now().year - year - 1
          : DateTime.now().year - year) <
      18;
}

RegExp emailExpression = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]{2}");
RegExp regex1 =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?\d)(?=.*?[!@#\$&*~]).{8,}$');

RegExp Dobregex=RegExp(r'^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\\d\\d$');
// RegExp dateRegExp = RegExp(r'^(0[1-9]|1[0-9]|2[0-9]|3[01])-/.-/.$');
RegExp dateRegExp = RegExp(r'^(19|20)\d{2}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$');


RegExp regex = RegExp(r'^\w*$');
RegExp aadhaarRegex = RegExp(r'^[0-9]{4}\s[0-9]{4}\s[0-9]{4}$');
//( )|
RegExp nameRegex = RegExp(r'^[A-Za-z ]*$');
RegExp addressReg = RegExp(r'^[A-Za-z \d]*$');
RegExp pinCodeReg = RegExp(r'^\d{6}');

RegExp mobileRegex = RegExp(r'^\d*$');
RegExp regMobile = RegExp(r'^[6-9]{1}\d{9}');

RegExp aadhaarRegex1 = RegExp(r'^\d{12}');

RegExp regAccount = RegExp(r'\d{9,18}');
RegExp regVehicle = RegExp(r'^[A-Z]{2}\s[0-9]{2}\s[A-Z]{2}\s[0-9]{4}$');
RegExp regDL = RegExp(
    r'^(([A-Z]{2}[0-9]{2})( )|([A-Z]{2}-[0-9]{2}))((19|20)[0-9][0-9])[0-9]{7}$');
RegExp regIFSC = RegExp(r"^[A-Z]{4}0[A-Z\d]{6}");


RegExp regPan = RegExp(r'[A-Z]{5}\d{4}[A-Z]{1}');

RegExp regUPI = RegExp('/[a-zA-Z0-9_]{3,}@[a-zA-Z]{3,}/');

final pattern = r'^[a-zA-Z0-9\s\.,!?;:]+(\s[a-zA-Z0-9\s\.,!?;:]+)*$';
final query = RegExp(pattern);

RegExp regPincode=RegExp('[1-9]{1}[0-9]{5}|[1-9]{1}[0-9]{3}\\s[0-9]{3}');

// String dateTimeFormat(String format, String dateTime) {
//   return DateFormat(format).format(DateTime.parse(dateTime));
// }

String countryFlag(String code) {
  return code.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
}

String capitalize(String string) {
  if (string == '') {
    throw ArgumentError("CapitalString: $string");
  }
  if (string.isEmpty) {
    return string;
  }
  return string[0].toUpperCase() + string.substring(1);
}

Future<void> navPush(
    {required BuildContext context, required Widget action}) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (ctx) => action),
  );
}

void navPushReplace({required BuildContext context, required Widget action}) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (ctx) => action),
  );
}

void navPushRemove({required BuildContext context, required Widget action}) {
  Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (ctx) => action), (route) => false);
}

void navPop({required BuildContext context}) {
  Navigator.pop(context);
}



Widget viewAllButton(
        {required BuildContext context,
        required double radius,
        required Widget action}) =>
    InkWell(
      onTap: () {
        navPush(context: context, action: action);
      },
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius), color: Colors.green),
        child: Text(
          'View All',
          style: TextStyle(fontSize: 11, color: Colors.white),
        ),
      ),
    );



Widget customTextFormField({
  required BuildContext,
  required String title,
  required final controllerr,
  double? size,
  int? maxLines,
  int? maxLength,
  TextInputType ? textInputType,
  RegExp ? textRegex,
  Icon ?icon ,
  String ? hintText,


}) {
  return  Padding(
    padding: const EdgeInsets.only(top: 8,bottom: 8),
    child: TextFormField(
      keyboardType: textInputType,
      controller: controllerr,

      maxLines: maxLines,
      maxLength: maxLength,


      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter $title';

        } else if (!textRegex!.hasMatch(value)) {


          return 'Please enter valid $title';

        }

        null;
      },


      decoration: InputDecoration(
          hintText:  hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: "",
          isDense: true,
          filled: false,
          counterText: "",
          suffixIcon: icon,
          fillColor:Colors.white,
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                color: Colors.grey.shade200),

          ),
          enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                color: Colors.grey),

          ),
          focusedBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.grey,

            ),

          ),

          errorBorder: OutlineInputBorder(

              borderSide: BorderSide(
                  color: Colors.grey),

              borderRadius: BorderRadius.all(Radius.circular(20))
          ),

          border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                color: Colors.grey),
          )
      ),

    ),
  );



}










// String timeAgo(int time) {
//   DateTime notificationDate = DateTime.fromMillisecondsSinceEpoch(time);
//   final date2 = DateTime.now();
//   final difference = date2.difference(notificationDate);
//   log('Date==>>  $notificationDate');
//   log('Date==>>  ${difference.inDays}');
//   if (difference.inDays >= 2) {
//     return dateTimeFormat('dd MMM, yyyy', '$notificationDate');
//   }
//   /*if (difference.inDays > 15) {
//       return '2 Weeks ago';
//     } else if ((difference.inDays / 7).floor() >= 1) {
//       return 'Last week';
//     } else if (difference.inDays >= 2) {
//       return '${difference.inDays} days ago';
//     }*/
//   else if (difference.inDays >= 1) {
//     return 'Yesterday';
//   } else if (difference.inHours >= 2) {
//     return 'Today';
//   } else if (difference.inHours >= 1) {
//     return '1 hour ago';
//   } else if (difference.inMinutes >= 2) {
//     return '${difference.inMinutes} minutes ago';
//   } else if (difference.inMinutes >= 1) {
//     return '1 minute ago';
//   } else if (difference.inSeconds >= 3) {
//     return '${difference.inSeconds} seconds ago';
//   } else {
//     return 'Just now';
//   }
// }

// void commonAlert(BuildContext context, String message) {
//   showCupertinoDialog(
//       context: context,
//       builder: (context) {
//         return Theme(
//           data: ThemeData.light(),
//           child: Builder(builder: (context) {
//             return CupertinoAlertDialog(
//               title: Text(
//                 appName,
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//               content: Container(
//                 padding: EdgeInsets.all(15),
//                 child: Text(
//                   message,
//                   style: TextStyle(color: Colors.black, fontSize: 14),
//                 ),
//               ),
//               actions: [
//                 CupertinoDialogAction(
//                   isDefaultAction: true,
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: Text(
//                     'ok',
//                     style: TextStyle(color: Colors.black, fontSize: 16),
//                   ),
//                 )
//               ],
//             );
//           }),
//         );
//       });
// }

// void favorite(
//     {required BuildContext context,
//     required String id,
//     required String vId,
//     required bool isAdd}) async {
//   var pro = Provider.of<ProductProvider>(context, listen: false);
//   var authPro = Provider.of<AuthProvider>(context, listen: false);
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   var body = {
//     'product_id': id,
//     'product_variant_id': vId,
//     'user_id': prefs.getString(userIdKey).toString(),
//   };
//
//   log('Data to add fav ===>>   $body');
//   if (authPro.isLogin) {
//     if (isAdd) {
//       pro.removeWishList(context: context, body: body);
//     } else {
//       pro.addWishList(context: context, body: body);
//     }
//   } else {
//     navPush(
//         context: context,
//         action: LoginScreen(
//           isBack: true,
//           code: '',
//           comefrom: '1',
//         ));
//   }
// }

String amountFormat(String price) {
  String priceInText = "";
  int counter = 0;
  for (int i = (price.length - 1); i >= 0; i--) {
    counter++;
    String str = price[i];
    if ((counter % 3) != 0 && i != 0) {
      priceInText = "$str$priceInText";
    } else if (i == 0) {
      priceInText = "$str$priceInText";
    } else {
      priceInText = ",$str$priceInText";
    }
  }
  return priceInText.trim();
}
//
// String getYoutubeThumbnail(String videoUrl) {
//   // log('message--------->>>>>    $videoUrl');
//   final Uri uri = Uri.tryParse(videoUrl)!;
//   if (uri == null) {
//     return '';
//   }
//   String id = YoutubePlayer.convertUrlToId(videoUrl)!;
//   String thumb = 'https://img.youtube.com/vi/$id/0.jpg';
//   // log('ThumbnailFound ------->>>>>  $thumb');
//
//   return thumb;
// }

String returnString(value) {
  return (value == null) ? '' : value.toString();
}

String intToTimeLeft(int value) {
  int h, m, s;

  h = value ~/ 3600;

  m = ((value - h * 3600)) ~/ 60;

  s = value - (h * 3600) - (m * 60);

  String hourLeft = h.toString().length < 2 ? "0$h" : h.toString();

  String minuteLeft = m.toString().length < 2 ? "0$m" : m.toString();

  String secondsLeft = s.toString().length < 2 ? "0$s" : s.toString();

  String result = "$hourLeft:$minuteLeft:$secondsLeft";

  return result;
}

String getTimeString(int value) {
  final int hour = value ~/ 60;
  final int minutes = value % 60;
  return '${hour.toString().padLeft(2, "0")}Hr. ${minutes.toString().padLeft(2, "0")} Min';
}

Widget point(str, color) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\u2022',
          style: TextStyle(
            fontSize: 24,
            height: 1.1,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
            child: Text(
              str,
              textAlign: TextAlign.left,
              softWrap: true,
              style: TextStyle(
                color: color.withOpacity(0.6),
                height: 1.55,
              ),
            ),
          ),
        ),
      ],
    );


//  toastMessage(String message) {
//   Fluttertoast.showToast(
//       msg: message,
//       backgroundColor: Colors.green,
//       toastLength: Toast.LENGTH_SHORT);
// }



// Widget textContainer(BuildContext context,
//     {required String title,
//     required TextEditingController controller,
//     required double fSize,
//     required IconData icon,
//     required bool isIcon,
//     List<TextInputFormatter>? inputFormat,
//     required TextInputType type,
//     required bool isRead,
//     required bool isSuffix,
//     required VoidCallback onTap}) {
//   return Container(
//     padding: EdgeInsets.all(10),
//     child: Row(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         isIcon && !isSuffix
//             ? Icon(
//                 icon,
//                 size: 30,
//                 color: primaryDark,
//               )
//             : SizedBox(
//                 height: 0,
//                 width: 0,
//               ),
//         SizedBox(
//           width: 5,
//         ),
//         Expanded(
//           child: Container(
//             padding: EdgeInsets.all(2),
//             child: TextFormField(
//               readOnly: isRead,
//               onTap: onTap,
//               keyboardType: TextInputType.emailAddress,
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               inputFormatters: inputFormat!,
//               controller: controller,
//               decoration: InputDecoration(
//                 labelText: title,
//                 labelStyle: TextStyle(fontSize: fSize),
//                 /*suffix: isSuffix == true
//                     ? Icon(
//                         icon,
//                         size: 30,
//                         color: AppColors.drawerColor,
//                       )
//                     : SizedBox(
//                         height: 0,
//                         width: 0,
//                       ),*/
//                 contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                 errorBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(color: Colors.redAccent),
//                 ),
//                 focusedErrorBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(color: Colors.redAccent),
//                 ),
//               ),
//               validator: (value) => (value!.isEmpty || value == '0')
//                   ? 'Please select $title'
//                   : null,
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Widget textContainerSearch(
//   BuildContext context, {
//   required Widget child,
//   required IconData icon,
//   required bool isIcon,
// }) {
//   return Container(
//     padding: EdgeInsets.all(10),
//     child: Row(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         isIcon
//             ? Icon(
//                 icon,
//                 size: 30,
//                 color: primaryDark,
//               )
//             : SizedBox(
//                 height: 0,
//                 width: 0,
//               ),
//         SizedBox(
//           width: 5,
//         ),
//         Expanded(
//           child: child,
//         ),
//       ],
//     ),
//   );
// }
