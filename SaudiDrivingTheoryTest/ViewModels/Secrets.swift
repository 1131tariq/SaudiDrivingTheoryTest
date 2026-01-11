//
//  Secrets.swift
//  SaudiDrivingTheoryTest
//
//  Created by Tareq Batayneh on 11/01/2026.
//

import Foundation

struct Secrets {
    static func value(for key: String) -> String {
        guard
            let path = Bundle.main.path(forResource: "Secrets", ofType: "plist"),
            let dict = NSDictionary(contentsOfFile: path),
            let value = dict[key] as? String
        else {
            fatalError("Missing key: \(key) in Secrets.plist")
        }
        return value
    }
    
    static var adMobAppID: String { value(for: "AdMobAppID") }
    static var bannerUnitID: String { value(for: "BannerUnitID") }
    static var interstitialUnitID: String { value(for: "InterstitialUnitID") }
}
