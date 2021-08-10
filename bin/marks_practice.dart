void main(List<String> arguments) {
  //
  //? i used var to test the blue line error
  //! why blue and why var to fix it?
  StudentsMarks std1 = StudentsMarks(name: 'Mohammad', marks: 49);
  var std2 = StudentsMarks(name: 'Snow', marks: 55);
  var std3 = StudentsMarks(name: 'Sara', marks: 78);
  var std4 = StudentsMarks(name: 'Noor', marks: 98);
  var std5 = StudentsMarks(name: 'Khaled', marks: 200);

  print(std1.grades());
  print('-------------------');
  print(std2.grades());
  print('-------------------');
  print(std3.grades());
  print('-------------------');
  print(std4.grades());
  print('-------------------');
  print(std5.grades());
  print('-------------------');
}

class StudentsMarks {
  String? name;
  double? marks;

  StudentsMarks({required this.name, required this.marks});

  //! why we can't use marks in if instead of grd(it says error and can be null)
  String grades() {
    double grd;
    grd = marks!;
    if (grd < 50) {
      return 'Student: $name got: $marks, You FAILED the course';
    }
    //
    else if (grd >= 50 && grd <= 64) {
      return 'Student: $name got: $marks, You PASSED the course';
    }
    //
    else if (grd >= 65 && grd <= 84) {
      return 'Student: $name got: $marks, You did GREAT job';
    }
    //
    else if (grd >= 85 && grd <= 100) {
      return 'Student: $name got: $marks, You are one of the top 3 students';
    }
    //
    else {
      return '$name You Put Wrong Marks $marks wich is not between 0 - 100';
    }
  }
}
