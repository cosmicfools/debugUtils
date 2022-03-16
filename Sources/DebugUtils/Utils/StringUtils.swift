//
//  StringUtils.swift
//
//
//  Created by Francisco Javier Trujillo Mata on 16/03/2022.
//

import Foundation

extension String {
    private enum SpecialCharacter: String {
        case empty = ""
        case equal = "="
        case space = " "
        case breakLine = "\n"
        case slash = "/"
        case dash = "-"
        case underscore = "_"
        case dot = "."
        case pipe = "|"
        case plus = "+"
        case bullet = "•"
        case colon = ":"
        case comma = ","
        case asterisk = "*"
    }
    
    private enum Extension: String {
        case json
        case mp4
        case png
    }
    
    static let json = Extension.json.rawValue
    static let mp4 = Extension.mp4.rawValue
    static let png = Extension.png.rawValue
    
    static let empty = SpecialCharacter.empty.rawValue
    static let equal = SpecialCharacter.equal.rawValue
    static let space = SpecialCharacter.space.rawValue
    static let breakLine = SpecialCharacter.breakLine.rawValue
    static let slash = SpecialCharacter.slash.rawValue
    static let dash = SpecialCharacter.dash.rawValue
    static let underscore = SpecialCharacter.underscore.rawValue
    static let dot = SpecialCharacter.dot.rawValue
    static let pipe = SpecialCharacter.pipe.rawValue
    static let plus = SpecialCharacter.plus.rawValue
    static let bullet = SpecialCharacter.bullet.rawValue
    static let colon = SpecialCharacter.colon.rawValue
    static let comma = SpecialCharacter.comma.rawValue
    static let asterisk = SpecialCharacter.asterisk.rawValue

    var isNotEmpty: Bool {
        !isEmpty
    }
    
    var nilIfEmpty: String? {
        self != .empty ? self : nil
    }
    
    func slashPath() -> String {
        String.slash + self
    }
    
    func removeCharacters(from forbiddenChars: CharacterSet) -> String {
        let passed = self.unicodeScalars.filter { !forbiddenChars.contains($0) }
        return String(String.UnicodeScalarView(passed))
    }
}
