
import 'package:flutter/material.dart';

class Question {
  final String title;
  final List<Map> answer;

  Question({
    @required this.title,
    @required this.answer,
  });

}

class QuestionData {
  final _data = [
    Question(title: 'Какой чин имел Лукаш, у которого бравый солдат Швейк был денщиком?',
        answer: [
          {'answer' : 'Подпоручик',},
          {'answer' : 'Поручик', 'isCorrect' : 1},
          {'answer' : 'Капитан',},
          {'answer' : 'Фельдкурат',},
        ]
    ),
    Question(title: 'Какая из этих команд собаке, означает "смирно"?',
        answer: [
          {'answer' : 'Куш!',},
          {'answer' : 'Апорт!',},
          {'answer' : 'Фас!',},
          {'answer' : 'Тубо!', 'isCorrect' : 1},
        ]
    ),
    Question(title: 'На чём рисуют специалисты по латте-арт?',
        answer: [
          {'answer' : 'На кофейной пенке', 'isCorrect' : 1},
          {'answer' : 'На кофейной этикетке',},
          {'answer' : 'На кофейной чашке',},
          {'answer' : 'На кофейном дереве',},
        ]
    ),
    Question(title: 'Кому в пожизненное пользование была предоставлена скрипка работы Антонио Страдивари?',
        answer: [
          {'answer' : 'Е. Мравинскому',},
          {'answer' : 'М. Ростроповичу',},
          {'answer' : 'В. Спивакову', 'isCorrect' : 1},
          {'answer' : 'И. Брилю',},
        ]
    ),
    Question(title: 'Что несколько лет назад обнаружил в Мёртвом море израильский учёный Соломон Вассер?',
        answer: [
          {'answer' : 'кораллы',},
          {'answer' : 'грибы', 'isCorrect' : 1},
          {'answer' : 'жемчуг',},
          {'answer' : 'осколок метеорита',},
        ]
    ),
    Question(title: '"Заморская провинция" какой страны до самого последнего времени существовала на территории Китая?',
        answer: [
          {'answer' : 'Испания',},
          {'answer' : 'Нидерланды',},
          {'answer' : 'Франция',},
          {'answer' : 'Португалия', 'isCorrect' : 1},
        ]
    ),
    Question(title: 'Героя романа какого из этих писателей звали Ловеласом?',
        answer: [
          {'answer' : 'Т. Готье',},
          {'answer' : 'А. де Мюссе',},
          {'answer' : 'С. Ричардсон', 'isCorrect' : 1},
          {'answer' : 'Ж. Санд',},
        ]
    ),
    Question(title: 'Какой стране принадлежат Шантарские острова?',
        answer: [
          {'answer' : 'Россия', 'isCorrect' : 1},
          {'answer' : 'Въетнам',},
          {'answer' : 'Индонезия',},
          {'answer' : 'Филиппины',},
        ]
    ),
  ];
  List<Question> get questions => [..._data];
}