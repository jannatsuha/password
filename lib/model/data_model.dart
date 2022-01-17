class DataModel{
  String? id;
  String? password;

  DataModel({this.id, this.password});

  //get data
  factory DataModel.fromMap(map){
    return DataModel(
      id: map['id'] ,
      password: map['password'] ,

    );
  }
  //post get
  Map<String,dynamic> toMap(){
    return {
      'id':id,
      'password':password,
    };
  }
}