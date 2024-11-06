class Word {
  String? word;
  int? difficulty;
  String? hint;
  String? category;

  Word({this.word, this.difficulty, this.hint, this.category});

  Word.fromJson(Map<String, dynamic> json) {
    word = json['word'];
    difficulty = json['difficulty'];
    hint = json['hint'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['word'] = this.word;
    data['difficulty'] = this.difficulty;
    data['hint'] = this.hint;
    data['category'] = this.category;
    return data;
  }
}
