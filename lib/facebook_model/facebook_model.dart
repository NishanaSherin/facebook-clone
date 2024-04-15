// ignore_for_file: public_member_api_docs, sort_constructors_first
class FacebookModel {
  String name;
  String idimg;
  String story;
  FacebookModel({
    required this.name,
    required this.idimg,
    required this.story,
  });

}

class PostModel {
  String? name;
  String? imgId;
  String? date;
  String? postimg;
  String? caption;
  String? likes;
  String? comments;
  PostModel({
    required this.name,
    required this.imgId,
    required this.date,
    required this.postimg,
    required this.caption,
    required this.likes,
    required this.comments,
  });
}
