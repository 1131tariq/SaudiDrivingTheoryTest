//
//  Exam.swift
//  SaudiDrivingTheoryTest
//
//  Created by Tareq Batayneh on 11/01/2026.
//

import Foundation

struct Exam: Identifiable {
    let id: Int
    let titleKey: String   // Localized string key like "exam_1"
    let filename: String   // e.g. "questions1"
}
