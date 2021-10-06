//
//  SetterModel.swift
//  DFC
//
//  Created by Marko Jovanov on 30.8.21.
//

import Foundation

struct SetterModel {
    var setter = "Routine"
    var titleLabel = String()
    var titleCell = [String]()
    var subtitleCell = [String]()
    var progressUpdate = Float()
    mutating func set() {
        switch setter {
        case "Routine":
            titleLabel = "Која е твојата цел?"
            titleCell = ["Загуба на килограми",
                         "Одржување на форма",
                         "Развивање на мускулатура",
                         "Тренирај како атлета"]
            subtitleCell = ["Фокус на кардио вежби и тренинг со голем интензитет",
                            "Фокус на склоп од повеќе кардио вежби и вежби за сила",
                            "Фокус на добивање на мускулна маса преку зголемен број повторувања",
                            "Фокус на добивање максимум од себе"]
            progressUpdate = 0.2
            
        case "Gender":
            titleLabel = "Кој е твојот пол"
            titleCell = ["Машки",
                         "Женски"]
            subtitleCell = ["",""]
            progressUpdate = 0.4
            
        case "Frequency":
            titleLabel = "Одбери колку пати неделно сакаш да тренираш"
            titleCell = ["Колку што е можно повеќе",
                         "Имам доста слободно време",
                         "Минимум, доста сум зафатен"]
            subtitleCell = ["4/неделно",
                            "3/неделно",
                            "2/неделно"]
            progressUpdate = 0.6
        case "Characteristics":
            titleLabel = "Одбери ги твоите карактеристики"
            titleCell = ["Која е твојата висина?",
                         "Која е твојата моментална тежина?",
                         "Која е твојата посакувана тежина?"]
            subtitleCell = ["180 cm",
                            "100 kg",
                            "90kg"]
            progressUpdate = 0.8
        default:
            titleLabel = "Се случила грешка ве молиме обидете се повторно"
        }
    }
}

