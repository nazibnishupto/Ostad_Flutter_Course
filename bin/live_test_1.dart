import 'dart:io';
// Solution of live test

void main() {
  triangle();
}

triangle(){

  print("Enter the base of triangle: ");
  double ? base = double.tryParse(stdin.readLineSync()!);

  if (base == null || base <= 0) {
    print('Invalid input for base. Please enter a valid number.');
    return;
  }

  print("Enter the height of triangle: ");
  double ? height = double.tryParse(stdin.readLineSync()!);

  if (height == null || height <= 0) {
    print('Invalid input for height. Please enter a valid number.');
    return;
  }

  double area = 0.5 * base * height;
  
  print("Area of the triangle: $area");


}