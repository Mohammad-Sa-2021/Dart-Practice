void main(List<String> args) {
  //

  List info = [
    {
      'name': 'Mohammad',
      'age': 20,
      'phone': 123456,
    },
    {
      'name': 'Khaled',
      'age': 25,
      'phone': 987654,
      'children': ['ch1', 'ch2', 'ch3'],
    },
    {
      'name': 'Noor',
      'age': 30,
      'phone': 6532145,
      'children': ['ch1', 'ch2', 'ch3'],
    },
  ];

  // for (var i = 0; i < info.length; i++) {
  //   print(info[i]['children']);
  // }

  for (var i = 0; i < info.length; i++) {
    print(info[i]['name'] + ', the children are:');
    for (var j = 0; j < info[i]['children'].length; j++) {
      print(info[i]['children'][j]);
    }
    print('-----------------------');
  }
}
