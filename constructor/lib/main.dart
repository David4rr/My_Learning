import 'employee.dart';

void main(List<String> args) {
  var Data1 = new Employee.id("E41210603");
  var Data2 = new Employee.name("David Arrozaqi");
  var Data3 = new Employee.departement("Information & Technology");

  print(Data1.id);
  print(Data2.name);
  print(Data3.departement);
}
