import 'package:car/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class curve extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(


        children: [

          Stack(
            alignment: Alignment.center,
            children: [

                Container(
                  child:Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/BMW_logo_%28gray%29.svg/2048px-BMW_logo_%28gray%29.svg.png",width: 50 ,),
                  margin: const EdgeInsets.only(top: 20.0),

                ),
                Opacity(

                  opacity: 0.5,
                  child: ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      alignment: Alignment.topRight,
                      color: Color(0xff3fbcef),
                      height: 25.0.h,
                      width: 100.0.w,
                    ),
                  ),
                )
              ],
            )

            ],
          )


    );

  }
}
class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(size.width / 2.2, 0);

    final firstControlPoint = Offset(size.width / 2 - 60, size.height - 120 );
    final firstEndPoint = Offset(size.width - (size.width / 2.8), (size.height-120));
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    //
    final secondControlPoint = Offset(size.width - (size.width / 8), size.height - 110);
    final secondEndPoint = Offset(size.width - 40, size.height-30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);


    final ThirdControlPoint = Offset(size.width-30 , size.height);
    final ThirdEndPoint = Offset(size.width, size.height );
    path.quadraticBezierTo(ThirdControlPoint.dx, ThirdControlPoint.dy,
        ThirdEndPoint.dx, ThirdEndPoint.dy);

    path.lineTo(size.width, size.height - 20);
    path.lineTo(size.width, 0);
    path.close();
    // path.lineTo(size.width / 2.5, 0);
    // var firstStart = Offset(size.width / 1.8, size.height - 50);
    // var firstEnd = Offset(size.width , size.height - 50.0);
    // path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    //
    //
    //
    // var secondStart = Offset(size.width , size.height - 105);
    // var secondEnd = Offset(size.width, size.height - 100.0);
    // path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    // path.lineTo(size.width, 0);
    //
    // var ThirdStart = Offset(size.width , 0);
    // var ThirdEnd = Offset(size.width, size.height / 2);
    // path.quadraticBezierTo(ThirdStart.dx, ThirdStart.dy, ThirdEnd.dx, ThirdEnd.dy);
    // path.lineTo(size.width / 2, 0);
    //
    // path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}
