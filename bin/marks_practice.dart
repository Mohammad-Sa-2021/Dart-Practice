void main(List<String> arguments) {
  StudentsMarks std1 = StudentsMarks(name: 'Mohammad', marks: 49);
  StudentsMarks std2 = StudentsMarks(name: 'Snow', marks: 55);
  StudentsMarks std3 = StudentsMarks(name: 'Sara', marks: 78);
  StudentsMarks std4 = StudentsMarks(name: 'Noor', marks: 98);
  StudentsMarks std5 = StudentsMarks(name: 'Khaled', marks: 200);

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
  int? id;
  double? marks;

  StudentsMarks({
    required this.name,
    required this.marks,
  });

  //! ask Abo yousif about (return and print command if we put String or without)
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
