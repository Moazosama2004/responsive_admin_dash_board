import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dash_board/utils/app_images.dart';

class AllExpensensItemHeader extends StatelessWidget {
  const AllExpensensItemHeader(
      {super.key, required this.image, this.isSelected = true});

  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: isSelected
              ? ShapeDecoration(
                  color: Colors.white.withOpacity(0.10000000149011612),
                  shape: OvalBorder(),
                )
              : ShapeDecoration(
                  color: Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                ),
          child: Center(
              child: isSelected
                  ? SvgPicture.asset(
                      image,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    )
                  : SvgPicture.asset(
                      image,
                    )),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: isSelected ? Colors.white : Color(0xFF064060),
          ),
        ),
      ],
    );
  }
}
