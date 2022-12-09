import 'package:azafilters/constant.dart';
import 'package:azafilters/helperWidgets/appbar_widget.dart';
import 'package:azafilters/provider/refine_provider.dart';
import 'package:azafilters/refine/widgets/refine_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RefinePriceRange extends StatelessWidget {
  final String title;

  const RefinePriceRange({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    CircleThumbShape circleThumbShape =
        const CircleThumbShape(thumbRadius: 9.0);
    return Scaffold(
      backgroundColor: greyScale100,
      appBar: refineAppbarWidget(title: title, icon: false),
      body: Consumer<RefineProvider>(
        builder: (context, value, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                        child: refineSearchBar(
                            hint: "₹${value.priceRangeValue.start.toInt()}",
                            sufixIcon: false)),
                    Container(
                      alignment: Alignment.center,
                      width: 30,
                      child: const Text("-"),
                    ),
                    Expanded(
                        child: refineSearchBar(
                            hint: "₹${value.priceRangeValue.end.toInt()}",
                            sufixIcon: false)),
                  ],
                ),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    activeTrackColor: const Color(0xFFF58E70),
                    inactiveTrackColor: greyScale90,
                    trackShape: const RectangularSliderTrackShape(),
                    trackHeight: 4,
                    thumbColor: azaMain,
                    activeTickMarkColor: azaMain,
                    tickMarkShape: const RoundSliderTickMarkShape(),
                    rangeThumbShape: circleThumbShape),
                child: RangeSlider(
                  inactiveColor: greyScale90,
                  values: value.priceRangeValue,
                  min: 0,
                  max: 10000,
                  onChanged: (newValue) {
                    value.setPriceRangeValue = newValue;
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class CircleThumbShape extends RangeSliderThumbShape {
  final double thumbRadius;

  const CircleThumbShape({
    this.thumbRadius = 6.0,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius + 2);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {Animation<double>? activationAnimation,
      Animation<double>? enableAnimation,
      bool? isDiscrete,
      bool? isEnabled,
      bool? isOnTop,
      TextDirection? textDirection,
      required SliderThemeData sliderTheme,
      Thumb? thumb,
      bool? isPressed}) {
    final Canvas canvas = context.canvas;
    var path = Path();
    final fillPaint = Paint()
      ..color = azaMain
      ..style = PaintingStyle.fill;
    final borderPaint = Paint()
      ..color = greyScale96
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    final shadowPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    path.addOval(Rect.fromCircle(center: center, radius: thumbRadius));
    canvas.drawShadow(path, const Color(0xff000000), 3, true);
    canvas.drawPath(path, shadowPaint);
    canvas.drawCircle(center, thumbRadius, fillPaint);
    canvas.drawCircle(center, thumbRadius, borderPaint);
    canvas.drawShadow(
        Path().shift(const Offset(0, 4)), Colors.black, 1.0, false);
    canvas.drawShadow(Path().shift(const Offset(0, 4)),
        Colors.grey.withAlpha(50), 14.0, false);
  }
}
