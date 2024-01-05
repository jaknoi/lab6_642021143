class Hobby {
  String name;
  bool value;

  Hobby({required this.name, required this.value});

  static List<Hobby> getHobby() {
    return [
      Hobby(name: "เล่นเกม", value: false),
      Hobby(name: "ดูหนัง", value: false),
      Hobby(name: "ดู Youtube", value: false),
      Hobby(name: "ฟัง Apple Music", value: false),
    ];
  }
}
