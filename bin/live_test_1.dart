import 'dart:io';
// Solution of live test

void main() {
  triangle();
}

triangle(){

  print("Enter the base of triangle: ");
  double ? base = double.tryParse(stdin.readLineSync()!);

  print("Enter the height of triangle: ");
  double ? height = double.tryParse(stdin.readLineSync()!);


  double area = 0.5 * base! * height!;
  
  print("Area of the triangle: $area");

}