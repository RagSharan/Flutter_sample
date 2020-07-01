class UserData {
  String userName;
  String fullName;
  String description;
  String socialCredit;
  List<String> intrestList;
  List<String> upcomingEvents;
  List<String> pastEvents;

  set setUserName(String username) => this.userName = userName;
  set setFullName(String fullName) => this.fullName = fullName;
  set setDescription(String description) => this.description = description;
  set setSocialCredit(String socialCredit) => this.socialCredit = socialCredit;

  set setUpcomingEvents(List<String> upcomingEvents) =>
      this.upcomingEvents = upcomingEvents;
  set setPastEvents(List<String> pastEvents) => this.pastEvents = pastEvents;
  set setIntrestList(List<String> intrestList) =>
      this.intrestList = intrestList;

  String get getUserName => this.userName;
  String get getFullName => this.fullName;
  String get getDescription => this.description;
  String get getSocialCredit => this.socialCredit;

  List<String> get getUpcomingEvents => this.upcomingEvents;
  List<String> get getPastEvents => this.pastEvents;
  List<String> get getIntrestList => this.intrestList;
}
