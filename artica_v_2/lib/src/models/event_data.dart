class EventData {
  String eventId;
  String eventTitle;
  String eventType;
  String eventTiming;
  String feedback;
  String mentorId;
  num duration;
  List<String> participantsList;

  get getEventId => this.eventId;
  get getEventTitle => this.eventTitle;
  get getEventType => this.eventType;
  get getEventTiming => this.eventTiming;
  get getMentorId => this.mentorId;
  get getFeedback => this.feedback;
  get getDuration => this.duration;
  get getparticipantsList => this.participantsList;

  set setEventId(String eventId) => this.eventId = eventId;
  set setEventTitle(String eventTitle) => this.eventTitle = eventTitle;
  set setEventType(String eventType) => this.eventType = eventType;
  set setEventTiming(String eventTiming) => this.eventTiming = eventTiming;
  set setMentorId(String mentorId) => this.mentorId = mentorId;
  set setFeedback(String feedback) => this.feedback = feedback;
  set setDuration(num duration) => this.duration = duration;
  set setparticipantsList(List<String> participantsList) =>
      this.participantsList = participantsList;
}
