// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return Employee(json['name'] as String, json['salary'] as int);
}

Map<String, dynamic> _$EmployeeToJson(Employee instance) =>
    <String, dynamic>{'name': instance.name, 'salary': instance.salary};
