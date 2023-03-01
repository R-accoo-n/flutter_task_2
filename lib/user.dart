
import 'package:flutter_task_2/pass_year.dart';

class User with PassYear{
  //���� ���� � ���������� ����� String fatherName ??= 'fatherName'; ���� ������� Methods must have an explicit list of parameters.
  String? fatherName;
  String name;
  String? surname;
  String? _defaultSurname = 'surname';
  int? _defaultAge = 0;
  Map<User, String> relatives = {};
  Set<String> goals = <String>{};
  List<String> petNames = [];

  void addRelatives(User relative, String type){
    relatives[relative] = type;
  }

  void addGoal(String goal){
    goals.add(goal);
  }

  void addPetName(String name){
    petNames.add(name);
  }

//���� ���� ������ ����� ����������� � ����� ��� ������������ ��������, ��� �� ����� ����������� � ����������� �����������?
  //User(this.name, this.fatherName, this.surname, this.currentAge): assert(fatherName != null), assert(surname != null); ���� ������� �� ������ ���� ����
  User({required this.name, this.fatherName, this.surname}): assert(fatherName != null), assert(surname != null);

  //���� �� ������ ���������� name � ������ ����������� �� ������ ������� Non-nullable instance field 'name' must be initialized.
  User.defaultConst(): name = ''{
    fatherName ??= 'fatherName';
    name = 'name';
    surname = _defaultSurname ?? 'anotherSurname';
    currentAge = _defaultAge ?? 0;
  }

  factory User.factoryUser(String name, String? fatherName, String? surname, int age){
    User user = User(fatherName : fatherName, surname : surname, name: name);
    user.setCurrentAge(age);

    return fatherName != null && surname != null ? user : User.defaultConst();
  }

  set defaultSurname(String value) {
    _defaultSurname = value;
  }

  set defaultAge(int value) {
    _defaultAge = value;
  }

  void setCurrentAge(int value){
    currentAge = value;
  }

  String? getDefaultSurname() => _defaultSurname;

  int? getDefaultAge() => _defaultAge;

  @override
  String toString() => "Name = $name Surname = $surname Father name = $fatherName Age = $currentAge \nGoals = $goals \nPets = $petNames\nRelatives = {$relatives} ";
}