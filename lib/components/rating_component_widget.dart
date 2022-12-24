import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RatingComponentWidget extends StatefulWidget {
  const RatingComponentWidget({Key? key}) : super(key: key);

  @override
  _RatingComponentWidgetState createState() => _RatingComponentWidgetState();
}

class _RatingComponentWidgetState extends State<RatingComponentWidget> {
  double? ratingBarValue;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return RatingBar.builder(
      onRatingUpdate: (newValue) => setState(() => ratingBarValue = newValue),
      itemBuilder: (context, index) => Icon(
        Icons.star_rounded,
        color: Color(0xFFE5B33D),
      ),
      direction: Axis.horizontal,
      initialRating: ratingBarValue ??= 4.5,
      unratedColor: Color(0xFF9E9E9E),
      itemCount: 5,
      itemSize: 14,
      glowColor: Color(0xFFE5B33D),
    );
  }
}
