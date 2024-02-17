class StoryModel{
int _id;
String _userName;
String _imageUserUrl;
String _dateTime;
bool _shown;
StoryModel(this._id,this._userName,this._imageUserUrl,this._dateTime,this._shown);

bool get shown => _shown;

  set shown(bool value) {
    _shown = value;
  }

  String get dateTime => _dateTime;

  set dateTime(String value) {
    _dateTime = value;
  }

  String get imageUserUrl => _imageUserUrl;

  set imageUserUrl(String value) {
    _imageUserUrl = value;
  }

  String get userName => _userName;

  set userName(String value) {
    _userName = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}