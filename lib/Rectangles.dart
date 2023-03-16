// how to use optional named params
class Point{
  final int x, y;
  const Point(this.x, this.y);
  @override
  String toString() => "x: $x, y: $y";
}
class Rectangles{
  int width;
  int height;
  Point origin;
  Rectangles({this.origin = const Point(0, 0), this.width = 0, this.height = 0});
  // with curly braces, we define named parameters that don't need a particular order while calling
  @override
  String toString() => "Rectangle with org: $origin, h: $height, w: $width";

}
void main(){
  // using optional named params, we can only use the params that we want
  // with this, we don't need constructor overloading
  print(Rectangles());
  print(Rectangles(width: 200));
  print(Rectangles(origin: const Point(10, 10)));
  print(Rectangles(origin: const Point(10, 20), height: 100, width: 50));
}