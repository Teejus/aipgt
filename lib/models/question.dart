// To parse this JSON data, do
//
//     final question = questionFromMap(jsonString);


import 'dart:convert';

Question questionFromMap(String str) => Question.fromMap(json.decode(str));

String questionToMap(Question data) => json.encode(data.toMap());

class Question {
    Question({
        required this.sNo,
        required this.question,
        required this.optionA,
        required this.optionB,
        required this.optionC,
        required this.optionD,
    });

    final String sNo;
    final String question;
    final String optionA;
    final String optionB;
    final String optionC;
    final String optionD;

    factory Question.fromMap(Map<String, dynamic> json) => Question(
        sNo: json["sNo"],
        question: json["Question"],
        optionA: json["OptionA"],
        optionB: json["OptionB"],
        optionC: json["OptionC"],
        optionD: json["OptionD"],
    );

    Map<String, dynamic> toMap() => {
        "sNo": sNo,
        "Question": question,
        "OptionA": optionA,
        "OptionB": optionB,
        "OptionC": optionC,
        "OptionD": optionD,
    };
}
