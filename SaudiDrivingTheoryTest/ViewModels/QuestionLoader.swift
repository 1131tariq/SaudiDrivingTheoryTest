//
//  QuestionLoader.swift
//  SaudiDrivingTheoryTest
//
//  Created by Tareq Batayneh on 11/01/2026.
//

import Foundation


class QuestionLoader {
    func loadQuestions(from filename: String) -> [Question] {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let qs = try? JSONDecoder().decode([Question].self, from: data)
        else { return [] }
        return qs
    }
}
