import 'package:flutter/cupertino.dart';
import 'package:morphable_shape/morphable_shape.dart';


ShapeBorder beveledRectangle = RectangleShapeBorder(
  borderRadius: DynamicBorderRadius.only(
    topLeft: DynamicRadius.circular(38.toPXLength)
  )
);

ShapeBorder rightBeveledRectangle = RectangleShapeBorder(
    borderRadius: DynamicBorderRadius.only(
       bottomRight: DynamicRadius.circular(38.toPXLength)
    )
);