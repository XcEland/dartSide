// Generative constructors: Creates new instances and initializes instance variables.
// Default constructors: Used to create a new instance when a constructor hasn't been specified. It doesn't take arguments and isn't named.
// Named constructors: Clarifies the purpose of a constructor or allows the creation of multiple constructors for the same class.
// Constant constructors: Creates instances as compile-type constants.
// Factory constructors: Either creates a new instance of a subtype or returns an existing instance from cache.
// Redirecting constructor: Forwards calls to another constructor in the same class.

//Generative constructors

class Point {
  double x = 2.0;
  double y = 2.0;
  // Generative constructor with initializing formal parameters:
  Point(this.x, this.y);
}

// Named constructors

const double xOrigin = 0;
const double yOrigin = 0;

class Points {
  final double x;
  final double y;

  Points(this.x, this.y);

  Points.origin()
      : x = xOrigin,
        y = yOrigin;
}

// Constant constructors

class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);
  final double x, y;
  const ImmutablePoint(this.x, this.y);
}
