import 'package:json_annotation/json_annotation.dart';

part 'employee.g.dart';

@JsonSerializable()
class Employee{
  String name;
  int salary;

  Employee(this.name,this.salary);

  Employee.fromJson(Map<String,dynamic>json)
      : name = json['name'],
        salary = json['email'];

  Map<String,dynamic> toJson()=>{
    'name':name,
    'salary':salary,
  };

}