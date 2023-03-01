import 'package:flutter_task_2/user.dart';

//�� ����� ���� ������� �'�������� ������� �� �� ���� ������ ����� �� User ��� PassYear, ���� �������� ������������

//bohdan.addGoal �� ���� ���� ����� ����� ���� ��������� ��'���� �������� ������� Functions must have an explicit list of parameters
//User bohdan = User.factoryUser("name", "fatherName", "surname", 1);
//bohdan.addGoal("goal");


void main() {
  User bohdan = User.factoryUser("Bohdan", "Volodymyr", "Koltok", 18);
  bohdan.addRelatives(User.factoryUser('Volodymyr', 'Volodymyr', 'Koltok', 40), 'Father');
  bohdan.addRelatives(User.factoryUser('Vitaliy', 'Volodymyr', 'Koltok', 16), 'Brother');
  bohdan.addGoal('Get a job');
  bohdan.addGoal('Travel abroad');
  bohdan.addPetName('Haska');
  bohdan.addPetName('Markiza');

  print(bohdan);
  print('\n');

  Function pass10 = bohdan.passYears(10);
  bohdan.setCurrentAge(pass10.call());
  print(bohdan);
}
