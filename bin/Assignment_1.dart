import 'dart:io';

// A. Define an abstract named Role

abstract class Role {
  void displayRole();
}

// B. Create a  class Person

class Person implements Role {
  late String name;
  late int age;
  late String address;

  @override
  void displayRole() {
    print("Role: Person");
  }

  Person(this.name, this.age, this.address);

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

}

// C. Create a class Student that extends Person

class Student extends Person{

  late String studentID;
  late String grade;
  late List<double> courseScores;


  Student(super.name, super.age, super.address, this.studentID, this.grade, this.courseScores);

  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore(){

    if (courseScores.isEmpty) return 0;

    double sum = 0;
    for(double score in courseScores){
      sum = sum + score;
    }
    double average = sum / courseScores.length;

    return average;

  }

}

// D. Create another class Teacher that extends Person

class Teacher extends Person{

  late String teacherID;
  late List<String> courseTaught;

  Teacher(super.name, super.age, super.address, this.teacherID, this.courseTaught);

  String get TeacherName => super.name;

  void displayRole() {
    print("Role: Teacher");
  }

  void displayCourseTaught(){

    print("Courses Taught:");

    for(String course in courseTaught){
      print("- $course");
    }

  }

}

// E. Create a class StudentManagementSystem

class StudentManagementSystem{
  display() {
    Student student = Student("John Doe", 20, "123 Main St", "s1507076", "A", [90, 85, 82]);

    Teacher teacher = Teacher("Mrs. Smith", 35, "456 Oak St", "t_s12", ["Math", "English", "Bangla"]);

    print("Student Information:");
    student.displayRole();
    print("Name: ${student.getName}");
    print("Age: ${student.getAge}");
    print("Address: ${student.getAddress}");
    print("Average Score: ${student.calculateAverageScore()}");

    print("\n\n");

    print("Teacher Information:");
    teacher.displayRole();
    print("Name: ${teacher.getName}");
    print("Age: ${teacher.getAge}");
    print("Address: ${teacher.getAddress}");
    teacher.displayCourseTaught();
  }
}


void main(){
  StudentManagementSystem sys = StudentManagementSystem();
  sys.display();
}
