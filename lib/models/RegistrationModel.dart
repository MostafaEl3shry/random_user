class RegistrationModel{
Map<String,dynamic>? Reg;
RegistrationModel({required this.Reg});

factory RegistrationModel.fromjson(Map<String,dynamic> json){
return RegistrationModel(Reg: json["data"]);
}
}