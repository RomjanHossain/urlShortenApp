import 'package:flutter/rendering.dart';

//Copy this CustomPainter code to the Bottom of the File
class TermsAndConditionPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.06576562, 0);
    path_0.cubicTo(size.width * 0.02943359, 0, 0, size.height * 0.02943359, 0,
        size.height * 0.06576562);
    path_0.lineTo(0, size.height * 0.1810078);
    path_0.lineTo(size.width * 0.1315234, size.height * 0.1810078);
    path_0.lineTo(size.width * 0.1315234, size.height * 0.06576562);
    path_0.cubicTo(size.width * 0.1315234, size.height * 0.02943359,
        size.width * 0.1020742, 0, size.width * 0.06576562, 0);
    path_0.close();
    path_0.moveTo(size.width * 0.06576562, 0);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffedd4c2).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.8004922, 0);
    path_1.lineTo(size.width * 0.06575000, 0);
    path_1.cubicTo(
        size.width * 0.1020820,
        0,
        size.width * 0.1315156,
        size.height * 0.02944141,
        size.width * 0.1315156,
        size.height * 0.06576562);
    path_1.lineTo(size.width * 0.1315156, size.height);
    path_1.lineTo(size.width * 0.8662559, size.height);
    path_1.lineTo(size.width * 0.8662559, size.height * 0.06576562);
    path_1.cubicTo(size.width * 0.8662559, size.height * 0.02944141,
        size.width * 0.8367910, 0, size.width * 0.8004922, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.8004922, 0);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffffefe4).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.1315156, size.height * 0.9609375);
    path_2.lineTo(size.width * 0.8662559, size.height * 0.9609375);
    path_2.lineTo(size.width * 0.8662559, size.height);
    path_2.lineTo(size.width * 0.1315156, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.1315156, size.height * 0.9609375);

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffedd4c2).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.8004922, 0);
    path_3.lineTo(size.width * 0.06575000, 0);
    path_3.cubicTo(
        size.width * 0.09256641,
        0,
        size.width * 0.1156152,
        size.height * 0.01605273,
        size.width * 0.1258535,
        size.height * 0.03906250);
    path_3.lineTo(size.width * 0.8004922, size.height * 0.03906250);
    path_3.cubicTo(
        size.width * 0.8367930,
        size.height * 0.03906250,
        size.width * 0.8662559,
        size.height * 0.06850391,
        size.width * 0.8662559,
        size.height * 0.1048281);
    path_3.lineTo(size.width * 0.8662559, size.height * 0.06576562);
    path_3.cubicTo(size.width * 0.8662559, size.height * 0.02944141,
        size.width * 0.8367910, 0, size.width * 0.8004922, 0);
    path_3.close();
    path_3.moveTo(size.width * 0.8004922, 0);

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xfffff7f2).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width, size.height * 0.8886406);
    path_4.lineTo(size.width * 0.9115762, size.height * 0.8886406);
    path_4.lineTo(size.width * 0.9115762, size.height * 0.2752461);
    path_4.lineTo(size.width, size.height * 0.2752461);
    path_4.close();
    path_4.moveTo(size.width, size.height * 0.8886406);

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xffff8354).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width, size.height * 0.9114297);
    path_5.lineTo(size.width * 0.9115762, size.height * 0.9114297);
    path_5.lineTo(size.width * 0.9115762, size.height * 0.8886484);
    path_5.lineTo(size.width, size.height * 0.8886484);
    path_5.close();
    path_5.moveTo(size.width, size.height * 0.9114297);

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xffffefe4).withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.9115762, size.height * 0.9114219);
    path_6.lineTo(size.width, size.height * 0.9114219);
    path_6.lineTo(size.width, size.height * 0.9557871);
    path_6.cubicTo(size.width, size.height * 0.9802090, size.width * 0.9802090,
        size.height, size.width * 0.9557871, size.height);
    path_6.cubicTo(
        size.width * 0.9313730,
        size.height,
        size.width * 0.9115762,
        size.height * 0.9802090,
        size.width * 0.9115762,
        size.height * 0.9557871);
    path_6.close();
    path_6.moveTo(size.width * 0.9115762, size.height * 0.9114219);

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = Color(0xff6770e6).withOpacity(1.0);
    canvas.drawPath(path_6, paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.9557871, size.height * 0.9609375);
    path_7.cubicTo(
        size.width * 0.9313730,
        size.height * 0.9609375,
        size.width * 0.9115762,
        size.height * 0.9411465,
        size.width * 0.9115762,
        size.height * 0.9167246);
    path_7.lineTo(size.width * 0.9115762, size.height * 0.9557871);
    path_7.cubicTo(
        size.width * 0.9115762,
        size.height * 0.9802090,
        size.width * 0.9313730,
        size.height,
        size.width * 0.9557871,
        size.height);
    path_7.cubicTo(size.width * 0.9802090, size.height, size.width,
        size.height * 0.9802090, size.width, size.height * 0.9557871);
    path_7.lineTo(size.width, size.height * 0.9167246);
    path_7.cubicTo(
        size.width,
        size.height * 0.9411465,
        size.width * 0.9802090,
        size.height * 0.9609375,
        size.width * 0.9557871,
        size.height * 0.9609375);
    path_7.close();
    path_7.moveTo(size.width * 0.9557871, size.height * 0.9609375);

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = Color(0xff5861c7).withOpacity(1.0);
    canvas.drawPath(path_7, paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.9115762, size.height * 0.2752070);
    path_8.lineTo(size.width * 0.9525215, size.height * 0.1609648);
    path_8.cubicTo(
        size.width * 0.9536211,
        size.height * 0.1578984,
        size.width * 0.9579551,
        size.height * 0.1578984,
        size.width * 0.9590527,
        size.height * 0.1609648);
    path_8.lineTo(size.width, size.height * 0.2752070);
    path_8.close();
    path_8.moveTo(size.width * 0.9115762, size.height * 0.2752070);

    Paint paint_8_fill = Paint()..style = PaintingStyle.fill;
    paint_8_fill.color = Color(0xffedd4c2).withOpacity(1.0);
    canvas.drawPath(path_8, paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.9336777, size.height * 0.2135313);
    path_9.lineTo(size.width * 0.9778906, size.height * 0.2135313);
    path_9.lineTo(size.width * 0.9590527, size.height * 0.1609648);
    path_9.cubicTo(
        size.width * 0.9579551,
        size.height * 0.1578984,
        size.width * 0.9536133,
        size.height * 0.1578984,
        size.width * 0.9525156,
        size.height * 0.1609648);
    path_9.close();
    path_9.moveTo(size.width * 0.9336777, size.height * 0.2135313);

    Paint paint_9_fill = Paint()..style = PaintingStyle.fill;
    paint_9_fill.color = Color(0xff5861c7).withOpacity(1.0);
    canvas.drawPath(path_9, paint_9_fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.9336777, size.height * 0.2135313);
    path_10.lineTo(size.width * 0.9778906, size.height * 0.2135313);
    path_10.lineTo(size.width * 0.9590527, size.height * 0.1609648);
    path_10.cubicTo(
        size.width * 0.9579551,
        size.height * 0.1578984,
        size.width * 0.9536133,
        size.height * 0.1578984,
        size.width * 0.9525156,
        size.height * 0.1609648);
    path_10.close();
    path_10.moveTo(size.width * 0.9336777, size.height * 0.2135313);

    Paint paint_10_fill = Paint()..style = PaintingStyle.fill;
    paint_10_fill.color = Color(0xff5861c7).withOpacity(1.0);
    canvas.drawPath(path_10, paint_10_fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.9509434, size.height * 0.1804961);
    path_11.cubicTo(
        size.width * 0.9525762,
        size.height * 0.1774297,
        size.width * 0.9590000,
        size.height * 0.1774297,
        size.width * 0.9606250,
        size.height * 0.1804961);
    path_11.lineTo(size.width * 0.9773398, size.height * 0.2119824);
    path_11.lineTo(size.width * 0.9590527, size.height * 0.1609668);
    path_11.cubicTo(
        size.width * 0.9579551,
        size.height * 0.1578984,
        size.width * 0.9536211,
        size.height * 0.1578984,
        size.width * 0.9525215,
        size.height * 0.1609668);
    path_11.lineTo(size.width * 0.9342422, size.height * 0.2119668);
    path_11.close();
    path_11.moveTo(size.width * 0.9509434, size.height * 0.1804961);

    Paint paint_11_fill = Paint()..style = PaintingStyle.fill;
    paint_11_fill.color = Color(0xff8f95e6).withOpacity(1.0);
    canvas.drawPath(path_11, paint_11_fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.7320937, size.height * 0.3972168);
    path_12.lineTo(size.width * 0.3438027, size.height * 0.3972168);
    path_12.cubicTo(
        size.width * 0.3338848,
        size.height * 0.3972168,
        size.width * 0.3258359,
        size.height * 0.3891758,
        size.width * 0.3258359,
        size.height * 0.3792578);
    path_12.cubicTo(
        size.width * 0.3258359,
        size.height * 0.3693320,
        size.width * 0.3338848,
        size.height * 0.3612891,
        size.width * 0.3438047,
        size.height * 0.3612891);
    path_12.lineTo(size.width * 0.7320859, size.height * 0.3612891);
    path_12.cubicTo(
        size.width * 0.7420117,
        size.height * 0.3612891,
        size.width * 0.7500547,
        size.height * 0.3693320,
        size.width * 0.7500547,
        size.height * 0.3792578);
    path_12.cubicTo(
        size.width * 0.7500605,
        size.height * 0.3891758,
        size.width * 0.7420117,
        size.height * 0.3972168,
        size.width * 0.7320937,
        size.height * 0.3972168);
    path_12.close();
    path_12.moveTo(size.width * 0.7320937, size.height * 0.4913633);
    path_12.lineTo(size.width * 0.3438027, size.height * 0.4913633);
    path_12.cubicTo(
        size.width * 0.3338848,
        size.height * 0.4913633,
        size.width * 0.3258359,
        size.height * 0.4833223,
        size.width * 0.3258359,
        size.height * 0.4733945);
    path_12.cubicTo(
        size.width * 0.3258359,
        size.height * 0.4634785,
        size.width * 0.3338848,
        size.height * 0.4554375,
        size.width * 0.3438047,
        size.height * 0.4554375);
    path_12.lineTo(size.width * 0.7320859, size.height * 0.4554375);
    path_12.cubicTo(
        size.width * 0.7420117,
        size.height * 0.4554375,
        size.width * 0.7500547,
        size.height * 0.4634785,
        size.width * 0.7500547,
        size.height * 0.4733965);
    path_12.cubicTo(
        size.width * 0.7500605,
        size.height * 0.4833223,
        size.width * 0.7420117,
        size.height * 0.4913652,
        size.width * 0.7320937,
        size.height * 0.4913652);
    path_12.close();
    path_12.moveTo(size.width * 0.7320937, size.height * 0.5855098);
    path_12.lineTo(size.width * 0.3438027, size.height * 0.5855098);
    path_12.cubicTo(
        size.width * 0.3338848,
        size.height * 0.5855098,
        size.width * 0.3258359,
        size.height * 0.5774687,
        size.width * 0.3258359,
        size.height * 0.5675430);
    path_12.cubicTo(
        size.width * 0.3258359,
        size.height * 0.5576250,
        size.width * 0.3338848,
        size.height * 0.5495742,
        size.width * 0.3438047,
        size.height * 0.5495742);
    path_12.lineTo(size.width * 0.7320859, size.height * 0.5495742);
    path_12.cubicTo(
        size.width * 0.7420117,
        size.height * 0.5495742,
        size.width * 0.7500547,
        size.height * 0.5576250,
        size.width * 0.7500547,
        size.height * 0.5675430);
    path_12.cubicTo(
        size.width * 0.7500605,
        size.height * 0.5774687,
        size.width * 0.7420117,
        size.height * 0.5855117,
        size.width * 0.7320937,
        size.height * 0.5855117);
    path_12.close();
    path_12.moveTo(size.width * 0.7320937, size.height * 0.6796484);
    path_12.lineTo(size.width * 0.3438027, size.height * 0.6796484);
    path_12.cubicTo(
        size.width * 0.3338848,
        size.height * 0.6796484,
        size.width * 0.3258359,
        size.height * 0.6716074,
        size.width * 0.3258359,
        size.height * 0.6616895);
    path_12.cubicTo(
        size.width * 0.3258359,
        size.height * 0.6517637,
        size.width * 0.3338848,
        size.height * 0.6437207,
        size.width * 0.3438047,
        size.height * 0.6437207);
    path_12.lineTo(size.width * 0.7320859, size.height * 0.6437207);
    path_12.cubicTo(
        size.width * 0.7420117,
        size.height * 0.6437207,
        size.width * 0.7500547,
        size.height * 0.6517637,
        size.width * 0.7500547,
        size.height * 0.6616895);
    path_12.cubicTo(
        size.width * 0.7500605,
        size.height * 0.6716074,
        size.width * 0.7420117,
        size.height * 0.6796484,
        size.width * 0.7320937,
        size.height * 0.6796484);
    path_12.close();
    path_12.moveTo(size.width * 0.2836523, size.height * 0.3792500);
    path_12.cubicTo(
        size.width * 0.2836523,
        size.height * 0.3891758,
        size.width * 0.2756055,
        size.height * 0.3972168,
        size.width * 0.2656855,
        size.height * 0.3972168);
    path_12.cubicTo(
        size.width * 0.2557598,
        size.height * 0.3972168,
        size.width * 0.2477109,
        size.height * 0.3891758,
        size.width * 0.2477109,
        size.height * 0.3792480);
    path_12.cubicTo(
        size.width * 0.2477109,
        size.height * 0.3693203,
        size.width * 0.2557598,
        size.height * 0.3612832,
        size.width * 0.2656855,
        size.height * 0.3612832);
    path_12.cubicTo(
        size.width * 0.2756035,
        size.height * 0.3612832,
        size.width * 0.2836543,
        size.height * 0.3693242,
        size.width * 0.2836543,
        size.height * 0.3792500);
    path_12.close();
    path_12.moveTo(size.width * 0.2836523, size.height * 0.4733965);
    path_12.cubicTo(
        size.width * 0.2836523,
        size.height * 0.4833223,
        size.width * 0.2756055,
        size.height * 0.4913711,
        size.width * 0.2656855,
        size.height * 0.4913711);
    path_12.arcToPoint(Offset(size.width * 0.2477109, size.height * 0.4733965),
        radius: Radius.elliptical(
            size.width * 0.01797656, size.height * 0.01797656),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.cubicTo(
        size.width * 0.2477109,
        size.height * 0.4634785,
        size.width * 0.2557598,
        size.height * 0.4554277,
        size.width * 0.2656855,
        size.height * 0.4554277);
    path_12.cubicTo(
        size.width * 0.2756035,
        size.height * 0.4554277,
        size.width * 0.2836543,
        size.height * 0.4634785,
        size.width * 0.2836543,
        size.height * 0.4733965);
    path_12.close();
    path_12.moveTo(size.width * 0.2836523, size.height * 0.5675430);
    path_12.cubicTo(
        size.width * 0.2836523,
        size.height * 0.5774687,
        size.width * 0.2756055,
        size.height * 0.5855117,
        size.width * 0.2656855,
        size.height * 0.5855117);
    path_12.cubicTo(
        size.width * 0.2557598,
        size.height * 0.5855117,
        size.width * 0.2477109,
        size.height * 0.5774687,
        size.width * 0.2477109,
        size.height * 0.5675430);
    path_12.cubicTo(
        size.width * 0.2477109,
        size.height * 0.5576172,
        size.width * 0.2557598,
        size.height * 0.5495742,
        size.width * 0.2656855,
        size.height * 0.5495742);
    path_12.cubicTo(
        size.width * 0.2756035,
        size.height * 0.5495742,
        size.width * 0.2836543,
        size.height * 0.5576172,
        size.width * 0.2836543,
        size.height * 0.5675430);
    path_12.close();
    path_12.moveTo(size.width * 0.2836523, size.height * 0.6616895);
    path_12.cubicTo(
        size.width * 0.2836523,
        size.height * 0.6716074,
        size.width * 0.2756055,
        size.height * 0.6796582,
        size.width * 0.2656855,
        size.height * 0.6796582);
    path_12.cubicTo(
        size.width * 0.2557598,
        size.height * 0.6796582,
        size.width * 0.2477109,
        size.height * 0.6716074,
        size.width * 0.2477109,
        size.height * 0.6616895);
    path_12.cubicTo(
        size.width * 0.2477109,
        size.height * 0.6517637,
        size.width * 0.2557598,
        size.height * 0.6437207,
        size.width * 0.2656855,
        size.height * 0.6437207);
    path_12.cubicTo(
        size.width * 0.2756035,
        size.height * 0.6437207,
        size.width * 0.2836543,
        size.height * 0.6517637,
        size.width * 0.2836543,
        size.height * 0.6616895);
    path_12.close();
    path_12.moveTo(size.width * 0.3226855, size.height * 0.2500078);
    path_12.lineTo(size.width * 0.3226855, size.height * 0.1270215);
    path_12.lineTo(size.width * 0.2907559, size.height * 0.1270215);
    path_12.arcToPoint(Offset(size.width * 0.2907559, size.height * 0.09697656),
        radius: Radius.elliptical(
            size.width * 0.01502148, size.height * 0.01502148),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_12.lineTo(size.width * 0.3862832, size.height * 0.09697656);
    path_12.arcToPoint(Offset(size.width * 0.4013066, size.height * 0.1120000),
        radius: Radius.elliptical(
            size.width * 0.01502148, size.height * 0.01502148),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.arcToPoint(Offset(size.width * 0.3862832, size.height * 0.1270215),
        radius: Radius.elliptical(
            size.width * 0.01501758, size.height * 0.01501758),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.lineTo(size.width * 0.3543555, size.height * 0.1270215);
    path_12.lineTo(size.width * 0.3543555, size.height * 0.2500078);
    path_12.arcToPoint(Offset(size.width * 0.3393320, size.height * 0.2650293),
        radius: Radius.elliptical(
            size.width * 0.01502148, size.height * 0.01502148),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.lineTo(size.width * 0.3377070, size.height * 0.2650293);
    path_12.arcToPoint(Offset(size.width * 0.3226855, size.height * 0.2500078),
        radius: Radius.elliptical(
            size.width * 0.01502148, size.height * 0.01502148),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.close();
    path_12.moveTo(size.width * 0.5403223, size.height * 0.2305371);
    path_12.lineTo(size.width * 0.5485918, size.height * 0.2404551);
    path_12.arcToPoint(Offset(size.width * 0.5463555, size.height * 0.2605430),
        radius: Radius.elliptical(
            size.width * 0.01401172, size.height * 0.01401172),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.arcToPoint(Offset(size.width * 0.5270078, size.height * 0.2583457),
        radius: Radius.elliptical(
            size.width * 0.01400391, size.height * 0.01400391),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.lineTo(size.width * 0.5234141, size.height * 0.2539902);
    path_12.cubicTo(
        size.width * 0.5122988,
        size.height * 0.2638711,
        size.width * 0.4989316,
        size.height * 0.2687988,
        size.width * 0.4832832,
        size.height * 0.2687988);
    path_12.cubicTo(
        size.width * 0.4745176,
        size.height * 0.2687988,
        size.width * 0.4663477,
        size.height * 0.2673418,
        size.width * 0.4587559,
        size.height * 0.2644434);
    path_12.cubicTo(
        size.width * 0.4511582,
        size.height * 0.2615586,
        size.width * 0.4445488,
        size.height * 0.2574902,
        size.width * 0.4389258,
        size.height * 0.2522363);
    path_12.cubicTo(
        size.width * 0.4332969,
        size.height * 0.2470020,
        size.width * 0.4288633,
        size.height * 0.2407754,
        size.width * 0.4256523,
        size.height * 0.2335742);
    path_12.cubicTo(
        size.width * 0.4224395,
        size.height * 0.2263867,
        size.width * 0.4208379,
        size.height * 0.2184824,
        size.width * 0.4208379,
        size.height * 0.2098691);
    path_12.cubicTo(
        size.width * 0.4208379,
        size.height * 0.2004844,
        size.width * 0.4231484,
        size.height * 0.1915664,
        size.width * 0.4277715,
        size.height * 0.1831055);
    path_12.cubicTo(
        size.width * 0.4323730,
        size.height * 0.1746680,
        size.width * 0.4388359,
        size.height * 0.1674570,
        size.width * 0.4471426,
        size.height * 0.1615234);
    path_12.cubicTo(
        size.width * 0.4441602,
        size.height * 0.1574473,
        size.width * 0.4417344,
        size.height * 0.1532285,
        size.width * 0.4398652,
        size.height * 0.1488340);
    path_12.cubicTo(
        size.width * 0.4379727,
        size.height * 0.1444629,
        size.width * 0.4370332,
        size.height * 0.1398398,
        size.width * 0.4370332,
        size.height * 0.1349863);
    path_12.cubicTo(
        size.width * 0.4370332,
        size.height * 0.1291953,
        size.width * 0.4381035,
        size.height * 0.1237793,
        size.width * 0.4402090,
        size.height * 0.1186758);
    path_12.arcToPoint(Offset(size.width * 0.4492422, size.height * 0.1054141),
        radius: Radius.elliptical(
            size.width * 0.03905859, size.height * 0.03905859),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.cubicTo(
        size.width * 0.4531563,
        size.height * 0.1016777,
        size.width * 0.4577773,
        size.height * 0.09869531,
        size.width * 0.4630898,
        size.height * 0.09649609);
    path_12.cubicTo(
        size.width * 0.4684141,
        size.height * 0.09432227,
        size.width * 0.4742891,
        size.height * 0.09320898,
        size.width * 0.4807070,
        size.height * 0.09320898);
    path_12.cubicTo(
        size.width * 0.4919746,
        size.height * 0.09320898,
        size.width * 0.5010078,
        size.height * 0.09582617,
        size.width * 0.5078047,
        size.height * 0.1010801);
    path_12.arcToPoint(Offset(size.width * 0.5129844, size.height * 0.1057129),
        radius: Radius.elliptical(
            size.width * 0.04580078, size.height * 0.04580078),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.cubicTo(
        size.width * 0.5194238,
        size.height * 0.1124199,
        size.width * 0.5177773,
        size.height * 0.1233887,
        size.width * 0.5095605,
        size.height * 0.1277305);
    path_12.lineTo(size.width * 0.5080879, size.height * 0.1285098);
    path_12.cubicTo(
        size.width * 0.5030293,
        size.height * 0.1311875,
        size.width * 0.4970547,
        size.height * 0.1297012,
        size.width * 0.4931191,
        size.height * 0.1255488);
    path_12.cubicTo(
        size.width * 0.4892188,
        size.height * 0.1214531,
        size.width * 0.4840859,
        size.height * 0.1202012,
        size.width * 0.4811563,
        size.height * 0.1202012);
    path_12.cubicTo(
        size.width * 0.4766309,
        size.height * 0.1202012,
        size.width * 0.4730215,
        size.height * 0.1215371,
        size.width * 0.4703594,
        size.height * 0.1241914);
    path_12.cubicTo(
        size.width * 0.4677031,
        size.height * 0.1268691,
        size.width * 0.4663691,
        size.height * 0.1302266,
        size.width * 0.4663691,
        size.height * 0.1343008);
    path_12.cubicTo(
        size.width * 0.4663691,
        size.height * 0.1368027,
        size.width * 0.4669258,
        size.height * 0.1390918,
        size.width * 0.4680176,
        size.height * 0.1412129);
    path_12.cubicTo(
        size.width * 0.4691094,
        size.height * 0.1433340,
        size.width * 0.4705957,
        size.height * 0.1455469,
        size.width * 0.4724805,
        size.height * 0.1478965);
    path_12.lineTo(size.width * 0.5229492, size.height * 0.2094043);
    path_12.lineTo(size.width * 0.5298633, size.height * 0.1981504);
    path_12.arcToPoint(Offset(size.width * 0.5479961, size.height * 0.1939395),
        radius: Radius.elliptical(
            size.width * 0.01308594, size.height * 0.01308594),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.arcToPoint(Offset(size.width * 0.5520625, size.height * 0.2120137),
        radius: Radius.elliptical(
            size.width * 0.01308203, size.height * 0.01308203),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.close();
    path_12.moveTo(size.width * 0.4846973, size.height * 0.2410957);
    path_12.cubicTo(
        size.width * 0.4934473,
        size.height * 0.2410957,
        size.width * 0.5006484,
        size.height * 0.2385020,
        size.width * 0.5062871,
        size.height * 0.2333457);
    path_12.lineTo(size.width * 0.4638066, size.height * 0.1819395);
    path_12.cubicTo(
        size.width * 0.4594277,
        size.height * 0.1852266,
        size.width * 0.4560703,
        size.height * 0.1892539,
        size.width * 0.4537207,
        size.height * 0.1940293);
    path_12.cubicTo(
        size.width * 0.4513711,
        size.height * 0.1988066,
        size.width * 0.4501797,
        size.height * 0.2036973,
        size.width * 0.4501797,
        size.height * 0.2087012);
    path_12.cubicTo(
        size.width * 0.4501797,
        size.height * 0.2137148,
        size.width * 0.4511328,
        size.height * 0.2182168,
        size.width * 0.4530117,
        size.height * 0.2221914);
    path_12.cubicTo(
        size.width * 0.4548789,
        size.height * 0.2261816,
        size.width * 0.4574277,
        size.height * 0.2295996,
        size.width * 0.4606328,
        size.height * 0.2324062);
    path_12.arcToPoint(Offset(size.width * 0.4716719, size.height * 0.2388613),
        radius: Radius.elliptical(
            size.width * 0.03417383, size.height * 0.03417383),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_12.cubicTo(
        size.width * 0.4758145,
        size.height * 0.2403574,
        size.width * 0.4801562,
        size.height * 0.2410957,
        size.width * 0.4846953,
        size.height * 0.2410957);
    path_12.close();
    path_12.moveTo(size.width * 0.7172168, size.height * 0.2270820);
    path_12.cubicTo(
        size.width * 0.7240977,
        size.height * 0.2336055,
        size.width * 0.7235039,
        size.height * 0.2446445,
        size.width * 0.7161094,
        size.height * 0.2505723);
    path_12.arcToPoint(Offset(size.width * 0.6994492, size.height * 0.2609238),
        radius: Radius.elliptical(
            size.width * 0.08130859, size.height * 0.08130859),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.cubicTo(
        size.width * 0.6881797,
        size.height * 0.2661582,
        size.width * 0.6755820,
        size.height * 0.2687910,
        size.width * 0.6616660,
        size.height * 0.2687910);
    path_12.cubicTo(
        size.width * 0.6491309,
        size.height * 0.2687910,
        size.width * 0.6375195,
        size.height * 0.2665176,
        size.width * 0.6268086,
        size.height * 0.2619707);
    path_12.cubicTo(
        size.width * 0.6160898,
        size.height * 0.2574473,
        size.width * 0.6068047,
        size.height * 0.2512598,
        size.width * 0.5989922,
        size.height * 0.2434473);
    path_12.cubicTo(
        size.width * 0.5911641,
        size.height * 0.2356113,
        size.width * 0.5849922,
        size.height * 0.2263496,
        size.width * 0.5804453,
        size.height * 0.2156152);
    path_12.cubicTo(
        size.width * 0.5758965,
        size.height * 0.2048945,
        size.width * 0.5736465,
        size.height * 0.1933594,
        size.width * 0.5736465,
        size.height * 0.1810000);
    path_12.cubicTo(
        size.width * 0.5736465,
        size.height * 0.1686406,
        size.width * 0.5758965,
        size.height * 0.1571055,
        size.width * 0.5804434,
        size.height * 0.1463711);
    path_12.cubicTo(
        size.width * 0.5849922,
        size.height * 0.1356504,
        size.width * 0.5911641,
        size.height * 0.1263887,
        size.width * 0.5989922,
        size.height * 0.1185527);
    path_12.cubicTo(
        size.width * 0.6068047,
        size.height * 0.1107402,
        size.width * 0.6160879,
        size.height * 0.1045527,
        size.width * 0.6268086,
        size.height * 0.1000293);
    path_12.cubicTo(
        size.width * 0.6375195,
        size.height * 0.09548242,
        size.width * 0.6491328,
        size.height * 0.09320898,
        size.width * 0.6616660,
        size.height * 0.09320898);
    path_12.cubicTo(
        size.width * 0.6751094,
        size.height * 0.09320898,
        size.width * 0.6869727,
        size.height * 0.09555859,
        size.width * 0.6972129,
        size.height * 0.1002578);
    path_12.arcToPoint(Offset(size.width * 0.7125391, size.height * 0.1094824),
        radius: Radius.elliptical(
            size.width * 0.08002539, size.height * 0.08002539),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_12.cubicTo(
        size.width * 0.7195059,
        size.height * 0.1148145,
        size.width * 0.7198418,
        size.height * 0.1252441,
        size.width * 0.7135469,
        size.height * 0.1313398);
    path_12.lineTo(size.width * 0.7122031, size.height * 0.1326367);
    path_12.cubicTo(
        size.width * 0.7069316,
        size.height * 0.1377402,
        size.width * 0.6988145,
        size.height * 0.1379551,
        size.width * 0.6929707,
        size.height * 0.1335156);
    path_12.arcToPoint(Offset(size.width * 0.6850059, size.height * 0.1284102),
        radius: Radius.elliptical(
            size.width * 0.05882813, size.height * 0.05882813),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_12.cubicTo(
        size.width * 0.6785117,
        size.height * 0.1249688,
        size.width * 0.6708145,
        size.height * 0.1232539,
        size.width * 0.6618965,
        size.height * 0.1232539);
    path_12.cubicTo(
        size.width * 0.6540605,
        size.height * 0.1232539,
        size.width * 0.6467051,
        size.height * 0.1246270,
        size.width * 0.6398320,
        size.height * 0.1273574);
    path_12.cubicTo(
        size.width * 0.6329336,
        size.height * 0.1301113,
        size.width * 0.6269609,
        size.height * 0.1339727,
        size.width * 0.6218711,
        size.height * 0.1389688);
    path_12.cubicTo(
        size.width * 0.6167910,
        size.height * 0.1439980,
        size.width * 0.6127617,
        size.height * 0.1500547,
        size.width * 0.6097871,
        size.height * 0.1571719);
    path_12.cubicTo(
        size.width * 0.6068047,
        size.height * 0.1643008,
        size.width * 0.6053398,
        size.height * 0.1722266,
        size.width * 0.6053398,
        size.height * 0.1810000);
    path_12.cubicTo(
        size.width * 0.6053398,
        size.height * 0.1897656,
        size.width * 0.6068105,
        size.height * 0.1976934,
        size.width * 0.6097871,
        size.height * 0.2048184);
    path_12.cubicTo(
        size.width * 0.6127617,
        size.height * 0.2119453,
        size.width * 0.6167988,
        size.height * 0.2179941,
        size.width * 0.6218711,
        size.height * 0.2230000);
    path_12.cubicTo(
        size.width * 0.6269609,
        size.height * 0.2280273,
        size.width * 0.6329336,
        size.height * 0.2318809,
        size.width * 0.6398320,
        size.height * 0.2346348);
    path_12.cubicTo(
        size.width * 0.6467070,
        size.height * 0.2373652,
        size.width * 0.6540605,
        size.height * 0.2387383,
        size.width * 0.6618965,
        size.height * 0.2387383);
    path_12.cubicTo(
        size.width * 0.6712715,
        size.height * 0.2387383,
        size.width * 0.6796191,
        size.height * 0.2368320,
        size.width * 0.6868965,
        size.height * 0.2329863);
    path_12.arcToPoint(Offset(size.width * 0.6965938, size.height * 0.2265234),
        radius: Radius.elliptical(
            size.width * 0.05688672, size.height * 0.05688672),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_12.cubicTo(
        size.width * 0.7026895,
        size.height * 0.2215195,
        size.width * 0.7114961,
        size.height * 0.2216563,
        size.width * 0.7172168,
        size.height * 0.2270820);
    path_12.close();
    path_12.moveTo(size.width * 0.7172168, size.height * 0.2270820);

    Paint paint_12_fill = Paint()..style = PaintingStyle.fill;
    paint_12_fill.color = Color(0xff6770e6).withOpacity(1.0);
    canvas.drawPath(path_12, paint_12_fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.3574062, size.height * 0.8886406);
    path_13.lineTo(size.width * 0.2634727, size.height * 0.8886406);
    path_13.arcToPoint(Offset(size.width * 0.2477187, size.height * 0.8728867),
        radius: Radius.elliptical(
            size.width * 0.01575977, size.height * 0.01575977),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_13.lineTo(size.width * 0.2477187, size.height * 0.7789453);
    path_13.arcToPoint(Offset(size.width * 0.2634727, size.height * 0.7631914),
        radius: Radius.elliptical(
            size.width * 0.01575391, size.height * 0.01575391),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_13.lineTo(size.width * 0.3574141, size.height * 0.7631914);
    path_13.arcToPoint(Offset(size.width * 0.3731680, size.height * 0.7789453),
        radius: Radius.elliptical(
            size.width * 0.01575000, size.height * 0.01575000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_13.lineTo(size.width * 0.3731680, size.height * 0.8728867);
    path_13.arcToPoint(Offset(size.width * 0.3574062, size.height * 0.8886406),
        radius: Radius.elliptical(
            size.width * 0.01576172, size.height * 0.01576172),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_13.close();
    path_13.moveTo(size.width * 0.3574062, size.height * 0.8886406);

    Paint paint_13_fill = Paint()..style = PaintingStyle.fill;
    paint_13_fill.color = Color(0xffedd4c2).withOpacity(1.0);
    canvas.drawPath(path_13, paint_13_fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.3032676, size.height * 0.8613730);
    path_14.arcToPoint(Offset(size.width * 0.2939512, size.height * 0.8581309),
        radius: Radius.elliptical(
            size.width * 0.01500977, size.height * 0.01500977),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_14.lineTo(size.width * 0.2754219, size.height * 0.8434746);
    path_14.arcToPoint(Offset(size.width * 0.2729570, size.height * 0.8223574),
        radius: Radius.elliptical(
            size.width * 0.01503906, size.height * 0.01503906),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_14.arcToPoint(Offset(size.width * 0.2940684, size.height * 0.8198926),
        radius: Radius.elliptical(
            size.width * 0.01502930, size.height * 0.01502930),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_14.lineTo(size.width * 0.3009805, size.height * 0.8253555);
    path_14.lineTo(size.width * 0.3295508, size.height * 0.7902910);
    path_14.arcToPoint(Offset(size.width * 0.3528594, size.height * 0.8092891),
        radius: Radius.elliptical(
            size.width * 0.01503320, size.height * 0.01503320),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_14.lineTo(size.width * 0.3149336, size.height * 0.8558340);
    path_14.arcToPoint(Offset(size.width * 0.3032676, size.height * 0.8613730),
        radius: Radius.elliptical(
            size.width * 0.01501758, size.height * 0.01501758),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_14.close();
    path_14.moveTo(size.width * 0.7320937, size.height * 0.8438789);
    path_14.lineTo(size.width * 0.4497305, size.height * 0.8438789);
    path_14.cubicTo(
        size.width * 0.4398125,
        size.height * 0.8438789,
        size.width * 0.4317617,
        size.height * 0.8358379,
        size.width * 0.4317617,
        size.height * 0.8259121);
    path_14.cubicTo(
        size.width * 0.4317617,
        size.height * 0.8159941,
        size.width * 0.4398125,
        size.height * 0.8079531,
        size.width * 0.4497305,
        size.height * 0.8079531);
    path_14.lineTo(size.width * 0.7320937, size.height * 0.8079531);
    path_14.cubicTo(
        size.width * 0.7420117,
        size.height * 0.8079531,
        size.width * 0.7500625,
        size.height * 0.8159941,
        size.width * 0.7500625,
        size.height * 0.8259121);
    path_14.cubicTo(
        size.width * 0.7500625,
        size.height * 0.8358379,
        size.width * 0.7420117,
        size.height * 0.8438809,
        size.width * 0.7320937,
        size.height * 0.8438809);
    path_14.close();
    path_14.moveTo(size.width * 0.7320937, size.height * 0.8438789);

    Paint paint_14_fill = Paint()..style = PaintingStyle.fill;
    paint_14_fill.color = Color(0xff6770e6).withOpacity(1.0);
    canvas.drawPath(path_14, paint_14_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
