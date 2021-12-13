class LessonDataModel{
  //data Type
  int? id;
  String? subject;
  

  LessonDataModel({
    this.id,
    this.subject
  });

  LessonDataModel.fromJson(Map<String,dynamic> json)
  {
    id = json['id'];
    subject = json['subject'];
  }
  
}