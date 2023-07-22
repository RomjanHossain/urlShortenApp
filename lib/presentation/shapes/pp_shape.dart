// ignore_for_file: cascade_invocations

import 'package:flutter/rendering.dart';

//Copy this CustomPainter code to the Bottom of the File
class PrivacyPolicyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path();
    path_0.moveTo(size.width * 0.9666667, size.height * 0.8666667);
    path_0.lineTo(size.width * 0.8166667, size.height * 0.8666667);
    path_0.lineTo(size.width * 0.8166667, size.height * 0.1000000);
    path_0.cubicTo(
      size.width * 0.8166667,
      size.height * 0.05400000,
      size.width * 0.7793333,
      size.height * 0.01666667,
      size.width * 0.7333333,
      size.height * 0.01666667,
    );
    path_0.lineTo(size.width * 0.1000000, size.height * 0.01666667);
    path_0.cubicTo(
      size.width * 0.05383333,
      size.height * 0.01683333,
      size.width * 0.01666667,
      size.height * 0.05400000,
      size.width * 0.01666667,
      size.height * 0.1000000,
    );
    path_0.lineTo(size.width * 0.01666667, size.height * 0.1666667);
    path_0.cubicTo(
      size.width * 0.01666667,
      size.height * 0.1758333,
      size.width * 0.02416667,
      size.height * 0.1833333,
      size.width * 0.03333333,
      size.height * 0.1833333,
    );
    path_0.lineTo(size.width * 0.1833333, size.height * 0.1833333);
    path_0.lineTo(size.width * 0.1833333, size.height * 0.9000000);
    path_0.cubicTo(
      size.width * 0.1833333,
      size.height * 0.9460000,
      size.width * 0.2166667,
      size.height * 0.9833333,
      size.width * 0.2666667,
      size.height * 0.9833333,
    );
    path_0.lineTo(size.width * 0.9000000, size.height * 0.9833333);
    path_0.cubicTo(
      size.width * 0.9460000,
      size.height * 0.9833333,
      size.width * 0.9833333,
      size.height * 0.9460000,
      size.width * 0.9833333,
      size.height * 0.9000000,
    );
    path_0.lineTo(size.width * 0.9833333, size.height * 0.8833333);
    path_0.cubicTo(
      size.width * 0.9833333,
      size.height * 0.8741667,
      size.width * 0.9758333,
      size.height * 0.8666667,
      size.width * 0.9666667,
      size.height * 0.8666667,
    );
    path_0.close();

    final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffc9eff4).withOpacity(1);
    canvas.drawPath(path_0, paint0Fill);

    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.9833333, size.height * 0.8833333);
    path_1.lineTo(size.width * 0.9833333, size.height * 0.9000000);
    path_1.cubicTo(
      size.width * 0.9833333,
      size.height * 0.9460000,
      size.width * 0.9460000,
      size.height * 0.9833333,
      size.width * 0.9000000,
      size.height * 0.9833333,
    );
    path_1.lineTo(size.width * 0.2666667, size.height * 0.9833333);
    path_1.cubicTo(
      size.width * 0.2693333,
      size.height * 0.9833333,
      size.width * 0.2721667,
      size.height * 0.9833333,
      size.width * 0.2748333,
      size.height * 0.9830000,
    );
    path_1.cubicTo(
      size.width * 0.3181667,
      size.height * 0.9788333,
      size.width * 0.3500000,
      size.height * 0.9400000,
      size.width * 0.3500000,
      size.height * 0.8965000,
    );
    path_1.lineTo(size.width * 0.3500000, size.height * 0.8833333);
    path_1.cubicTo(
      size.width * 0.3500000,
      size.height * 0.8741667,
      size.width * 0.3575000,
      size.height * 0.8666667,
      size.width * 0.3666667,
      size.height * 0.8666667,
    );
    path_1.lineTo(size.width * 0.9666667, size.height * 0.8666667);
    path_1.cubicTo(
      size.width * 0.9758333,
      size.height * 0.8666667,
      size.width * 0.9833333,
      size.height * 0.8741667,
      size.width * 0.9833333,
      size.height * 0.8833333,
    );
    path_1.close();
    path_1.moveTo(size.width * 0.1833333, size.height * 0.1035000);
    path_1.lineTo(size.width * 0.1833333, size.height * 0.1833333);
    path_1.lineTo(size.width * 0.03333333, size.height * 0.1833333);
    path_1.cubicTo(
      size.width * 0.02416667,
      size.height * 0.1833333,
      size.width * 0.01666667,
      size.height * 0.1758333,
      size.width * 0.01666667,
      size.height * 0.1666667,
    );
    path_1.lineTo(size.width * 0.01666667, size.height * 0.1000000);
    path_1.cubicTo(
      size.width * 0.01666667,
      size.height * 0.05400000,
      size.width * 0.05383333,
      size.height * 0.01683333,
      size.width * 0.1000000,
      size.height * 0.01666667,
    );
    path_1.lineTo(size.width * 0.1001667, size.height * 0.01666667);
    path_1.cubicTo(
      size.width * 0.1028333,
      size.height * 0.01666667,
      size.width * 0.1055000,
      size.height * 0.01666667,
      size.width * 0.1081667,
      size.height * 0.01700000,
    );
    path_1.cubicTo(
      size.width * 0.1515000,
      size.height * 0.02116667,
      size.width * 0.1833333,
      size.height * 0.06000000,
      size.width * 0.1833333,
      size.height * 0.1035000,
    );
    path_1.close();

    final Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffaad3d6).withOpacity(1);
    canvas.drawPath(path_1, paint1Fill);

    final Path path_2 = Path();
    path_2.moveTo(size.width * 0.6098833, size.height * 0.1391167);
    path_2.arcToPoint(
      Offset(size.width * 0.6166667, size.height * 0.1460333),
      radius: Radius.elliptical(
        size.width * 0.006933333,
        size.height * 0.006933333,
      ),
    );
    path_2.lineTo(size.width * 0.6166667, size.height * 0.1819167);
    path_2.cubicTo(
      size.width * 0.6166667,
      size.height * 0.3285833,
      size.width * 0.5230833,
      size.height * 0.3610167,
      size.width * 0.5035500,
      size.height * 0.3662000,
    );
    path_2.arcToPoint(
      Offset(size.width * 0.4964500, size.height * 0.3662000),
      radius: Radius.elliptical(
        size.width * 0.01385000,
        size.height * 0.01385000,
      ),
    );
    path_2.cubicTo(
      size.width * 0.4769167,
      size.height * 0.3610333,
      size.width * 0.3833333,
      size.height * 0.3285833,
      size.width * 0.3833333,
      size.height * 0.1819167,
    );
    path_2.lineTo(size.width * 0.3833333, size.height * 0.1460333);
    path_2.cubicTo(
      size.width * 0.3833333,
      size.height * 0.1422500,
      size.width * 0.3863667,
      size.height * 0.1392167,
      size.width * 0.3901167,
      size.height * 0.1391167,
    );
    path_2.cubicTo(
      size.width * 0.4533000,
      size.height * 0.1374833,
      size.width * 0.4842500,
      size.height * 0.1132000,
      size.width * 0.4952167,
      size.height * 0.1020333,
    );
    path_2.arcToPoint(
      Offset(size.width * 0.5048000, size.height * 0.1020333),
      radius: Radius.elliptical(
        size.width * 0.006666667,
        size.height * 0.006666667,
      ),
    );
    path_2.cubicTo(
      size.width * 0.5157500,
      size.height * 0.1132000,
      size.width * 0.5467167,
      size.height * 0.1374833,
      size.width * 0.6099000,
      size.height * 0.1391167,
    );
    path_2.close();

    final Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff39bc71).withOpacity(1);
    canvas.drawPath(path_2, paint2Fill);

    final Path path_3 = Path();
    path_3.moveTo(size.width * 0.7166667, size.height * 0.8000000);
    path_3.cubicTo(
      size.width * 0.6649833,
      size.height * 0.8000000,
      size.width * 0.6359667,
      size.height * 0.7821500,
      size.width * 0.6126667,
      size.height * 0.7677833,
    );
    path_3.cubicTo(
      size.width * 0.5965167,
      size.height * 0.7578333,
      size.width * 0.5837833,
      size.height * 0.7500000,
      size.width * 0.5666667,
      size.height * 0.7500000,
    );
    path_3.cubicTo(
      size.width * 0.5496667,
      size.height * 0.7500000,
      size.width * 0.5413000,
      size.height * 0.7572667,
      size.width * 0.5286167,
      size.height * 0.7682500,
    );
    path_3.cubicTo(
      size.width * 0.5122833,
      size.height * 0.7824000,
      size.width * 0.4919500,
      size.height * 0.8000000,
      size.width * 0.4500000,
      size.height * 0.8000000,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.4024000, size.height * 0.7907167),
      radius:
          Radius.elliptical(size.width * 0.1243667, size.height * 0.1243667),
    );
    path_3.arcToPoint(
      Offset(size.width * 0.3666667, size.height * 0.8000000),
      radius: Radius.elliptical(
        size.width * 0.07648333,
        size.height * 0.07648333,
      ),
    );
    path_3.cubicTo(
      size.width * 0.3298167,
      size.height * 0.8000000,
      size.width * 0.2940667,
      size.height * 0.7823167,
      size.width * 0.2925500,
      size.height * 0.7815833,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.3074500, size.height * 0.7517500),
      radius: Radius.elliptical(
        size.width * 0.01666667,
        size.height * 0.01666667,
      ),
    );
    path_3.cubicTo(
      size.width * 0.3077500,
      size.height * 0.7519167,
      size.width * 0.3388333,
      size.height * 0.7678500,
      size.width * 0.3681667,
      size.height * 0.7666500,
    );
    path_3.cubicTo(
      size.width * 0.3569333,
      size.height * 0.7536667,
      size.width * 0.3500167,
      size.height * 0.7369667,
      size.width * 0.3500167,
      size.height * 0.7166833,
    );
    path_3.cubicTo(
      size.width * 0.3500167,
      size.height * 0.6729167,
      size.width * 0.3751667,
      size.height * 0.6500167,
      size.width * 0.4000167,
      size.height * 0.6500167,
    );
    path_3.cubicTo(
      size.width * 0.4248667,
      size.height * 0.6500167,
      size.width * 0.4500167,
      size.height * 0.6729167,
      size.width * 0.4500167,
      size.height * 0.7166833,
    );
    path_3.cubicTo(
      size.width * 0.4500167,
      size.height * 0.7340167,
      size.width * 0.4434000,
      size.height * 0.7509667,
      size.width * 0.4326500,
      size.height * 0.7649833,
    );
    path_3.cubicTo(
      size.width * 0.4389833,
      size.height * 0.7661667,
      size.width * 0.4449833,
      size.height * 0.7666833,
      size.width * 0.4500167,
      size.height * 0.7666833,
    );
    path_3.cubicTo(
      size.width * 0.4795333,
      size.height * 0.7666833,
      size.width * 0.4921667,
      size.height * 0.7557333,
      size.width * 0.5068000,
      size.height * 0.7430667,
    );
    path_3.cubicTo(
      size.width * 0.5210667,
      size.height * 0.7307000,
      size.width * 0.5372667,
      size.height * 0.7166833,
      size.width * 0.5666833,
      size.height * 0.7166833,
    );
    path_3.cubicTo(
      size.width * 0.5932333,
      size.height * 0.7166833,
      size.width * 0.6120000,
      size.height * 0.7282333,
      size.width * 0.6301667,
      size.height * 0.7394167,
    );
    path_3.cubicTo(
      size.width * 0.6519500,
      size.height * 0.7528167,
      size.width * 0.6744500,
      size.height * 0.7666833,
      size.width * 0.7166833,
      size.height * 0.7666833,
    );
    path_3.arcToPoint(
      Offset(size.width * 0.7166833, size.height * 0.8000167),
      radius: Radius.elliptical(
        size.width * 0.01666667,
        size.height * 0.01666667,
      ),
      largeArc: true,
    );
    path_3.close();
    path_3.moveTo(size.width * 0.4000000, size.height * 0.6833333);
    path_3.cubicTo(
      size.width * 0.3919333,
      size.height * 0.6833333,
      size.width * 0.3833333,
      size.height * 0.6950167,
      size.width * 0.3833333,
      size.height * 0.7166667,
    );
    path_3.cubicTo(
      size.width * 0.3833333,
      size.height * 0.7325000,
      size.width * 0.3903167,
      size.height * 0.7436667,
      size.width * 0.4001833,
      size.height * 0.7513667,
    );
    path_3.cubicTo(
      size.width * 0.4099667,
      size.height * 0.7418500,
      size.width * 0.4166667,
      size.height * 0.7290667,
      size.width * 0.4166667,
      size.height * 0.7166667,
    );
    path_3.cubicTo(
      size.width * 0.4166667,
      size.height * 0.6950167,
      size.width * 0.4080667,
      size.height * 0.6833333,
      size.width * 0.4000000,
      size.height * 0.6833333,
    );
    path_3.close();

    final Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff293b6d).withOpacity(1);
    canvas.drawPath(path_3, paint3Fill);

    final Path path_4 = Path();
    path_4.moveTo(size.width * 0.7333333, size.height * 0.4833333);
    path_4.lineTo(size.width * 0.2666667, size.height * 0.4833333);
    path_4.arcToPoint(
      Offset(size.width * 0.2666667, size.height * 0.4500000),
      radius: Radius.elliptical(
        size.width * 0.01666667,
        size.height * 0.01666667,
      ),
      largeArc: true,
    );
    path_4.lineTo(size.width * 0.7333333, size.height * 0.4500000);
    path_4.arcToPoint(
      Offset(size.width * 0.7333333, size.height * 0.4833333),
      radius: Radius.elliptical(
        size.width * 0.01666667,
        size.height * 0.01666667,
      ),
      largeArc: true,
    );
    path_4.close();
    path_4.moveTo(size.width * 0.7333333, size.height * 0.5833333);
    path_4.lineTo(size.width * 0.2666667, size.height * 0.5833333);
    path_4.arcToPoint(
      Offset(size.width * 0.2666667, size.height * 0.5500000),
      radius: Radius.elliptical(
        size.width * 0.01666667,
        size.height * 0.01666667,
      ),
      largeArc: true,
    );
    path_4.lineTo(size.width * 0.7333333, size.height * 0.5500000);
    path_4.arcToPoint(
      Offset(size.width * 0.7333333, size.height * 0.5833333),
      radius: Radius.elliptical(
        size.width * 0.01666667,
        size.height * 0.01666667,
      ),
      largeArc: true,
    );
    path_4.close();

    final Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff91c0c1).withOpacity(1);
    canvas.drawPath(path_4, paint4Fill);

    final Path path_5 = Path();
    path_5.moveTo(size.width * 0.5000167, size.height * 0.3833333);
    path_5.cubicTo(
      size.width * 0.4973667,
      size.height * 0.3833333,
      size.width * 0.4947000,
      size.height * 0.3829833,
      size.width * 0.4920833,
      size.height * 0.3822833,
    );
    path_5.cubicTo(
      size.width * 0.4712167,
      size.height * 0.3767667,
      size.width * 0.3666667,
      size.height * 0.3409833,
      size.width * 0.3666667,
      size.height * 0.1819333,
    );
    path_5.lineTo(size.width * 0.3666667, size.height * 0.1460500);
    path_5.cubicTo(
      size.width * 0.3666667,
      size.height * 0.1331667,
      size.width * 0.3767667,
      size.height * 0.1228000,
      size.width * 0.3896833,
      size.height * 0.1224667,
    );
    path_5.cubicTo(
      size.width * 0.4472167,
      size.height * 0.1209833,
      size.width * 0.4743333,
      size.height * 0.09953333,
      size.width * 0.4833167,
      size.height * 0.09036667,
    );
    path_5.cubicTo(
      size.width * 0.4922000,
      size.height * 0.08131667,
      size.width * 0.5078000,
      size.height * 0.08131667,
      size.width * 0.5166833,
      size.height * 0.09036667,
    );
    path_5.cubicTo(
      size.width * 0.5256667,
      size.height * 0.09953333,
      size.width * 0.5527833,
      size.height * 0.1209833,
      size.width * 0.6103000,
      size.height * 0.1224667,
    );
    path_5.arcToPoint(
      Offset(size.width * 0.6333167, size.height * 0.1460500),
      radius: Radius.elliptical(
        size.width * 0.02350000,
        size.height * 0.02350000,
      ),
    );
    path_5.lineTo(size.width * 0.6333167, size.height * 0.1819333);
    path_5.cubicTo(
      size.width * 0.6333167,
      size.height * 0.3410000,
      size.width * 0.5287667,
      size.height * 0.3767667,
      size.width * 0.5078000,
      size.height * 0.3823167,
    );
    path_5.cubicTo(
      size.width * 0.5052833,
      size.height * 0.3830000,
      size.width * 0.5026333,
      size.height * 0.3833500,
      size.width * 0.5000000,
      size.height * 0.3833500,
    );
    path_5.close();
    path_5.moveTo(size.width * 0.4000000, size.height * 0.1553500);
    path_5.lineTo(size.width * 0.4000000, size.height * 0.1819167);
    path_5.cubicTo(
      size.width * 0.4000000,
      size.height * 0.3165667,
      size.width * 0.4839000,
      size.height * 0.3456167,
      size.width * 0.5007167,
      size.height * 0.3500833,
    );
    path_5.cubicTo(
      size.width * 0.5161000,
      size.height * 0.3456167,
      size.width * 0.6000000,
      size.height * 0.3165667,
      size.width * 0.6000000,
      size.height * 0.1819167,
    );
    path_5.lineTo(size.width * 0.6000000, size.height * 0.1553500);
    path_5.cubicTo(
      size.width * 0.5467500,
      size.height * 0.1520333,
      size.width * 0.5153833,
      size.height * 0.1330333,
      size.width * 0.5000000,
      size.height * 0.1202167,
    );
    path_5.cubicTo(
      size.width * 0.4846333,
      size.height * 0.1330500,
      size.width * 0.4532500,
      size.height * 0.1520333,
      size.width * 0.4000000,
      size.height * 0.1553500,
    );
    path_5.close();
    path_5.moveTo(size.width * 0.6094000, size.height * 0.1557667);
    path_5.lineTo(size.width * 0.6094333, size.height * 0.1557667);
    path_5.close();

    final Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xffffffff).withOpacity(1);
    canvas.drawPath(path_5, paint5Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
