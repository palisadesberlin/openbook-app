import 'package:Openbook/models/post.dart';
import 'package:Openbook/widgets/cirles_wrap.dart';
import 'package:Openbook/widgets/theming/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OBPostCircles extends StatelessWidget {
  final Post _post;

  OBPostCircles(this._post);

  @override
  Widget build(BuildContext context) {
    if (!_post.hasCircles()) return SizedBox();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: OBCirclesWrap(
          leading: const OBText(
            'You shared with',
            size: OBTextSize.small,
          ),
          circles: _post.getPostCircles()),
    );
  }
}
