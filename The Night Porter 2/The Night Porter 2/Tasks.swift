//
//  Tasks.swift
//  The Night Porter 2
//
//  Created by Nancy on 21/10/2020.
//

import Foundation

enum TaskType {
    case daily,weakly,monthly
}
struct Task {
    var name : String
    var completed :Bool
    var type :TaskType
    var lastcompleted :NSDate?
}
