// Crea un database per uno ospedale
// Interazioni paziente medico: operazioni visite etc.

class Person{
  DateTime dateOfBirth;
  String name;
  Person({required this.dateOfBirth, required this.name});
}
class Doctor extends Person{
  num ID;
  Doctor({required super.dateOfBirth, required super.name}): ID = 0;
}
class Patient extends Person{
  num ID;
  Patient({required super.dateOfBirth, required super.name}): ID = 0;
}
class Interaction{
  Patient patient;
  Doctor doctor;
  DateTime date;
  Interaction({required this.patient, required this.doctor, required this.date});
}
class Visit extends Interaction{
  String diagnosis;
  Visit({required super.patient, required super.doctor, required super.date, required this.diagnosis});
}

class Hospitalization extends Interaction{
  String cause;
  bool goodRecovery;
  Hospitalization({required super.patient, required super.doctor, required super.date, required this.cause, required this.goodRecovery});
  Hospitalization.fatal({
    required super.patient,
    required super.doctor, 
    required super.date, 
    required this.cause
    }): goodRecovery = false;
}